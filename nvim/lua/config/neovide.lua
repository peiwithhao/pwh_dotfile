if vim.g.neovide then
  -- Fonts
  -- vim.o.guifont = 'Hack:H14'
  vim.o.guifont = 'Hack Nerd Font:h14:#e-subpixelantialias:#h-none'
  -- vim.o.neovide_scale_factor = 1.0
  -- Floating Blur Amount
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- Padding

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- Touch Deadzone
  vim.g.neovide_touch_deadzone = 6.0

  -- refresh Rate
  vim.g.neovidfe_refresh_rate = 60

  -- Floating Shadow
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5
  -- Transparency
  -- vim.g.neovide_transparency = 0.8
  -- Scroll Animation Length
  -- vim.g.neovide_scroll_animation_length = 0.30
  -- Far scroll lines
  -- vim.g.neovide_scroll_animation_far_lines = 1
  -- Theme vim.g.neovide_theme = 'auto'
  -- Fix Border and winbar scrolling glitches
  vim.g.neovide_unlink_border_highlights = true
  -- Refresh Rate
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_no_idle = true
  -- Idle Refresh Rate
  vim.g.neovide_refresh_rate_idle = 5
  -- Fullscreen
  -- vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_animation_length = 0.11
  vim.g.neovide_cursor_trail_size = 0.8
  -- Antialiasing
  vim.g.neovide_cursor_antialiasing = false
  -- Animate in insert mode
  vim.g.neovide_cursor_animate_in_insert_mode = true
  -- Animate switch to command line
  vim.g.neovide_cursor_animate_command_line = true
  -- Unfocused Outline Width
  vim.g.neovide_cursor_unfocused_outline_width = 0.125
  -- Animate cursor blink
  vim.g.neovide_cursor_smooth_blink = false
  -- Cursor Particles
  vim.g.neovide_cursor_vfx_mode = 'railgun'
  -- Particle Opacity
  vim.g.neovide_cursor_vfx_opacity = 200.0
  -- Particle Lifetime
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  -- partivle Density
  vim.g.neovide_cursor_vfx_particle_density = 12.0

  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
  vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
