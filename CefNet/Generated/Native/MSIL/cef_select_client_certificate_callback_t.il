﻿// --------------------------------------------------------------------------------------------
// Copyright (c) 2019 The CefNet Authors. All rights reserved.
// Licensed under the MIT license.
// See the licence file in the project root for full license information.
// --------------------------------------------------------------------------------------------
// Generated by CefGen
// Source: include/capi/cef_request_handler_capi.h
// --------------------------------------------------------------------------------------------﻿
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
// --------------------------------------------------------------------------------------------


.namespace CefNet.CApi
{
	.class public cef_select_client_certificate_callback_t
	{
		// void (*)(_cef_select_client_certificate_callback_t* self, _cef_x509certificate_t* cert)*
		.method public hidebysig void Select(valuetype CefNet.CApi.cef_x509certificate_t* cert)
		{
			.maxstack 3
			ldarg.0
			ldarg.1
			ldarg.0
			ldfld void* CefNet.CApi.cef_select_client_certificate_callback_t::select
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_select_client_certificate_callback_t*, valuetype CefNet.CApi.cef_x509certificate_t*)
			ret
		}
	}
}

