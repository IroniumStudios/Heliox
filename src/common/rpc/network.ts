/* Copyright (c) 2025 Damon Smith */

import { RendererToMainChannel } from '@wexond/rpc-electron';

export interface ResponseDetails {
  statusCode: number;
  data: string;
}

export interface NetworkService {
  request(url: string): Promise<ResponseDetails>;
}

export const networkMainChannel = new RendererToMainChannel<NetworkService>(
  'NetworkService',
);
