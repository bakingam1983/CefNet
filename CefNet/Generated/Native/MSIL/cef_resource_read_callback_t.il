﻿// --------------------------------------------------------------------------------------------
// Copyright (c) 2019 The CefNet Authors. All rights reserved.
// Licensed under the MIT license.
// See the licence file in the project root for full license information.
// --------------------------------------------------------------------------------------------
// Generated by CefGen
// Source: include/capi/cef_resource_handler_capi.h
// --------------------------------------------------------------------------------------------﻿
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
// --------------------------------------------------------------------------------------------


.namespace CefNet.CApi
{
	.class public cef_resource_read_callback_t
	{
		// void (*)(_cef_resource_read_callback_t* self, int bytes_read)*
		.method public hidebysig void Continue(int32 bytes_read)
		{
			.maxstack 3
			ldarg.0
			ldarg.1
			ldarg.0
			ldfld void* CefNet.CApi.cef_resource_read_callback_t::cont
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_resource_read_callback_t*, int32)
			ret
		}
	}
}

