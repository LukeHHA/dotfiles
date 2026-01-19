return {
	require("tokyonight").setup({
		-- use the night style
		style = "storm",
		-- disable italic for functions
		styles = {
			functions = {}
		},
		-- Change the "hint" color to the "orange" color, and make the "error" color bright red
		on_colors = function(colors)
			colors.bg = "#24292e"
			colors.bg_dark = "#010409"
			colors.bg_dark1 = "#010409"
			colors.bg_float = "#161b22"
			colors.bg_highlight = "#2b3036"
			colors.bg_popup = "#161b22"
			colors.bg_search = "#9e6a03"
			colors.bg_sidebar = "#1f2428"
			colors.bg_statusline = "#24292e"
			colors.bg_visual = "#253141"
			colors.black = "#010409"
			colors.blue = "#79b8ff"
			colors.blue0 = "#1f6feb"
			colors.blue1 = "#79b8ff"
			colors.blue2 = "#2f81f7"
			colors.blue5 = "#79b8ff"
			colors.blue6 = "#9ecbff"
			colors.blue7 = "#30363d"
			colors.border = "#30363d"
			colors.border_highlight = "#2f81f7"
			colors.comment = "#8b949e"
			colors.cyan = "#76e3ea"
			colors.dark3 = "#6e7681"
			colors.dark5 = "#7d8590"
			colors.diff = {
				add = "#033a16",
				change = "#5a1e02",
				delete = "#67060c",
				text = "#1158c7"
			}
			colors.error = "#f85149"
			colors.fg = "#e1e4e8"
			colors.fg_dark = "#8b949e"
			colors.fg_float = "#e1e4e8"
			colors.fg_gutter = "#6e7681"
			colors.fg_sidebar = "#8b949e"
			colors.git = {
				add = "#3fb950",
				change = "#d29922",
				delete = "#f85149",
				ignore = "#6e7681"
			}
			colors.green = "#7ee787"
			colors.green1 = "#56d364"
			colors.green2 = "#3fb950"
			colors.hint = "#8b949e"
			colors.info = "#2f81f7"
			colors.magenta = "#b392f0"
			colors.magenta2 = "#f85149"
			colors.none = "NONE"
			colors.orange = "#ffab70"
			colors.purple = "#b392f0"
			colors.rainbow = { "#79b8ff", "#ffab70", "#7ee787", "#2f81f7", "#b392f0", "#bc8cff", "#f97583", "#d29922" }
			colors.red = "#f97583"
			colors.red1 = "#f85149"
			colors.teal = "#7ee787"
			colors.terminal = {
				black = "#0d1117",
				black_bright = "#161b22",
				blue = "#58a6ff",
				blue_bright = "#79b8ff",
				cyan = "#76e3ea",
				cyan_bright = "#b3f0ff",
				green = "#3fb950",
				green_bright = "#56d364",
				magenta = "#bc8cff",
				magenta_bright = "#b392f0",
				red = "#f97583",
				red_bright = "#ffa198",
				white = "#b1bac4",
				white_bright = "#e1e4e8",
				yellow = "#d29922",
				yellow_bright = "#e3b341"
			}
			colors.terminal_black = "#161b22"
			colors.todo = "#d29922"
			colors.warning = "#d29922"
			colors.yellow = "#d29922"
		end,

		on_highlights = function(hl, c)
			local overrides = {
				["@annotation"] = "PreProc",
				["@attribute"] = "PreProc",
				["@boolean"] = "Constant",
				["@character"] = "Character",
				["@character.printf"] = "@string.escape",
				["@character.special"] = "@string.escape",
				["@comment"] = "Comment",
				["@comment.error"] = {
					fg = "#f85149"
				},
				["@comment.hint"] = {
					fg = "#8b949e"
				},
				["@comment.info"] = {
					fg = "#2f81f7"
				},
				["@comment.note"] = {
					fg = "#2f81f7"
				},
				["@comment.todo"] = {
					fg = "#d29922"
				},
				["@comment.warning"] = {
					fg = "#d29922"
				},
				["@constant"] = "Constant",
				["@constant.builtin"] = "Special",
				["@constant.macro"] = "@function",
				["@constructor"] = "@type",
				["@constructor.tsx"] = "@type",
				["@diff.delta"] = "DiffChange",
				["@diff.minus"] = "DiffDelete",
				["@diff.plus"] = "DiffAdd",
				["@function"] = "Function",
				["@function.builtin"] = "Special",
				["@function.call"] = "@function",
				["@function.macro"] = "@function",
				["@function.method"] = "Function",
				["@function.method.call"] = "@function.method",
				["@keyword"] = "Keyword",
				["@keyword.conditional"] = "@keyword",
				["@keyword.coroutine"] = "@keyword",
				["@keyword.debug"] = "Debug",
				["@keyword.directive"] = "PreProc",
				["@keyword.directive.define"] = "PreProc",
				["@keyword.exception"] = "@keyword",
				["@keyword.function"] = "Keyword",
				["@keyword.import"] = "@keyword",
				["@keyword.operator"] = "@operator",
				["@keyword.repeat"] = "@keyword",
				["@keyword.return"] = "@keyword",
				["@keyword.storage"] = "@keyword",
				["@label"] = {
					fg = "#79b8ff"
				},
				["@lsp.type.boolean"] = "@boolean",
				["@lsp.type.bracket"] = "@operator",
				["@lsp.type.bracket.cpp"] = "@operator",
				["@lsp.type.builtinType"] = "@type.builtin",
				["@lsp.type.builtinType.cpp"] = "@type.builtin",
				["@lsp.type.class"] = "@type",
				["@lsp.type.class.cpp"] = "@type",
				["@lsp.type.comment"] = "@comment",
				["@lsp.type.decorator"] = "@attribute",
				["@lsp.type.deriveHelper"] = "@attribute",
				["@lsp.type.enum"] = "@type",
				["@lsp.type.enum.cpp"] = "@type",
				["@lsp.type.enumMember"] = "@constant",
				["@lsp.type.enumMember.cpp"] = "@constant",
				["@lsp.type.escapeSequence"] = "@string.escape",
				["@lsp.type.formatSpecifier"] = "@markup.list",
				["@lsp.type.function"] = "@function",
				["@lsp.type.function.cpp"] = "@function",
				["@lsp.type.generic"] = "@variable",
				["@lsp.type.interface"] = "@type",
				["@lsp.type.keyword"] = "@keyword",
				["@lsp.type.lifetime"] = "@keyword.storage",
				["@lsp.type.macro"] = "@function",
				["@lsp.type.macro.cpp"] = "@function",
				["@lsp.type.method"] = "@function.method",
				["@lsp.type.method.cpp"] = "@function.method",
				["@lsp.type.namespace"] = "@module",
				["@lsp.type.namespace.cpp"] = "@module",
				["@lsp.type.namespace.python"] = "@variable",
				["@lsp.type.number"] = "@number",
				["@lsp.type.operator"] = "@operator",
				["@lsp.type.parameter"] = "@variable.parameter",
				["@lsp.type.parameter.cpp"] = "@variable.parameter",
				["@lsp.type.property"] = "@property",
				["@lsp.type.property.cpp"] = "@property",
				["@lsp.type.selfKeyword"] = "@variable.builtin",
				["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
				["@lsp.type.string"] = "@string",
				["@lsp.type.struct"] = "@type",
				["@lsp.type.struct.cpp"] = "@type",
				["@lsp.type.type"] = "@type",
				["@lsp.type.type.cpp"] = "@type",
				["@lsp.type.typeAlias"] = "@type.definition",
				["@lsp.type.typeParameter"] = "@type",
				["@lsp.type.typeParameter.cpp"] = "@type",
				["@lsp.type.unresolvedReference"] = {
					sp = "#f85149",
					undercurl = true
				},
				["@lsp.type.variable"] = "@variable",
				["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
				["@lsp.typemod.class.defaultLibrary.cpp"] = "@type",
				["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
				["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
				["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
				["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
				["@lsp.typemod.keyword.injected"] = "@keyword",
				["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
				["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
				["@lsp.typemod.operator.injected"] = "@operator",
				["@lsp.typemod.property.static"] = "@property",
				["@lsp.typemod.property.static.cpp"] = "@property",
				["@lsp.typemod.string.injected"] = "@string",
				["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
				["@lsp.typemod.struct.defaultLibrary.cpp"] = "@type",
				["@lsp.typemod.type.defaultLibrary"] = "@type.builtin",
				["@lsp.typemod.type.defaultLibrary.cpp"] = "@type",
				["@lsp.typemod.typeAlias.defaultLibrary"] = "@type.builtin",
				["@lsp.typemod.variable.callable"] = "@function",
				["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
				["@lsp.typemod.variable.injected"] = "@variable",
				["@lsp.typemod.variable.static"] = "@constant",
				["@markup"] = "@none",
				["@markup.emphasis"] = {
					italic = true
				},
				["@markup.environment"] = "PreProc",
				["@markup.environment.name"] = "Type",
				["@markup.heading"] = "Title",
				["@markup.heading.1.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#79b8ff"
				},
				["@markup.heading.2.markdown"] = {
					bg = "#21262d",
					bold = true,
					fg = "#d29922"
				},
				["@markup.heading.3.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#7ee787"
				},
				["@markup.heading.4.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#7ee787"
				},
				["@markup.heading.5.markdown"] = {
					bg = "#21262d",
					bold = true,
					fg = "#b392f0"
				},
				["@markup.heading.6.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#b392f0"
				},
				["@markup.heading.7.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#ffab70"
				},
				["@markup.heading.8.markdown"] = {
					bg = "#161b22",
					bold = true,
					fg = "#f97583"
				},
				["@markup.italic"] = {
					italic = true
				},
				["@markup.link"] = {
					fg = "#2f81f7"
				},
				["@markup.link.label"] = "@markup.link",
				["@markup.link.label.symbol"] = "Identifier",
				["@markup.link.url"] = "Underlined",
				["@markup.list"] = {
					fg = "#f2cc60"
				},
				["@markup.list.checked"] = {
					fg = "#7ee787"
				},
				["@markup.list.markdown"] = {
					bold = true,
					fg = "#f2cc60"
				},
				["@markup.list.unchecked"] = {
					fg = "#79b8ff"
				},
				["@markup.math"] = "Special",
				["@markup.raw"] = "String",
				["@markup.raw.markdown_inline"] = {
					bg = "#161b22",
					fg = "#79b8ff"
				},
				["@markup.strikethrough"] = {
					strikethrough = true
				},
				["@markup.strong"] = {
					bold = true
				},
				["@markup.underline"] = {
					underline = true
				},
				["@module"] = "@type",
				["@module.builtin"] = "@module",
				["@namespace.builtin"] = "@module",
				["@none"] = {},
				["@number"] = "Constant",
				["@number.float"] = "@number",
				["@operator"] = {
					fg = "#f97583"
				},
				["@property"] = {
					fg = "#e1e4e8"
				},
				["@punctuation.bracket"] = {
					fg = "#e1e4e8"
				},
				["@punctuation.delimiter"] = {
					fg = "#e1e4e8"
				},
				["@punctuation.special"] = {
					fg = "#f97583"
				},
				["@punctuation.special.markdown"] = {
					fg = "#ffab70"
				},
				["@string"] = "String",
				["@string.documentation"] = {
					fg = "#9ecbff"
				},
				["@string.escape"] = {
					fg = "#7ee787"
				},
				["@string.regexp"] = {
					fg = "#9ecbff"
				},
				["@tag"] = {
					fg = "#7ee787"
				},
				["@tag.attribute"] = "@property",
				["@tag.delimiter"] = "@punctuation.delimiter",
				["@tag.delimiter.tsx"] = "@punctuation.delimiter",
				["@tag.javascript"] = {
					fg = "#7ee787"
				},
				["@tag.tsx"] = {
					fg = "#7ee787"
				},
				["@type"] = "Type",
				["@type.builtin"] = {
					fg = "#f97583"
				},
				["@type.definition"] = "@type",
				["@type.qualifier"] = "@keyword",
				["@variable"] = {
					fg = "#ffab70"
				},
				["@variable.builtin"] = {
					fg = "#79b8ff"
				},
				["@variable.member"] = {
					fg = "#e1e4e8"
				},
				["@variable.parameter"] = {
					fg = "#ffab70"
				},
				["@variable.parameter.builtin"] = {
					fg = "#ffab70"
				},
				ALEErrorSign = {
					fg = "#f85149"
				},
				ALEWarningSign = {
					fg = "#d29922"
				},
				AerialArrayIcon = "LspKindArray",
				AerialBooleanIcon = "LspKindBoolean",
				AerialClassIcon = "LspKindClass",
				AerialColorIcon = "LspKindColor",
				AerialConstantIcon = "LspKindConstant",
				AerialConstructorIcon = "LspKindConstructor",
				AerialEnumIcon = "LspKindEnum",
				AerialEnumMemberIcon = "LspKindEnumMember",
				AerialEventIcon = "LspKindEvent",
				AerialFieldIcon = "LspKindField",
				AerialFileIcon = "LspKindFile",
				AerialFolderIcon = "LspKindFolder",
				AerialFunctionIcon = "LspKindFunction",
				AerialGuide = {
					fg = "#6e7681"
				},
				AerialInterfaceIcon = "LspKindInterface",
				AerialKeyIcon = "LspKindKey",
				AerialKeywordIcon = "LspKindKeyword",
				AerialLine = "LspInlayHint",
				AerialMethodIcon = "LspKindMethod",
				AerialModuleIcon = "LspKindModule",
				AerialNamespaceIcon = "LspKindNamespace",
				AerialNormal = {
					bg = "NONE",
					fg = "#e1e4e8"
				},
				AerialNullIcon = "LspKindNull",
				AerialNumberIcon = "LspKindNumber",
				AerialObjectIcon = "LspKindObject",
				AerialOperatorIcon = "LspKindOperator",
				AerialPackageIcon = "LspKindPackage",
				AerialPropertyIcon = "LspKindProperty",
				AerialReferenceIcon = "LspKindReference",
				AerialSnippetIcon = "LspKindSnippet",
				AerialStringIcon = "LspKindString",
				AerialStructIcon = "LspKindStruct",
				AerialTextIcon = "LspKindText",
				AerialTypeParameterIcon = "LspKindTypeParameter",
				AerialUnitIcon = "LspKindUnit",
				AerialValueIcon = "LspKindValue",
				AerialVariableIcon = "LspKindVariable",
				AlphaButtons = {
					fg = "#79b8ff"
				},
				AlphaFooter = {
					fg = "#79b8ff"
				},
				AlphaHeader = {
					fg = "#79b8ff"
				},
				AlphaHeaderLabel = {
					fg = "#ffab70"
				},
				AlphaShortcut = {
					fg = "#ffab70"
				},
				BlinkCmpDoc = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				BlinkCmpDocBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				BlinkCmpGhostText = {
					fg = "#484f58"
				},
				BlinkCmpKindArray = "LspKindArray",
				BlinkCmpKindBoolean = "LspKindBoolean",
				BlinkCmpKindClass = "LspKindClass",
				BlinkCmpKindCodeium = {
					bg = "NONE",
					fg = "#7ee787"
				},
				BlinkCmpKindColor = "LspKindColor",
				BlinkCmpKindConstant = "LspKindConstant",
				BlinkCmpKindConstructor = "LspKindConstructor",
				BlinkCmpKindCopilot = {
					bg = "NONE",
					fg = "#7ee787"
				},
				BlinkCmpKindDefault = {
					bg = "NONE",
					fg = "#8b949e"
				},
				BlinkCmpKindEnum = "LspKindEnum",
				BlinkCmpKindEnumMember = "LspKindEnumMember",
				BlinkCmpKindEvent = "LspKindEvent",
				BlinkCmpKindField = "LspKindField",
				BlinkCmpKindFile = "LspKindFile",
				BlinkCmpKindFolder = "LspKindFolder",
				BlinkCmpKindFunction = "LspKindFunction",
				BlinkCmpKindInterface = "LspKindInterface",
				BlinkCmpKindKey = "LspKindKey",
				BlinkCmpKindKeyword = "LspKindKeyword",
				BlinkCmpKindMethod = "LspKindMethod",
				BlinkCmpKindModule = "LspKindModule",
				BlinkCmpKindNamespace = "LspKindNamespace",
				BlinkCmpKindNull = "LspKindNull",
				BlinkCmpKindNumber = "LspKindNumber",
				BlinkCmpKindObject = "LspKindObject",
				BlinkCmpKindOperator = "LspKindOperator",
				BlinkCmpKindPackage = "LspKindPackage",
				BlinkCmpKindProperty = "LspKindProperty",
				BlinkCmpKindReference = "LspKindReference",
				BlinkCmpKindSnippet = "LspKindSnippet",
				BlinkCmpKindString = "LspKindString",
				BlinkCmpKindStruct = "LspKindStruct",
				BlinkCmpKindSupermaven = {
					bg = "NONE",
					fg = "#7ee787"
				},
				BlinkCmpKindTabNine = {
					bg = "NONE",
					fg = "#7ee787"
				},
				BlinkCmpKindText = "LspKindText",
				BlinkCmpKindTypeParameter = "LspKindTypeParameter",
				BlinkCmpKindUnit = "LspKindUnit",
				BlinkCmpKindValue = "LspKindValue",
				BlinkCmpKindVariable = "LspKindVariable",
				BlinkCmpLabel = {
					bg = "NONE",
					fg = "#e1e4e8"
				},
				BlinkCmpLabelDeprecated = {
					bg = "NONE",
					fg = "#6e7681",
					strikethrough = true
				},
				BlinkCmpLabelMatch = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				BlinkCmpMenu = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				BlinkCmpMenuBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				BlinkCmpSignatureHelp = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				BlinkCmpSignatureHelpBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				Bold = {
					bold = true,
					fg = "#e1e4e8"
				},
				BufferAlternate = {
					bg = "#6e7681",
					fg = "#e1e4e8"
				},
				BufferAlternateADDED = {
					bg = "#6e7681",
					fg = "#3fb950"
				},
				BufferAlternateCHANGED = {
					bg = "#6e7681",
					fg = "#d29922"
				},
				BufferAlternateDELETED = {
					bg = "#6e7681",
					fg = "#f85149"
				},
				BufferAlternateERROR = {
					bg = "#6e7681",
					fg = "#f85149"
				},
				BufferAlternateHINT = {
					bg = "#6e7681",
					fg = "#7ee787"
				},
				BufferAlternateINFO = {
					bg = "#6e7681",
					fg = "#2f81f7"
				},
				BufferAlternateIndex = {
					bg = "#6e7681",
					fg = "#2f81f7"
				},
				BufferAlternateMod = {
					bg = "#6e7681",
					fg = "#d29922"
				},
				BufferAlternateSign = {
					bg = "#6e7681",
					fg = "#2f81f7"
				},
				BufferAlternateTarget = {
					bg = "#6e7681",
					fg = "#f97583"
				},
				BufferAlternateWARN = {
					bg = "#6e7681",
					fg = "#d29922"
				},
				BufferCurrent = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				BufferCurrentADDED = {
					bg = "#0d1117",
					fg = "#3fb950"
				},
				BufferCurrentCHANGED = {
					bg = "#0d1117",
					fg = "#d29922"
				},
				BufferCurrentDELETED = {
					bg = "#0d1117",
					fg = "#f85149"
				},
				BufferCurrentERROR = {
					bg = "#0d1117",
					fg = "#f85149"
				},
				BufferCurrentHINT = {
					bg = "#0d1117",
					fg = "#7ee787"
				},
				BufferCurrentINFO = {
					bg = "#0d1117",
					fg = "#2f81f7"
				},
				BufferCurrentIndex = {
					bg = "#0d1117",
					fg = "#2f81f7"
				},
				BufferCurrentMod = {
					bg = "#0d1117",
					fg = "#d29922"
				},
				BufferCurrentSign = {
					bg = "#0d1117",
					fg = "#0d1117"
				},
				BufferCurrentTarget = {
					bg = "#0d1117",
					fg = "#f97583"
				},
				BufferCurrentWARN = {
					bg = "#0d1117",
					fg = "#d29922"
				},
				BufferInactive = {
					bg = "#0d1117",
					fg = "#7d8590"
				},
				BufferInactiveADDED = {
					bg = "#0d1117",
					fg = "#79b8ff"
				},
				BufferInactiveCHANGED = {
					bg = "#0d1117",
					fg = "#1f6feb"
				},
				BufferInactiveDELETED = {
					bg = "#0d1117",
					fg = "#67060c"
				},
				BufferInactiveERROR = {
					bg = "#0d1117",
					fg = "#f85149"
				},
				BufferInactiveHINT = {
					bg = "#0d1117",
					fg = "#7ee787"
				},
				BufferInactiveINFO = {
					bg = "#0d1117",
					fg = "#2f81f7"
				},
				BufferInactiveIndex = {
					bg = "#0d1117",
					fg = "#7d8590"
				},
				BufferInactiveMod = {
					bg = "#0d1117",
					fg = "#d29922"
				},
				BufferInactiveSign = {
					bg = "#0d1117",
					fg = "#0d1117"
				},
				BufferInactiveTarget = {
					bg = "#0d1117",
					fg = "#f97583"
				},
				BufferInactiveWARN = {
					bg = "#0d1117",
					fg = "#d29922"
				},
				BufferLineIndicatorSelected = {
					fg = "#d29922"
				},
				BufferOffset = {
					bg = "#161b22",
					fg = "#7d8590"
				},
				BufferTabpageFill = {
					bg = "#161b22",
					fg = "#7d8590"
				},
				BufferTabpages = {
					bg = "#161b22",
					fg = "NONE"
				},
				BufferVisible = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				BufferVisibleADDED = {
					bg = "#161b22",
					fg = "#3fb950"
				},
				BufferVisibleCHANGED = {
					bg = "#161b22",
					fg = "#d29922"
				},
				BufferVisibleDELETED = {
					bg = "#161b22",
					fg = "#f85149"
				},
				BufferVisibleERROR = {
					bg = "#161b22",
					fg = "#f85149"
				},
				BufferVisibleHINT = {
					bg = "#161b22",
					fg = "#7ee787"
				},
				BufferVisibleINFO = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				BufferVisibleIndex = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				BufferVisibleMod = {
					bg = "#161b22",
					fg = "#d29922"
				},
				BufferVisibleSign = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				BufferVisibleTarget = {
					bg = "#161b22",
					fg = "#f97583"
				},
				BufferVisibleWARN = {
					bg = "#161b22",
					fg = "#d29922"
				},
				Character = {
					fg = "#f97583"
				},
				cOperator = "Operator",
				cStructure = "Keyword",
				cType = "@type.builtin",
				cppOperator = "Operator",
				cppStructure = "Keyword",
				cppType = "@type.builtin",
				CmpDocumentation = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				CmpDocumentationBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				CmpGhostText = {
					fg = "#484f58"
				},
				CmpItemAbbr = {
					bg = "NONE",
					fg = "#e1e4e8"
				},
				CmpItemAbbrDeprecated = {
					bg = "NONE",
					fg = "#6e7681",
					strikethrough = true
				},
				CmpItemAbbrMatch = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				CmpItemAbbrMatchFuzzy = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				CmpItemKindArray = "LspKindArray",
				CmpItemKindBoolean = "LspKindBoolean",
				CmpItemKindClass = "LspKindClass",
				CmpItemKindCodeium = {
					bg = "NONE",
					fg = "#7ee787"
				},
				CmpItemKindColor = "LspKindColor",
				CmpItemKindConstant = "LspKindConstant",
				CmpItemKindConstructor = "LspKindConstructor",
				CmpItemKindCopilot = {
					bg = "NONE",
					fg = "#7ee787"
				},
				CmpItemKindDefault = {
					bg = "NONE",
					fg = "#8b949e"
				},
				CmpItemKindEnum = "LspKindEnum",
				CmpItemKindEnumMember = "LspKindEnumMember",
				CmpItemKindEvent = "LspKindEvent",
				CmpItemKindField = "LspKindField",
				CmpItemKindFile = "LspKindFile",
				CmpItemKindFolder = "LspKindFolder",
				CmpItemKindFunction = "LspKindFunction",
				CmpItemKindInterface = "LspKindInterface",
				CmpItemKindKey = "LspKindKey",
				CmpItemKindKeyword = "LspKindKeyword",
				CmpItemKindMethod = "LspKindMethod",
				CmpItemKindModule = "LspKindModule",
				CmpItemKindNamespace = "LspKindNamespace",
				CmpItemKindNull = "LspKindNull",
				CmpItemKindNumber = "LspKindNumber",
				CmpItemKindObject = "LspKindObject",
				CmpItemKindOperator = "LspKindOperator",
				CmpItemKindPackage = "LspKindPackage",
				CmpItemKindProperty = "LspKindProperty",
				CmpItemKindReference = "LspKindReference",
				CmpItemKindSnippet = "LspKindSnippet",
				CmpItemKindString = "LspKindString",
				CmpItemKindStruct = "LspKindStruct",
				CmpItemKindSupermaven = {
					bg = "NONE",
					fg = "#7ee787"
				},
				CmpItemKindTabNine = {
					bg = "NONE",
					fg = "#7ee787"
				},
				CmpItemKindText = "LspKindText",
				CmpItemKindTypeParameter = "LspKindTypeParameter",
				CmpItemKindUnit = "LspKindUnit",
				CmpItemKindValue = "LspKindValue",
				CmpItemKindVariable = "LspKindVariable",
				CmpItemMenu = {
					bg = "NONE",
					fg = "#8b949e"
				},
				CodeBlock = {
					bg = "#161b22"
				},
				CodeiumSuggestion = {
					fg = "#484f58"
				},
				ColorColumn = {
					bg = "#161b22"
				},
				Comment = {
					fg = "#8b949e"
				},
				ComplHint = {
					fg = "#484f58"
				},
				Conceal = {
					fg = "#7d8590"
				},
				Constant = {
					fg = "#79b8ff"
				},
				CopilotAnnotation = {
					fg = "#484f58"
				},
				CopilotSuggestion = {
					fg = "#484f58"
				},
				CurSearch = "IncSearch",
				Cursor = {
					bg = "#2f81f7",
					fg = "#24292e"
				},
				CursorColumn = {
					bg = "#2b3036"
				},
				CursorIM = {
					bg = "#2f81f7",
					fg = "#24292e"
				},
				CursorLine = {
					bg = "#2b3036"
				},
				CursorLineNr = {
					bold = true,
					fg = "#e1e4e8"
				},
				DapStoppedLine = {
					bg = "#21262d"
				},
				DashboardDesc = {
					fg = "#79b8ff"
				},
				DashboardFiles = {
					fg = "#79b8ff"
				},
				DashboardFooter = {
					fg = "#79b8ff"
				},
				DashboardHeader = {
					fg = "#79b8ff"
				},
				DashboardIcon = {
					fg = "#79b8ff"
				},
				DashboardKey = {
					fg = "#ffab70"
				},
				DashboardMruIcon = {
					fg = "#b392f0"
				},
				DashboardMruTitle = {
					fg = "#79b8ff"
				},
				DashboardProjectIcon = {
					fg = "#d29922"
				},
				DashboardProjectTitle = {
					fg = "#79b8ff"
				},
				DashboardProjectTitleIcon = {
					fg = "#ffab70"
				},
				DashboardShortCut = {
					fg = "#79b8ff"
				},
				DashboardShortCutIcon = {
					fg = "#b392f0"
				},
				Debug = {
					fg = "#ffab70"
				},
				DefinitionCount = {
					fg = "#b392f0"
				},
				DefinitionIcon = {
					fg = "#79b8ff"
				},
				Delimiter = {
					fg = "#e1e4e8"
				},
				DiagnosticError = {
					fg = "#f85149"
				},
				DiagnosticHint = {
					fg = "#8b949e"
				},
				DiagnosticInfo = {
					fg = "#2f81f7"
				},
				DiagnosticInformation = "DiagnosticInfo",
				DiagnosticUnderlineError = {
					sp = "#f85149",
					undercurl = true
				},
				DiagnosticUnderlineHint = {
					sp = "#8b949e",
					undercurl = true
				},
				DiagnosticUnderlineInfo = {
					sp = "#2f81f7",
					undercurl = true
				},
				DiagnosticUnderlineWarn = {
					sp = "#d29922",
					undercurl = true
				},
				DiagnosticUnnecessary = {
					fg = "#484f58"
				},
				DiagnosticVirtualTextError = {
					bg = "NONE",
					fg = "#f85149"
				},
				DiagnosticVirtualTextHint = {
					bg = "NONE",
					fg = "#8b949e"
				},
				DiagnosticVirtualTextInfo = {
					bg = "NONE",
					fg = "#2f81f7"
				},
				DiagnosticVirtualTextWarn = {
					bg = "NONE",
					fg = "#d29922"
				},
				DiagnosticWarn = {
					fg = "#d29922"
				},
				DiagnosticWarning = "DiagnosticWarn",
				DiffAdd = {
					bg = "#033a16"
				},
				DiffChange = {
					bg = "#5a1e02"
				},
				DiffDelete = {
					bg = "#67060c"
				},
				DiffText = {
					bg = "#1158c7"
				},
				Directory = {
					fg = "#79b8ff"
				},
				EndOfBuffer = {
					fg = "#24292e"
				},
				Error = {
					fg = "#f85149"
				},
				ErrorMsg = {
					fg = "#f85149"
				},
				FlashBackdrop = {
					fg = "#6e7681"
				},
				FlashLabel = {
					bg = "#f85149",
					bold = true,
					fg = "#e1e4e8"
				},
				FloatBorder = {
					bg = "#161b22",
					fg = "#30363d"
				},
				FloatTitle = {
					bg = "#161b22",
					fg = "#30363d"
				},
				FoldColumn = {
					bg = "#24292e",
					fg = "#6e7681"
				},
				Folded = {
					bg = "#161b22",
					fg = "#7d8590"
				},
				Foo = {
					bg = "#f85149",
					fg = "#e1e4e8"
				},
				Function = {
					fg = "#b392f0"
				},
				FzfLuaBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				FzfLuaCursor = "IncSearch",
				FzfLuaDirPart = {
					fg = "#8b949e"
				},
				FzfLuaFilePart = "FzfLuaFzfNormal",
				FzfLuaFzfCursorLine = "Visual",
				FzfLuaFzfNormal = {
					fg = "#e1e4e8"
				},
				FzfLuaFzfPointer = {
					fg = "#f85149"
				},
				FzfLuaFzfSeparator = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				FzfLuaHeaderBind = "@punctuation.special",
				FzfLuaHeaderText = "Title",
				FzfLuaNormal = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				FzfLuaPath = "Directory",
				FzfLuaPreviewTitle = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				FzfLuaTitle = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				GitGutterAdd = {
					fg = "#3fb950"
				},
				GitGutterAddLineNr = {
					fg = "#3fb950"
				},
				GitGutterChange = {
					fg = "#d29922"
				},
				GitGutterChangeLineNr = {
					fg = "#d29922"
				},
				GitGutterDelete = {
					fg = "#f85149"
				},
				GitGutterDeleteLineNr = {
					fg = "#f85149"
				},
				GitSignsAdd = {
					fg = "#3fb950"
				},
				GitSignsChange = {
					fg = "#d29922"
				},
				GitSignsDelete = {
					fg = "#f85149"
				},
				GlyphPalette1 = {
					fg = "#f85149"
				},
				GlyphPalette2 = {
					fg = "#7ee787"
				},
				GlyphPalette3 = {
					fg = "#d29922"
				},
				GlyphPalette4 = {
					fg = "#79b8ff"
				},
				GlyphPalette6 = {
					fg = "#7ee787"
				},
				GlyphPalette7 = {
					fg = "#e1e4e8"
				},
				GlyphPalette9 = {
					fg = "#f97583"
				},
				GrugFarHelpHeader = {
					fg = "#8b949e"
				},
				GrugFarHelpHeaderKey = {
					fg = "#79b8ff"
				},
				GrugFarInputLabel = {
					fg = "#79b8ff"
				},
				GrugFarInputPlaceholder = {
					fg = "#6e7681"
				},
				GrugFarResultsChangeIndicator = {
					fg = "#d29922"
				},
				GrugFarResultsHeader = {
					fg = "#ffab70"
				},
				GrugFarResultsLineColumn = {
					fg = "#6e7681"
				},
				GrugFarResultsLineNo = {
					fg = "#6e7681"
				},
				GrugFarResultsMatch = {
					bg = "#f97583",
					fg = "#010409"
				},
				GrugFarResultsStats = {
					fg = "#79b8ff"
				},
				Headline = "Headline1",
				Headline1 = {
					bg = "#161b22"
				},
				Headline2 = {
					bg = "#161b22"
				},
				Headline3 = {
					bg = "#161b22"
				},
				Headline4 = {
					bg = "#161b22"
				},
				Headline5 = {
					bg = "#161b22"
				},
				Headline6 = {
					bg = "#161b22"
				},
				Headline7 = {
					bg = "#161b22"
				},
				Headline8 = {
					bg = "#161b22"
				},
				HopNextKey = {
					bold = true,
					fg = "#f85149"
				},
				HopNextKey1 = {
					bold = true,
					fg = "#2f81f7"
				},
				HopNextKey2 = {
					fg = "#2f81f7"
				},
				HopUnmatched = {
					fg = "#6e7681"
				},
				IblIndent = {
					fg = "#6e7681",
					nocombine = true
				},
				IblScope = {
					fg = "#79b8ff",
					nocombine = true
				},
				Identifier = {
					fg = "#ffab70"
				},
				IlluminatedWordRead = {
					bg = "#6e7681"
				},
				IlluminatedWordText = {
					bg = "#6e7681"
				},
				IlluminatedWordWrite = {
					bg = "#6e7681"
				},
				IncSearch = {
					bg = "#9e6a03",
					fg = "#f0f6fc"
				},
				IndentBlanklineChar = {
					fg = "#6e7681",
					nocombine = true
				},
				IndentBlanklineContextChar = {
					fg = "#79b8ff",
					nocombine = true
				},
				IndentLine = {
					fg = "#6e7681",
					nocombine = true
				},
				IndentLineCurrent = {
					fg = "#79b8ff",
					nocombine = true
				},
				Italic = {
					fg = "#e1e4e8",
					italic = true
				},
				Keyword = {
					fg = "#f97583"
				},
				LazyProgressDone = {
					bold = true,
					fg = "#f85149"
				},
				LazyProgressTodo = {
					bold = true,
					fg = "#6e7681"
				},
				LeapBackdrop = {
					fg = "#6e7681"
				},
				LeapLabel = {
					bold = true,
					fg = "#f85149"
				},
				LeapMatch = {
					bg = "#f85149",
					bold = true,
					fg = "#e1e4e8"
				},
				LineNr = {
					fg = "#6e7681"
				},
				LineNrAbove = {
					fg = "#6e7681"
				},
				LineNrBelow = {
					fg = "#6e7681"
				},
				LspCodeLens = {
					fg = "#7d8590"
				},
				LspFloatWinBorder = {
					fg = "#30363d"
				},
				LspFloatWinNormal = {
					bg = "#161b22"
				},
				LspInfoBorder = {
					bg = "#161b22",
					fg = "#30363d"
				},
				LspInlayHint = {
					bg = "#161b22",
					fg = "#7d8590"
				},
				LspKindArray = "@punctuation.bracket",
				LspKindBoolean = "@boolean",
				LspKindClass = "@type",
				LspKindColor = "Special",
				LspKindConstant = "@constant",
				LspKindConstructor = "@constructor",
				LspKindEnum = "@lsp.type.enum",
				LspKindEnumMember = "@lsp.type.enumMember",
				LspKindEvent = "Special",
				LspKindField = "@variable.member",
				LspKindFile = "Normal",
				LspKindFolder = "Directory",
				LspKindFunction = "@function",
				LspKindInterface = "@lsp.type.interface",
				LspKindKey = "@variable.member",
				LspKindKeyword = "@lsp.type.keyword",
				LspKindMethod = "@function.method",
				LspKindModule = "@module",
				LspKindNamespace = "@module",
				LspKindNull = "@constant.builtin",
				LspKindNumber = "@number",
				LspKindObject = "@constant",
				LspKindOperator = "@operator",
				LspKindPackage = "@module",
				LspKindProperty = "@property",
				LspKindReference = "@markup.link",
				LspKindSnippet = "Conceal",
				LspKindString = "@string",
				LspKindStruct = "@lsp.type.struct",
				LspKindText = "@markup",
				LspKindTypeParameter = "@lsp.type.typeParameter",
				LspKindUnit = "@lsp.type.struct",
				LspKindValue = "@string",
				LspKindVariable = "@variable",
				LspReferenceRead = {
					bg = "#21262d"
				},
				LspReferenceText = {
					bg = "#21262d"
				},
				LspReferenceWrite = {
					bg = "#21262d"
				},
				LspSagaBorderTitle = {
					fg = "#79b8ff"
				},
				LspSagaCodeActionBorder = {
					fg = "#79b8ff"
				},
				LspSagaCodeActionContent = {
					fg = "#b392f0"
				},
				LspSagaCodeActionTitle = {
					fg = "#79b8ff"
				},
				LspSagaDefPreviewBorder = {
					fg = "#7ee787"
				},
				LspSagaFinderSelection = {
					fg = "#388bfd"
				},
				LspSagaHoverBorder = {
					fg = "#79b8ff"
				},
				LspSagaRenameBorder = {
					fg = "#7ee787"
				},
				LspSagaSignatureHelpBorder = {
					fg = "#f97583"
				},
				LspSignatureActiveParameter = {
					bg = "#21262d",
					bold = true
				},
				MatchParen = {
					bold = true,
					fg = "#3fb950"
				},
				MiniAnimateCursor = {
					nocombine = true,
					reverse = true
				},
				MiniAnimateNormalFloat = "NormalFloat",
				MiniClueBorder = "FloatBorder",
				MiniClueDescGroup = "DiagnosticFloatingWarn",
				MiniClueDescSingle = "NormalFloat",
				MiniClueNextKey = "DiagnosticFloatingHint",
				MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
				MiniClueSeparator = "DiagnosticFloatingInfo",
				MiniClueTitle = "FloatTitle",
				MiniCompletionActiveParameter = {
					underline = true
				},
				MiniCursorword = {
					bg = "#6e7681"
				},
				MiniCursorwordCurrent = {
					bg = "#6e7681"
				},
				MiniDepsChangeAdded = "diffAdded",
				MiniDepsChangeRemoved = "diffRemoved",
				MiniDepsHint = "DiagnosticHint",
				MiniDepsInfo = "DiagnosticInfo",
				MiniDepsMsgBreaking = "DiagnosticWarn",
				MiniDepsPlaceholder = "Comment",
				MiniDepsTitle = "Title",
				MiniDepsTitleError = {
					bg = "#f85149",
					fg = "#010409"
				},
				MiniDepsTitleSame = "Comment",
				MiniDepsTitleUpdate = {
					bg = "#3fb950",
					fg = "#010409"
				},
				MiniDiffOverAdd = "DiffAdd",
				MiniDiffOverChange = "DiffText",
				MiniDiffOverContext = "DiffChange",
				MiniDiffOverDelete = "DiffDelete",
				MiniDiffSignAdd = {
					fg = "#3fb950"
				},
				MiniDiffSignChange = {
					fg = "#d29922"
				},
				MiniDiffSignDelete = {
					fg = "#f85149"
				},
				MiniFilesBorder = "FloatBorder",
				MiniFilesBorderModified = "DiagnosticFloatingWarn",
				MiniFilesCursorLine = "CursorLine",
				MiniFilesDirectory = "Directory",
				MiniFilesFile = {
					fg = "#e1e4e8"
				},
				MiniFilesNormal = "NormalFloat",
				MiniFilesTitle = "FloatTitle",
				MiniFilesTitleFocused = {
					bg = "#161b22",
					bold = true,
					fg = "#2f81f7"
				},
				MiniHipatternsFixme = {
					bg = "#f85149",
					bold = true,
					fg = "#010409"
				},
				MiniHipatternsHack = {
					bg = "#d29922",
					bold = true,
					fg = "#010409"
				},
				MiniHipatternsNote = {
					bg = "#7ee787",
					bold = true,
					fg = "#010409"
				},
				MiniHipatternsTodo = {
					bg = "#2f81f7",
					bold = true,
					fg = "#010409"
				},
				MiniIconsAzure = {
					fg = "#2f81f7"
				},
				MiniIconsBlue = {
					fg = "#79b8ff"
				},
				MiniIconsCyan = {
					fg = "#7ee787"
				},
				MiniIconsGreen = {
					fg = "#7ee787"
				},
				MiniIconsGrey = {
					fg = "#e1e4e8"
				},
				MiniIconsOrange = {
					fg = "#ffab70"
				},
				MiniIconsPurple = {
					fg = "#b392f0"
				},
				MiniIconsRed = {
					fg = "#f97583"
				},
				MiniIconsYellow = {
					fg = "#d29922"
				},
				MiniIndentscopePrefix = {
					nocombine = true
				},
				MiniIndentscopeSymbol = {
					fg = "#79b8ff",
					nocombine = true
				},
				MiniJump = {
					bg = "#f85149",
					fg = "#f0f6fc"
				},
				MiniJump2dDim = "Comment",
				MiniJump2dSpot = {
					bold = true,
					fg = "#f85149",
					nocombine = true
				},
				MiniJump2dSpotAhead = {
					bg = "#161b22",
					fg = "#7ee787",
					nocombine = true
				},
				MiniJump2dSpotUnique = {
					bold = true,
					fg = "#ffab70",
					nocombine = true
				},
				MiniMapNormal = "NormalFloat",
				MiniMapSymbolCount = "Special",
				MiniMapSymbolLine = "Title",
				MiniMapSymbolView = "Delimiter",
				MiniNotifyBorder = "FloatBorder",
				MiniNotifyNormal = "NormalFloat",
				MiniNotifyTitle = "FloatTitle",
				MiniOperatorsExchangeFrom = "IncSearch",
				MiniPickBorder = "FloatBorder",
				MiniPickBorderBusy = "DiagnosticFloatingWarn",
				MiniPickBorderText = {
					bg = "#161b22",
					fg = "#7ee787"
				},
				MiniPickHeader = "DiagnosticFloatingHint",
				MiniPickIconDirectory = "Directory",
				MiniPickIconFile = "MiniPickNormal",
				MiniPickMatchCurrent = "CursorLine",
				MiniPickMatchMarked = "Visual",
				MiniPickMatchRanges = "DiagnosticFloatingHint",
				MiniPickNormal = "NormalFloat",
				MiniPickPreviewLine = "CursorLine",
				MiniPickPreviewRegion = "IncSearch",
				MiniPickPrompt = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				MiniStarterCurrent = {
					nocombine = true
				},
				MiniStarterFooter = {
					fg = "#d29922",
					italic = true
				},
				MiniStarterHeader = {
					fg = "#79b8ff"
				},
				MiniStarterInactive = {
					fg = "#8b949e",
					italic = true
				},
				MiniStarterItem = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				MiniStarterItemBullet = {
					fg = "#2f81f7"
				},
				MiniStarterItemPrefix = {
					fg = "#d29922"
				},
				MiniStarterQuery = {
					fg = "#2f81f7"
				},
				MiniStarterSection = {
					fg = "#79b8ff"
				},
				MiniStatuslineDevinfo = {
					bg = "#6e7681",
					fg = "#8b949e"
				},
				MiniStatuslineFileinfo = {
					bg = "#6e7681",
					fg = "#8b949e"
				},
				MiniStatuslineFilename = {
					bg = "#161b22",
					fg = "#8b949e"
				},
				MiniStatuslineInactive = {
					bg = "#161b22",
					fg = "#79b8ff"
				},
				MiniStatuslineModeCommand = {
					bg = "#d29922",
					bold = true,
					fg = "#010409"
				},
				MiniStatuslineModeInsert = {
					bg = "#7ee787",
					bold = true,
					fg = "#010409"
				},
				MiniStatuslineModeNormal = {
					bg = "#79b8ff",
					bold = true,
					fg = "#010409"
				},
				MiniStatuslineModeOther = {
					bg = "#7ee787",
					bold = true,
					fg = "#010409"
				},
				MiniStatuslineModeReplace = {
					bg = "#f97583",
					bold = true,
					fg = "#010409"
				},
				MiniStatuslineModeVisual = {
					bg = "#b392f0",
					bold = true,
					fg = "#010409"
				},
				MiniSurround = {
					bg = "#ffab70",
					fg = "#010409"
				},
				MiniTablineCurrent = {
					bg = "#6e7681",
					fg = "#e1e4e8"
				},
				MiniTablineFill = {
					bg = "#010409"
				},
				MiniTablineHidden = {
					bg = "#161b22",
					fg = "#7d8590"
				},
				MiniTablineModifiedCurrent = {
					bg = "#6e7681",
					fg = "#d29922"
				},
				MiniTablineModifiedHidden = {
					bg = "#161b22",
					fg = "#d29922"
				},
				MiniTablineModifiedVisible = {
					bg = "#161b22",
					fg = "#d29922"
				},
				MiniTablineTabpagesection = {
					bg = "#6e7681",
					fg = "NONE"
				},
				MiniTablineVisible = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				MiniTestEmphasis = {
					bold = true
				},
				MiniTestFail = {
					bold = true,
					fg = "#f97583"
				},
				MiniTestPass = {
					bold = true,
					fg = "#7ee787"
				},
				MiniTrailspace = {
					bg = "#f97583"
				},
				ModeMsg = {
					bold = true,
					fg = "#8b949e"
				},
				MoreMsg = {
					fg = "#79b8ff"
				},
				MsgArea = {
					fg = "#8b949e"
				},
				NavicIconsArray = "LspKindArray",
				NavicIconsBoolean = "LspKindBoolean",
				NavicIconsClass = "LspKindClass",
				NavicIconsColor = "LspKindColor",
				NavicIconsConstant = "LspKindConstant",
				NavicIconsConstructor = "LspKindConstructor",
				NavicIconsEnum = "LspKindEnum",
				NavicIconsEnumMember = "LspKindEnumMember",
				NavicIconsEvent = "LspKindEvent",
				NavicIconsField = "LspKindField",
				NavicIconsFile = "LspKindFile",
				NavicIconsFolder = "LspKindFolder",
				NavicIconsFunction = "LspKindFunction",
				NavicIconsInterface = "LspKindInterface",
				NavicIconsKey = "LspKindKey",
				NavicIconsKeyword = "LspKindKeyword",
				NavicIconsMethod = "LspKindMethod",
				NavicIconsModule = "LspKindModule",
				NavicIconsNamespace = "LspKindNamespace",
				NavicIconsNull = "LspKindNull",
				NavicIconsNumber = "LspKindNumber",
				NavicIconsObject = "LspKindObject",
				NavicIconsOperator = "LspKindOperator",
				NavicIconsPackage = "LspKindPackage",
				NavicIconsProperty = "LspKindProperty",
				NavicIconsReference = "LspKindReference",
				NavicIconsSnippet = "LspKindSnippet",
				NavicIconsString = "LspKindString",
				NavicIconsStruct = "LspKindStruct",
				NavicIconsText = "LspKindText",
				NavicIconsTypeParameter = "LspKindTypeParameter",
				NavicIconsUnit = "LspKindUnit",
				NavicIconsValue = "LspKindValue",
				NavicIconsVariable = "LspKindVariable",
				NavicSeparator = {
					bg = "NONE",
					fg = "#e1e4e8"
				},
				NavicText = {
					bg = "NONE",
					fg = "#e1e4e8"
				},
				NeoTreeDimText = {
					fg = "#6e7681"
				},
				NeoTreeFileName = {
					fg = "#8b949e"
				},
				NeoTreeGitModified = {
					fg = "#ffab70"
				},
				NeoTreeGitStaged = {
					fg = "#7ee787"
				},
				NeoTreeGitUntracked = {
					fg = "#b392f0"
				},
				NeoTreeNormal = {
					bg = "#1f2428",
					fg = "#8b949e"
				},
				NeoTreeNormalNC = {
					bg = "#1f2428",
					fg = "#8b949e"
				},
				NeoTreeTabActive = {
					bg = "#161b22",
					bold = true,
					fg = "#79b8ff"
				},
				NeoTreeTabInactive = {
					bg = "#1f2428",
					fg = "#6e7681"
				},
				NeoTreeTabSeparatorActive = {
					bg = "#161b22",
					fg = "#79b8ff"
				},
				NeoTreeTabSeparatorInactive = {
					bg = "#1f2428",
					fg = "#0d1117"
				},
				NeogitBranch = {
					fg = "#b392f0"
				},
				NeogitDiffAddHighlight = {
					bg = "#033a16",
					fg = "#3fb950"
				},
				NeogitDiffContextHighlight = {
					bg = "#21262d",
					fg = "#8b949e"
				},
				NeogitDiffDeleteHighlight = {
					bg = "#67060c",
					fg = "#f85149"
				},
				NeogitHunkHeader = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				NeogitHunkHeaderHighlight = {
					bg = "#6e7681",
					fg = "#79b8ff"
				},
				NeogitRemote = {
					fg = "#b392f0"
				},
				NeotestAdapterName = {
					bold = true,
					fg = "#b392f0"
				},
				NeotestBorder = {
					fg = "#79b8ff"
				},
				NeotestDir = {
					fg = "#79b8ff"
				},
				NeotestExpandMarker = {
					fg = "#8b949e"
				},
				NeotestFailed = {
					fg = "#f97583"
				},
				NeotestFile = {
					fg = "#7ee787"
				},
				NeotestFocused = {
					fg = "#d29922"
				},
				NeotestIndent = {
					fg = "#8b949e"
				},
				NeotestMarked = {
					fg = "#79b8ff"
				},
				NeotestNamespace = {
					fg = "#79b8ff"
				},
				NeotestPassed = {
					fg = "#7ee787"
				},
				NeotestRunning = {
					fg = "#d29922"
				},
				NeotestSkipped = {
					fg = "#79b8ff"
				},
				NeotestTarget = {
					fg = "#79b8ff"
				},
				NeotestTest = {
					fg = "#8b949e"
				},
				NeotestWinSelect = {
					fg = "#79b8ff"
				},
				NoiceCmdlineIconInput = {
					fg = "#d29922"
				},
				NoiceCmdlineIconLua = {
					fg = "#79b8ff"
				},
				NoiceCmdlinePopupBorderInput = {
					fg = "#d29922"
				},
				NoiceCmdlinePopupBorderLua = {
					fg = "#79b8ff"
				},
				NoiceCmdlinePopupTitleInput = {
					fg = "#d29922"
				},
				NoiceCmdlinePopupTitleLua = {
					fg = "#79b8ff"
				},
				NoiceCompletionItemKindArray = "LspKindArray",
				NoiceCompletionItemKindBoolean = "LspKindBoolean",
				NoiceCompletionItemKindClass = "LspKindClass",
				NoiceCompletionItemKindColor = "LspKindColor",
				NoiceCompletionItemKindConstant = "LspKindConstant",
				NoiceCompletionItemKindConstructor = "LspKindConstructor",
				NoiceCompletionItemKindDefault = {
					bg = "NONE",
					fg = "#8b949e"
				},
				NoiceCompletionItemKindEnum = "LspKindEnum",
				NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
				NoiceCompletionItemKindEvent = "LspKindEvent",
				NoiceCompletionItemKindField = "LspKindField",
				NoiceCompletionItemKindFile = "LspKindFile",
				NoiceCompletionItemKindFolder = "LspKindFolder",
				NoiceCompletionItemKindFunction = "LspKindFunction",
				NoiceCompletionItemKindInterface = "LspKindInterface",
				NoiceCompletionItemKindKey = "LspKindKey",
				NoiceCompletionItemKindKeyword = "LspKindKeyword",
				NoiceCompletionItemKindMethod = "LspKindMethod",
				NoiceCompletionItemKindModule = "LspKindModule",
				NoiceCompletionItemKindNamespace = "LspKindNamespace",
				NoiceCompletionItemKindNull = "LspKindNull",
				NoiceCompletionItemKindNumber = "LspKindNumber",
				NoiceCompletionItemKindObject = "LspKindObject",
				NoiceCompletionItemKindOperator = "LspKindOperator",
				NoiceCompletionItemKindPackage = "LspKindPackage",
				NoiceCompletionItemKindProperty = "LspKindProperty",
				NoiceCompletionItemKindReference = "LspKindReference",
				NoiceCompletionItemKindSnippet = "LspKindSnippet",
				NoiceCompletionItemKindString = "LspKindString",
				NoiceCompletionItemKindStruct = "LspKindStruct",
				NoiceCompletionItemKindText = "LspKindText",
				NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
				NoiceCompletionItemKindUnit = "LspKindUnit",
				NoiceCompletionItemKindValue = "LspKindValue",
				NoiceCompletionItemKindVariable = "LspKindVariable",
				NonText = {
					fg = "#484f58"
				},
				Normal = {
					bg = "#24292e",
					fg = "#e1e4e8"
				},
				NormalFloat = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				NormalNC = {
					bg = "#24292e",
					fg = "#e1e4e8"
				},
				NormalSB = {
					bg = "#1f2428",
					fg = "#8b949e"
				},
				NotifyBackground = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyDEBUGBody = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyDEBUGBorder = {
					bg = "#0d1117",
					fg = "#30363d"
				},
				NotifyDEBUGIcon = {
					fg = "#8b949e"
				},
				NotifyDEBUGTitle = {
					fg = "#8b949e"
				},
				NotifyERRORBody = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyERRORBorder = {
					bg = "#0d1117",
					fg = "#67060c"
				},
				NotifyERRORIcon = {
					fg = "#f85149"
				},
				NotifyERRORTitle = {
					fg = "#f85149"
				},
				NotifyINFOBody = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyINFOBorder = {
					bg = "#0d1117",
					fg = "#2f81f7"
				},
				NotifyINFOIcon = {
					fg = "#2f81f7"
				},
				NotifyINFOTitle = {
					fg = "#2f81f7"
				},
				NotifyTRACEBody = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyTRACEBorder = {
					bg = "#0d1117",
					fg = "#30363d"
				},
				NotifyTRACEIcon = {
					fg = "#b392f0"
				},
				NotifyTRACETitle = {
					fg = "#b392f0"
				},
				NotifyWARNBody = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				NotifyWARNBorder = {
					bg = "#0d1117",
					fg = "#484f58"
				},
				NotifyWARNIcon = {
					fg = "#d29922"
				},
				NotifyWARNTitle = {
					fg = "#d29922"
				},
				NvimTreeFolderIcon = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				NvimTreeGitDeleted = {
					fg = "#f85149"
				},
				NvimTreeGitDirty = {
					fg = "#d29922"
				},
				NvimTreeGitNew = {
					fg = "#3fb950"
				},
				NvimTreeImageFile = {
					fg = "#8b949e"
				},
				NvimTreeIndentMarker = {
					fg = "#6e7681"
				},
				NvimTreeNormal = {
					bg = "#1f2428",
					fg = "#8b949e"
				},
				NvimTreeNormalNC = {
					bg = "#1f2428",
					fg = "#8b949e"
				},
				NvimTreeOpenedFile = {
					bg = "#161b22"
				},
				NvimTreeRootFolder = {
					bold = true,
					fg = "#79b8ff"
				},
				NvimTreeSpecialFile = {
					fg = "#b392f0",
					underline = true
				},
				NvimTreeSymlink = {
					fg = "#79b8ff"
				},
				NvimTreeWinSeparator = {
					bg = "#1f2428",
					fg = "#30363d"
				},
				OctoDetailsLabel = {
					bold = true,
					fg = "#79b8ff"
				},
				OctoDetailsValue = "@variable.member",
				OctoDirty = {
					bold = true,
					fg = "#ffab70"
				},
				OctoIssueTitle = {
					bold = true,
					fg = "#b392f0"
				},
				OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
				OctoStateClosed = "DiagnosticVirtualTextError",
				OctoStateMerged = {
					bg = "#21262d",
					fg = "#b392f0"
				},
				OctoStateOpen = "DiagnosticVirtualTextHint",
				OctoStatePending = "DiagnosticVirtualTextWarn",
				OctoStatusColumn = {
					fg = "#79b8ff"
				},
				Operator = {
					fg = "#f97583"
				},
				Pmenu = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				PmenuMatch = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				PmenuMatchSel = {
					bg = "#21262d",
					fg = "#2f81f7"
				},
				PmenuSbar = {
					bg = "#21262d"
				},
				PmenuSel = {
					bg = "#21262d"
				},
				PmenuThumb = {
					bg = "#30363d"
				},
				PreProc = {
					fg = "#f97583"
				},
				Question = {
					fg = "#79b8ff"
				},
				QuickFixLine = {
					bg = "#388bfd",
					bold = true
				},
				RainbowDelimiterBlue = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterCyan = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterGreen = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterOrange = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterRed = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterViolet = {
					fg = "#e1e4e8"
				},
				RainbowDelimiterYellow = {
					fg = "#e1e4e8"
				},
				ReferencesCount = {
					fg = "#b392f0"
				},
				ReferencesIcon = {
					fg = "#79b8ff"
				},
				RenderMarkdownBullet = {
					fg = "#ffab70"
				},
				RenderMarkdownCode = {
					bg = "#161b22"
				},
				RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
				RenderMarkdownDash = {
					fg = "#ffab70"
				},
				RenderMarkdownH1Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH1Fg = {
					bold = true,
					fg = "#79b8ff"
				},
				RenderMarkdownH2Bg = {
					bg = "#21262d"
				},
				RenderMarkdownH2Fg = {
					bold = true,
					fg = "#d29922"
				},
				RenderMarkdownH3Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH3Fg = {
					bold = true,
					fg = "#7ee787"
				},
				RenderMarkdownH4Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH4Fg = {
					bold = true,
					fg = "#7ee787"
				},
				RenderMarkdownH5Bg = {
					bg = "#21262d"
				},
				RenderMarkdownH5Fg = {
					bold = true,
					fg = "#b392f0"
				},
				RenderMarkdownH6Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH6Fg = {
					bold = true,
					fg = "#b392f0"
				},
				RenderMarkdownH7Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH7Fg = {
					bold = true,
					fg = "#ffab70"
				},
				RenderMarkdownH8Bg = {
					bg = "#161b22"
				},
				RenderMarkdownH8Fg = {
					bold = true,
					fg = "#f97583"
				},
				RenderMarkdownTableHead = {
					fg = "#f97583"
				},
				RenderMarkdownTableRow = {
					fg = "#ffab70"
				},
				ScrollbarError = {
					bg = "NONE",
					fg = "#f85149"
				},
				ScrollbarErrorHandle = {
					bg = "#161b22",
					fg = "#f85149"
				},
				ScrollbarHandle = {
					bg = "#161b22",
					fg = "NONE"
				},
				ScrollbarHint = {
					bg = "NONE",
					fg = "#7ee787"
				},
				ScrollbarHintHandle = {
					bg = "#161b22",
					fg = "#7ee787"
				},
				ScrollbarInfo = {
					bg = "NONE",
					fg = "#2f81f7"
				},
				ScrollbarInfoHandle = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				ScrollbarMisc = {
					bg = "NONE",
					fg = "#b392f0"
				},
				ScrollbarMiscHandle = {
					bg = "#161b22",
					fg = "#b392f0"
				},
				ScrollbarSearch = {
					bg = "NONE",
					fg = "#9e6a03"
				},
				ScrollbarSearchHandle = {
					bg = "#161b22",
					fg = "#9e6a03"
				},
				ScrollbarWarn = {
					bg = "NONE",
					fg = "#d29922"
				},
				ScrollbarWarnHandle = {
					bg = "#161b22",
					fg = "#d29922"
				},
				Search = {
					bg = "#f2cc60",
					fg = "#0d1117"
				},
				SidekickDiffAdd = "DiffAdd",
				SidekickDiffContext = "DiffChange",
				SidekickDiffDelete = "DiffDelete",
				SidekickSignAdd = {
					fg = "#3fb950"
				},
				SidekickSignChange = {
					fg = "#d29922"
				},
				SidekickSignDelete = {
					fg = "#f85149"
				},
				SignColumn = {
					bg = "#24292e",
					fg = "#6e7681"
				},
				SignColumnSB = {
					bg = "#1f2428",
					fg = "#6e7681"
				},
				SnacksDashboardDesc = {
					fg = "#79b8ff"
				},
				SnacksDashboardDir = {
					fg = "#6e7681"
				},
				SnacksDashboardFooter = {
					fg = "#79b8ff"
				},
				SnacksDashboardHeader = {
					fg = "#79b8ff"
				},
				SnacksDashboardIcon = {
					fg = "#79b8ff"
				},
				SnacksDashboardKey = {
					fg = "#ffab70"
				},
				SnacksDashboardSpecial = {
					fg = "#b392f0"
				},
				SnacksFooterDesc = "SnacksProfilerBadgeInfo",
				SnacksFooterKey = "SnacksProfilerIconInfo",
				SnacksGhDiffHeader = {
					bg = "#161b22",
					fg = "#79b8ff"
				},
				SnacksGhLabel = {
					bold = true,
					fg = "#79b8ff"
				},
				SnacksIndent = {
					fg = "#6e7681",
					nocombine = true
				},
				SnacksIndent1 = {
					fg = "#79b8ff",
					nocombine = true
				},
				SnacksIndent2 = {
					fg = "#d29922",
					nocombine = true
				},
				SnacksIndent3 = {
					fg = "#7ee787",
					nocombine = true
				},
				SnacksIndent4 = {
					fg = "#7ee787",
					nocombine = true
				},
				SnacksIndent5 = {
					fg = "#b392f0",
					nocombine = true
				},
				SnacksIndent6 = {
					fg = "#b392f0",
					nocombine = true
				},
				SnacksIndent7 = {
					fg = "#ffab70",
					nocombine = true
				},
				SnacksIndent8 = {
					fg = "#f97583",
					nocombine = true
				},
				SnacksIndentScope = {
					fg = "#79b8ff",
					nocombine = true
				},
				SnacksInputBorder = {
					fg = "#d29922"
				},
				SnacksInputIcon = {
					fg = "#79b8ff"
				},
				SnacksInputTitle = {
					fg = "#d29922"
				},
				SnacksNotifierBorderDebug = {
					bg = "#0d1117",
					fg = "#30363d"
				},
				SnacksNotifierBorderError = {
					bg = "#0d1117",
					fg = "#67060c"
				},
				SnacksNotifierBorderInfo = {
					bg = "#0d1117",
					fg = "#2f81f7"
				},
				SnacksNotifierBorderTrace = {
					bg = "#0d1117",
					fg = "#30363d"
				},
				SnacksNotifierBorderWarn = {
					bg = "#0d1117",
					fg = "#484f58"
				},
				SnacksNotifierDebug = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				SnacksNotifierError = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				SnacksNotifierIconDebug = {
					fg = "#8b949e"
				},
				SnacksNotifierIconError = {
					fg = "#f85149"
				},
				SnacksNotifierIconInfo = {
					fg = "#2f81f7"
				},
				SnacksNotifierIconTrace = {
					fg = "#b392f0"
				},
				SnacksNotifierIconWarn = {
					fg = "#d29922"
				},
				SnacksNotifierInfo = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				SnacksNotifierTitleDebug = {
					fg = "#8b949e"
				},
				SnacksNotifierTitleError = {
					fg = "#f85149"
				},
				SnacksNotifierTitleInfo = {
					fg = "#2f81f7"
				},
				SnacksNotifierTitleTrace = {
					fg = "#b392f0"
				},
				SnacksNotifierTitleWarn = {
					fg = "#d29922"
				},
				SnacksNotifierTrace = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				SnacksNotifierWarn = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				SnacksPickerBoxTitle = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				SnacksPickerInputBorder = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				SnacksPickerInputTitle = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				SnacksPickerPickWin = {
					bg = "#1f6feb",
					bold = true,
					fg = "#e1e4e8"
				},
				SnacksPickerPickWinCurrent = {
					bg = "#f85149",
					bold = true,
					fg = "#e1e4e8"
				},
				SnacksPickerSelected = {
					fg = "#f85149"
				},
				SnacksPickerToggle = "SnacksProfilerBadgeInfo",
				SnacksProfilerBadgeInfo = {
					bg = "#161b22",
					fg = "#79b8ff"
				},
				SnacksProfilerBadgeTrace = {
					bg = "#161b22",
					fg = "#6e7681"
				},
				SnacksProfilerIconInfo = {
					bg = "#2f81f7",
					fg = "#79b8ff"
				},
				SnacksProfilerIconTrace = {
					bg = "#21262d",
					fg = "#6e7681"
				},
				SnacksZenIcon = {
					fg = "#b392f0"
				},
				Sneak = {
					bg = "#b392f0",
					fg = "#161b22"
				},
				SneakScope = {
					bg = "#388bfd"
				},
				Special = {
					fg = "#79b8ff"
				},
				SpecialKey = {
					fg = "#484f58"
				},
				SpellBad = {
					sp = "#f85149",
					undercurl = true
				},
				SpellCap = {
					sp = "#d29922",
					undercurl = true
				},
				SpellLocal = {
					sp = "#2f81f7",
					undercurl = true
				},
				SpellRare = {
					sp = "#7ee787",
					undercurl = true
				},
				Statement = {
					fg = "#f97583"
				},
				StatusLine = {
					bg = "#0d1117",
					fg = "#7d8590"
				},
				StatusLineNC = {
					bg = "#0d1117",
					fg = "#6e7681"
				},
				String = {
					fg = "#9ecbff"
				},
				Substitute = {
					bg = "#f97583",
					fg = "#010409"
				},
				SupermavenSuggestion = {
					fg = "#484f58"
				},
				TabLine = {
					bg = "#010409",
					fg = "#7d8590"
				},
				TabLineFill = {
					bg = "#010409"
				},
				TabLineSel = {
					bg = "#0d1117",
					fg = "#e1e4e8"
				},
				TargetWord = {
					fg = "#79b8ff"
				},
				TelescopeBorder = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				TelescopeNormal = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				TelescopePromptBorder = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				TelescopePromptTitle = {
					bg = "#161b22",
					fg = "#ffab70"
				},
				TelescopeResultsComment = {
					fg = "#6e7681"
				},
				Title = {
					bold = true,
					fg = "#79b8ff"
				},
				Todo = {
					bg = "#d29922",
					fg = "#0d1117"
				},
				TreesitterContext = {
					bg = "#21262d"
				},
				TroubleCount = {
					bg = "#6e7681",
					fg = "#b392f0"
				},
				TroubleNormal = {
					bg = "#161b22",
					fg = "#e1e4e8"
				},
				TroubleText = {
					fg = "#8b949e"
				},
				Type = {
					fg = "#b392f0"
				},
				Underlined = {
					fg = "#2f81f7",
					underline = true
				},
				VertSplit = {
					fg = "#30363d"
				},
				VimwikiHR = {
					bg = "NONE",
					fg = "#d29922"
				},
				VimwikiHeader1 = {
					bg = "NONE",
					bold = true,
					fg = "#79b8ff"
				},
				VimwikiHeader2 = {
					bg = "NONE",
					bold = true,
					fg = "#d29922"
				},
				VimwikiHeader3 = {
					bg = "NONE",
					bold = true,
					fg = "#7ee787"
				},
				VimwikiHeader4 = {
					bg = "NONE",
					bold = true,
					fg = "#7ee787"
				},
				VimwikiHeader5 = {
					bg = "NONE",
					bold = true,
					fg = "#b392f0"
				},
				VimwikiHeader6 = {
					bg = "NONE",
					bold = true,
					fg = "#b392f0"
				},
				VimwikiHeader7 = {
					bg = "NONE",
					bold = true,
					fg = "#ffab70"
				},
				VimwikiHeader8 = {
					bg = "NONE",
					bold = true,
					fg = "#f97583"
				},
				VimwikiHeaderChar = {
					bg = "NONE",
					fg = "#d29922"
				},
				VimwikiLink = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				VimwikiList = {
					bg = "NONE",
					fg = "#ffab70"
				},
				VimwikiMarkers = {
					bg = "NONE",
					fg = "#79b8ff"
				},
				VimwikiTag = {
					bg = "NONE",
					fg = "#7ee787"
				},
				Visual = {
					bg = "#253141"
				},
				VisualNOS = {
					bg = "#253141"
				},
				WarningMsg = {
					fg = "#d29922"
				},
				WhichKey = {
					fg = "#79b8ff"
				},
				WhichKeyDesc = {
					fg = "#b392f0"
				},
				WhichKeyGroup = {
					fg = "#79b8ff"
				},
				WhichKeyNormal = {
					bg = "#161b22"
				},
				WhichKeySeparator = {
					fg = "#8b949e"
				},
				WhichKeyValue = {
					fg = "#7d8590"
				},
				Whitespace = {
					fg = "#484f58"
				},
				WildMenu = {
					bg = "#388bfd"
				},
				WinBar = "StatusLine",
				WinBarNC = "StatusLineNC",
				WinSeparator = {
					fg = "#30363d"
				},
				YankyPut = "Search",
				YankyYanked = "IncSearch",
				debugBreakpoint = {
					bg = "#161b22",
					fg = "#2f81f7"
				},
				debugPC = {
					bg = "#161b22"
				},
				diffAdded = {
					bg = "#033a16",
					fg = "#7ee787"
				},
				diffChanged = {
					bg = "#5a1e02",
					fg = "#ffab70"
				},
				diffFile = {
					fg = "#79b8ff"
				},
				diffIndexLine = {
					fg = "#b392f0"
				},
				diffLine = {
					fg = "#8b949e"
				},
				diffNewFile = {
					bg = "#033a16",
					fg = "#7ee787"
				},
				diffOldFile = {
					bg = "#67060c",
					fg = "#ffa198"
				},
				diffRemoved = {
					bg = "#67060c",
					fg = "#ffa198"
				},
				dosIniLabel = "@property",
				healthError = {
					fg = "#f85149"
				},
				healthSuccess = {
					fg = "#7ee787"
				},
				healthWarning = {
					fg = "#d29922"
				},
				helpCommand = {
					bg = "#484f58",
					fg = "#79b8ff"
				},
				helpExample = {
					fg = "#8b949e"
				},
				htmlH1 = {
					bold = true,
					fg = "#b392f0"
				},
				htmlH2 = {
					bold = true,
					fg = "#79b8ff"
				},
				illuminatedCurWord = {
					bg = "#6e7681"
				},
				illuminatedWord = {
					bg = "#6e7681"
				},
	lCursor = {
		bg = "#2f81f7",
		fg = "#24292e"
	},
				qfFileName = {
					fg = "#79b8ff"
				},
				qfLineNr = {
					fg = "#7d8590"
				}
			}
			for group, spec in pairs(overrides) do
				hl[group] = spec
			end
		end
	})
}
