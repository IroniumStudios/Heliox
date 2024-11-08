/* Copyright (c) 2025 Damon Smith */

import { IHistoryItem } from './history-item';

export interface IHistorySection {
  label?: string;
  items?: IHistoryItem[];
  date?: Date;
}
