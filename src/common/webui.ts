/* Copyright (c) 2025 Damon Smith */

import { WEBUI_BASE_URL, WEBUI_URL_SUFFIX } from '~/constants/files';

export const getWebUIURL = (hostname: string) =>
  `${WEBUI_BASE_URL}${hostname}${WEBUI_URL_SUFFIX}`;
