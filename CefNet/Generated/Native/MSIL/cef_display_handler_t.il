﻿// --------------------------------------------------------------------------------------------
// Copyright (c) 2019 The CefNet Authors. All rights reserved.
// Licensed under the MIT license.
// See the licence file in the project root for full license information.
// --------------------------------------------------------------------------------------------
// Generated by CefGen
// Source: include/capi/cef_display_handler_capi.h
// --------------------------------------------------------------------------------------------﻿
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
// --------------------------------------------------------------------------------------------


.namespace CefNet.CApi
{
	.class public cef_display_handler_t
	{
		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, _cef_frame_t* frame, const cef_string_t* url)*
		.method public hidebysig void OnAddressChange(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_frame_t* frame, valuetype CefNet.CApi.cef_string_t* url)
		{
			.maxstack 5
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.3
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_address_change
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_frame_t*, valuetype CefNet.CApi.cef_string_t*)
			ret
		}

		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, const cef_string_t* title)*
		.method public hidebysig void OnTitleChange(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_string_t* title)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_title_change
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_string_t*)
			ret
		}

		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, cef_string_list_t icon_urls)*
		.method public hidebysig void OnFaviconUrlChange(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_string_list_t icon_urls)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_favicon_urlchange
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_string_list_t)
			ret
		}

		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, int fullscreen)*
		.method public hidebysig void OnFullscreenModeChange(valuetype CefNet.CApi.cef_browser_t* browser, int32 fullscreen)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_fullscreen_mode_change
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, int32)
			ret
		}

		// int (*)(_cef_display_handler_t* self, _cef_browser_t* browser, cef_string_t* text)*
		.method public hidebysig int32 OnTooltip(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_string_t* text)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_tooltip
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				int32(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_string_t*)
			ret
		}

		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, const cef_string_t* value)*
		.method public hidebysig void OnStatusMessage(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_string_t* 'value')
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_status_message
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_string_t*)
			ret
		}

		// int (*)(_cef_display_handler_t* self, _cef_browser_t* browser, cef_log_severity_t level, const cef_string_t* message, const cef_string_t* source, int line)*
		.method public hidebysig int32 OnConsoleMessage(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CefLogSeverity level, valuetype CefNet.CApi.cef_string_t* message, valuetype CefNet.CApi.cef_string_t* source, int32 line)
		{
			.maxstack 7
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.3
			ldarg.s 4
			ldarg.s 5
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_console_message
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				int32(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CefLogSeverity, valuetype CefNet.CApi.cef_string_t*, valuetype CefNet.CApi.cef_string_t*, int32)
			ret
		}

		// int (*)(_cef_display_handler_t* self, _cef_browser_t* browser, const cef_size_t* new_size)*
		.method public hidebysig int32 OnAutoResize(valuetype CefNet.CApi.cef_browser_t* browser, valuetype CefNet.CApi.cef_size_t* new_size)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_auto_resize
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				int32(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, valuetype CefNet.CApi.cef_size_t*)
			ret
		}

		// void (*)(_cef_display_handler_t* self, _cef_browser_t* browser, double progress)*
		.method public hidebysig void OnLoadingProgressChange(valuetype CefNet.CApi.cef_browser_t* browser, float64 progress)
		{
			.maxstack 4
			ldarg.0
			ldarg.1
			ldarg.2
			ldarg.0
			ldfld void* CefNet.CApi.cef_display_handler_t::on_loading_progress_change
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_display_handler_t*, valuetype CefNet.CApi.cef_browser_t*, float64)
			ret
		}
	}
}

