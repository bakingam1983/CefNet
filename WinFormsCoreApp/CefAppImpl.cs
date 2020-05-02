using CefNet;
using System;
using System.Runtime.InteropServices;

namespace WinFormsCoreApp
{
	class CefAppImpl : CefNetApplication
	{
		public override void OnBeforeCommandLineProcessing(string processType, CefCommandLine commandLine)
		{
			base.OnBeforeCommandLineProcessing(processType, commandLine);

			Console.WriteLine("ChromiumWebBrowser_OnBeforeCommandLineProcessing");
			Console.WriteLine(commandLine.CommandLineString);

			//commandLine.AppendSwitchWithValue("proxy-server", "127.0.0.1:8888");


			commandLine.AppendSwitchWithValue("remote-debugging-port", "9222");
			commandLine.AppendSwitch("off-screen-rendering-enabled");
			commandLine.AppendSwitchWithValue("off-screen-frame-rate", "30");
			
			//enable-devtools-experiments
			commandLine.AppendSwitch("enable-devtools-experiments");

			//e.CommandLine.AppendSwitchWithValue("user-agent", "Mozilla/5.0 (Windows 10.0) WebKa/" + DateTime.UtcNow.Ticks);

			//("force-device-scale-factor", "1");

			//commandLine.AppendSwitch("disable-gpu");
			//commandLine.AppendSwitch("disable-gpu-compositing");
			//commandLine.AppendSwitch("disable-gpu-vsync");

			commandLine.AppendSwitch("enable-begin-frame-scheduling");
			commandLine.AppendSwitch("enable-media-stream");

			commandLine.AppendSwitch("enable-widevine-cdm");
			CefRegisterCDMCallback back = new CefRegisterCDMCallback();

			if (!(System.IO.Directory.Exists(System.IO.Path.Combine(Environment.CurrentDirectory, "ChromeCache"))))
			{
				System.IO.Directory.CreateDirectory(System.IO.Path.Combine(Environment.CurrentDirectory, "ChromeCache"));
			}
			
			commandLine.AppendSwitchWithValue("cache-path", System.IO.Path.Combine(Environment.CurrentDirectory, "ChromeCache", "1"));

			if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
			{									
				commandLine.AppendSwitchWithValue("widevine-cdm-path", System.IO.Path.Combine(Environment.CurrentDirectory, "cef", "widevine_win_x64"));
				commandLine.AppendSwitchWithValue("widevine-cdm-version", "4.10.1610.0");
				CefApi.RegisterWidevineCDM(System.IO.Path.Combine(Environment.CurrentDirectory, "cef", "widevine_win_x64"), back);
			}
			else if (RuntimeInformation.IsOSPlatform(OSPlatform.Linux))
			{
				commandLine.AppendSwitchWithValue("widevine-cdm-path", System.IO.Path.Combine(Environment.CurrentDirectory, "cef", "widevine_linux_arm"));
				commandLine.AppendSwitchWithValue("widevine-cdm-version", "4.10.1610.6");
				CefApi.RegisterWidevineCDM(System.IO.Path.Combine(Environment.CurrentDirectory, "cef", "widevine_linux_arm"), back);
			}

			
			

			if (RuntimeInformation.IsOSPlatform(OSPlatform.Linux))
			{
				commandLine.AppendSwitch("--no-zygote");
				commandLine.AppendSwitch("--no-sandbox");
			}
		}

		protected override void OnContextCreated(CefBrowser browser, CefFrame frame, CefV8Context context)
		{
			base.OnContextCreated(browser, frame, context);
			frame.ExecuteJavaScript(@"
{
const newProto = navigator.__proto__;
delete newProto.webdriver;
navigator.__proto__ = newProto;
}", frame.Url, 0);

		}

		public Action<long> ScheduleMessagePumpWorkCallback { get; set; }

		protected override void OnScheduleMessagePumpWork(long delayMs)
		{
			ScheduleMessagePumpWorkCallback(delayMs);
		}
	}
}
