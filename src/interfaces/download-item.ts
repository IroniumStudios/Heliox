/* Copyright (c) 2025 Damon Smith */

export interface IDownloadItem {
  paused: any;
  canceled: any;
  fileName?: string;
  receivedBytes?: number;
  totalBytes?: number;
  savePath?: string;
  id?: string;
  completed?: boolean;
}
