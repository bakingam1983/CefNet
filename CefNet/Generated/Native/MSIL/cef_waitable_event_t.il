﻿// --------------------------------------------------------------------------------------------
// Copyright (c) 2019 The CefNet Authors. All rights reserved.
// Licensed under the MIT license.
// See the licence file in the project root for full license information.
// --------------------------------------------------------------------------------------------
// Generated by CefGen
// Source: include/capi/cef_waitable_event_capi.h
// --------------------------------------------------------------------------------------------﻿
// DO NOT MODIFY! THIS IS AUTOGENERATED FILE!
// --------------------------------------------------------------------------------------------


.namespace CefNet.CApi
{
	.class public cef_waitable_event_t
	{
		// void (*)(_cef_waitable_event_t* self)*
		.method public hidebysig void Reset()
		{
			.maxstack 2
			ldarg.0
			ldarg.0
			ldfld void* CefNet.CApi.cef_waitable_event_t::reset
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_waitable_event_t*)
			ret
		}

		// void (*)(_cef_waitable_event_t* self)*
		.method public hidebysig void Signal()
		{
			.maxstack 2
			ldarg.0
			ldarg.0
			ldfld void* CefNet.CApi.cef_waitable_event_t::signal
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_waitable_event_t*)
			ret
		}

		// int (*)(_cef_waitable_event_t* self)*
		.method public hidebysig int32 IsSignaled()
		{
			.maxstack 2
			ldarg.0
			ldarg.0
			ldfld void* CefNet.CApi.cef_waitable_event_t::is_signaled
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				int32(valuetype CefNet.CApi.cef_waitable_event_t*)
			ret
		}

		// void (*)(_cef_waitable_event_t* self)*
		.method public hidebysig void Wait()
		{
			.maxstack 2
			ldarg.0
			ldarg.0
			ldfld void* CefNet.CApi.cef_waitable_event_t::wait
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				void(valuetype CefNet.CApi.cef_waitable_event_t*)
			ret
		}

		// int (*)(_cef_waitable_event_t* self, int64 max_ms)*
		.method public hidebysig int32 TimedWait(int64 max_ms)
		{
			.maxstack 3
			ldarg.0
			ldarg.1
			ldarg.0
			ldfld void* CefNet.CApi.cef_waitable_event_t::timed_wait
			calli explicit unmanaged
#ifdef WINDOWS
				stdcall
#else
				cdecl
#endif
				int32(valuetype CefNet.CApi.cef_waitable_event_t*, int64)
			ret
		}
	}
}

