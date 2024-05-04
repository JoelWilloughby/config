" File: lightline-gruvbox.vim
" Description: lightline.vim theme for gruvbox colorscheme
" Author: shinchu <shinchu@outlook.com>
" Contributor: oldwomanjosiah <jhilden13@gmail.com>
" Source: https://github.com/oldwomanjosiah/lightline-gruvbox.vim

let s:is_dark=(&background == 'dark')

if !exists('g:gruvbox_contrast_dark')
  let g:gruvbox_contrast_dark='medium'
endif
if !exists('g:gruvbox_contrast_light')
  let g:gruvbox_contrast_light='medium'
endif

if s:is_dark
        " mono0 is the INSERT/NORMAL color
	let s:mono0   = '#282828'
	let s:c_mono0 = 235
	if g:gruvbox_contrast_dark == 'soft'
		let s:mono0 = '#32302f'
		let s:c_mono0 = 236
	elseif g:gruvbox_contrast_dark == 'hard'
		let s:mono0 = '#1d2021'
		let s:c_mono0 = 234
	endif

	let s:mono1   = '#3c3836'
	let s:c_mono1 = 237
	let s:mono2   = '#504945'
	let s:c_mono2 = 239
	let s:mono3   = '#665c54'
	let s:c_mono3 = 241
	let s:mono4   = '#7c6f64'
	let s:c_mono4 = 243
	let s:mono5   = '#928374'
	let s:c_mono5 = 245

        let s:fg0 = '#fb1f1c7'
        let s:c_fg0 = 229
        let s:fg1 = '#ebdbb2'
        let s:c_fg1 = 223
        let s:fg2 = '#d5c4a1'
        let s:c_fg2 = 250
        let s:fg3 = '#bdae93'
        let s:c_fg3 = 248
        let s:fg4 = '#a89984'
        let s:c_fg4 = 246

	let s:red      = '#fb4934'
	let s:c_red    = 167
	let s:green    = '#b8bb26'
	let s:c_green  = 142
	let s:blue     = '#83a598'
	let s:c_blue   = 109
	let s:orange   = '#fe8019'
	let s:c_orange = 208
        let s:purple   = '#d3869b'
        let s:c_purple = 175
        let s:yellow   = '#fabd2f'
        let s:c_yellow = 214
        let s:aqua     = '#8ec07c'
        let s:c_aqua   = 108
else

	let s:mono0   = '#fbf4c1'
	let s:c_mono0 = 229
	if g:gruvbox_contrast_light == 'soft'
		let s:mono0 = '#f2e5bc'
		let s:c_mono0 = 228
	elseif g:gruvbox_contrast_light == 'hard'
		let s:mono0 = '#f9f5d7'
		let s:c_mono0 = 230
	endif

	let s:mono1   = '#ebdbb2'
	let s:mono2   = '#d5c4a1'
	let s:mono3   = '#bdae93'
	let s:mono4   = '#a89984'
	let s:mono5   = '#928374'
	let s:c_mono1 = 223
	let s:c_mono2 = 250
	let s:c_mono3 = 248
	let s:c_mono4 = 246
	let s:c_mono5 = 244

	let s:red      = '#9d0006'
	let s:green    = '#79740e'
	let s:blue     = '#076678'
	let s:orange   = '#af3a03'
        let s:purple   = '#8f3f71'
        let s:yellow   = '#b57614'
	let s:c_red    = 88
	let s:c_green  = 100
	let s:c_blue   = 24
	let s:c_orange = 130
        let s:c_purple = 96
        let s:c_yellow = 136
endif

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

" Valid Values '', 'plain' ('plain' forces color = '')
let s:style = exists('g:lightline_gruvbox_style')
			\ ? get(g:, 'lightline_gruvbox_style', '')
			\ : ''

" Valid Values 'left', 'right', 'both', ''
let s:color = exists('g:lightline_gruvbox_color')
			\ ? get(g:, 'lightline_gruvbox_color', '') : 'left'

if s:style ==? 'plain'
	let s:color = ''
endif

" COLORS ARE [fg, bg, c_fg, c_bg]

let s:p.normal.middle = [
			\ [s:fg4, s:mono1, s:c_fg4, s:c_mono1]]

let s:p.tabline.middle = [
			\ [s:fg4, s:mono1, s:c_fg4, s:c_mono1]]
let s:p.tabline.right = [
			\ [s:fg0, s:mono5, s:c_fg0, s:c_mono5]]
let s:p.tabline.left = [
			\ [s:fg0, s:mono5, s:c_fg0, s:c_mono5]]
let s:p.tabline.tabsel = [
			\ [s:fg4, s:mono1, s:c_fg4, s:c_mono1]]

let s:p.normal.left = [
                        \ [s:mono0, s:green, s:c_mono0, s:c_green],
                        \ [s:fg1, s:mono2, s:c_fg1, s:c_mono2]]

let s:p.insert.left = [
                        \ [s:mono0, s:blue, s:c_mono0, s:c_blue],
                        \ s:p.normal.left[1]]

let s:p.replace.left = [
                        \ [s:mono0, s:red, s:c_mono0, s:c_red],
                        \ s:p.normal.left[1]]

let s:p.visual.left = [
                        \ [s:mono0, s:orange, s:c_mono0, s:c_orange],
                        \ s:p.normal.left[1]]

let s:p.normal.right = [
                        \ [s:mono0, s:purple, s:c_mono0, s:c_purple],
                        \ [s:fg1, s:mono3, s:c_mono0, s:c_mono3]]

let s:p.insert.right = s:p.normal.right
let s:p.replace.right = s:p.normal.right
let s:p.visual.right = [
                        \ [s:mono0, s:yellow, s:c_mono0, s:c_yellow],
                        \ s:p.normal.right[1]]


let s:p.inactive.middle = [
			\ [s:fg4, s:mono1, s:c_fg4, s:c_mono1]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let g:lightline#colorscheme#gruvbox#palette = s:p
