/* Copyright (c) 2025 Damon Smith */

export interface IHistoryItem {
  _id?: string;
  title?: string;
  url?: string;
  date?: number;
  favicon?: string;
  hovered?: boolean;
}

export interface IVisitedItem extends IHistoryItem {
  times: number;
}
