﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;

namespace CefNet.Windows.Forms
{
	public class CursorChangeEventArgs : EventArgs
	{
		public CursorChangeEventArgs(Cursor cursor, CefCursorType cursorType)
		{
			this.Cursor = cursor;
			this.CursorType = cursorType;
		}

		public Cursor Cursor { get; }

		public CefCursorType CursorType { get; }
	}
}
