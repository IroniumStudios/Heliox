/* Copyright (c) 2025 Damon Smith */

import { IconProp } from '@fortawesome/fontawesome-svg-core';

export interface ISuggestion {
  primaryText?: string;
  secondaryText?: string;
  id?: number;
  favicon?: string | IconProp;
  canSuggest?: boolean;
  isSearch?: boolean;
  hovered?: boolean;
  url?: string;
}
