/* Copyright (c) 2025 Damon Smith */

export interface IStartupTab {
  id?: number;
  windowId?: number;
  groupId?: number;
  title?: string;
  url?: string;
  favicon?: string;
  order?: number;
  pinned?: boolean;
  isUserDefined?: boolean;
}
