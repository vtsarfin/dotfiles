local gpu_adapters = require('utils.gpu-adapter')
local backdrops = require('utils.backdrops')
local colors = require('colors.custom')
local wezterm = require('wezterm')
return {
   wezterm.on('gui-startup', function(cmd)
      local screen = wezterm.gui.screens().active
      local ratio = 0.7
      local width, height = screen.width * ratio, screen.height * ratio
      local tab, pane, window = wezterm.mux.spawn_window({
         position = {
            x = (screen.width - width) / 2,
            y = (screen.height - height) / 2,
            origin = 'ActiveScreen',
         },
      })
      -- window:gui_window():maximize()
      window:gui_window():set_inner_size(width, height)
   end),
   initial_rows = 60,
   initial_cols = 230,
   max_fps = 120,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
   underline_thickness = '1.5pt',

   -- cursor
   animation_fps = 120,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   --   default_cursor_style = 'Block',
   cursor_blink_rate = 650,

   -- color scheme
   colors = colors,

   -- background
   --   background = backdrops:initial_options(false), -- set to true if you want wezterm to start on focus mode

   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = true,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_padding = {
      left = 0,
      right = 0,
      top = 10,
      bottom = 7.5,
   },
   adjust_window_size_when_changing_font_size = true,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },

   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 250,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 250,
      target = 'CursorColor',
   },
   bidi_enabled = true,
   bidi_direction = 'LeftToRight',
}
