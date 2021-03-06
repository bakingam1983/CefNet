﻿// --------------------------------------------------------------------------------------------
// Copyright (c) 2019 The CefNet Authors. All rights reserved.
// Licensed under the MIT license.
// See the licence file in the project root for full license information.
// --------------------------------------------------------------------------------------------
// Generated by CefGen
// Source: Generated/Native/Types/cef_register_cdm_callback_t.cs
// --------------------------------------------------------------------------------------------﻿
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
// --------------------------------------------------------------------------------------------

#pragma warning disable 0169, 1591, 1573

using System;
using System.Runtime.InteropServices;
using System.Runtime.CompilerServices;
using CefNet.WinApi;
using CefNet.CApi;
using CefNet.Internal;

namespace CefNet
{
	/// <summary>
	/// Implement this structure to receive notification when CDM registration is
	/// complete. The functions of this structure will be called on the browser
	/// process UI thread.
	/// </summary>
	/// <remarks>
	/// Role: Handler
	/// </remarks>
	public unsafe partial class CefRegisterCDMCallback : CefBaseRefCounted<cef_register_cdm_callback_t>, ICefRegisterCDMCallbackPrivate
	{
		private static readonly OnCDMRegistrationCompleteDelegate fnOnCDMRegistrationComplete = OnCDMRegistrationCompleteImpl;

		internal static unsafe CefRegisterCDMCallback Create(IntPtr instance)
		{
			return new CefRegisterCDMCallback((cef_register_cdm_callback_t*)instance);
		}

		public CefRegisterCDMCallback()
		{
			cef_register_cdm_callback_t* self = this.NativeInstance;
			self->on_cdm_registration_complete = (void*)Marshal.GetFunctionPointerForDelegate(fnOnCDMRegistrationComplete);
		}

		public CefRegisterCDMCallback(cef_register_cdm_callback_t* instance)
			: base((cef_base_ref_counted_t*)instance)
		{
		}

		[MethodImpl(MethodImplOptions.ForwardRef)]
		extern bool ICefRegisterCDMCallbackPrivate.AvoidOnCDMRegistrationComplete();

		/// <summary>
		/// Method that will be called when CDM registration is complete. |result| will
		/// be CEF_CDM_REGISTRATION_ERROR_NONE if registration completed successfully.
		/// Otherwise, |result| and |error_message| will contain additional information
		/// about why registration failed.
		/// </summary>
		public unsafe virtual void OnCDMRegistrationComplete(CefCDMRegistrationError result, string errorMessage)
		{
		}

		[UnmanagedFunctionPointer(CallingConvention.Winapi)]
		private unsafe delegate void OnCDMRegistrationCompleteDelegate(cef_register_cdm_callback_t* self, CefCDMRegistrationError result, cef_string_t* error_message);

		// void (*)(_cef_register_cdm_callback_t* self, cef_cdm_registration_error_t result, const cef_string_t* error_message)*
		private static unsafe void OnCDMRegistrationCompleteImpl(cef_register_cdm_callback_t* self, CefCDMRegistrationError result, cef_string_t* error_message)
		{
			var instance = GetInstance((IntPtr)self) as CefRegisterCDMCallback;
			if (instance == null || ((ICefRegisterCDMCallbackPrivate)instance).AvoidOnCDMRegistrationComplete())
			{
				return;
			}
			instance.OnCDMRegistrationComplete(result, CefString.Read(error_message));
		}
	}
}
