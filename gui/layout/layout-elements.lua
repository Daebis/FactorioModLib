require "util"

if not (LSlib and LSlib.gui and LSlib.gui.layout) then require "layout" else
  require "layout-creation"

  function LSlib.gui.layout.addFrame(layoutTable, parentPath, frameName, frameDirection, frameOptions)
    frameOptions = frameOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "frame"                            ,
      name                   = frameName                          ,
      direction              = frameDirection                     ,

      -- optional options specified in table (or nil)
      caption                = frameOptions.caption               ,
      style                  = frameOptions.style                 ,
      ignored_by_interaction = frameOptions.ignored_by_interaction,
    })
  end

  function LSlib.gui.layout.addFlow(layoutTable, parentPath, flowName, flowDirection, flowOptions)
    flowOptions = flowOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "flow"                            ,
      name                   = flowName                          ,
      direction              = flowDirection                     ,

      -- optional options specified in table (or nil)
      style                  = flowOptions.style                 ,
      ignored_by_interaction = flowOptions.ignored_by_interaction,
    })
  end

  function LSlib.gui.layout.addScrollPane(layoutTable, parentPath, scrollPaneName, scrollPaneOptions)
    scrollPaneOptions = scrollPaneOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                     = "scroll-pane"                             ,
      name                     = scrollPaneName                            ,

      -- optional options specified in table (or nil)
      style                    = scrollPaneOptions.style                   ,

      horizontal_scroll_policy = scrollPaneOptions.horizontal_scroll_policy,
      vertical_scroll_policy   = scrollPaneOptions.vertical_scroll_policy  ,

      ignored_by_interaction   = scrollPaneOptions.ignored_by_interaction  ,
    })
  end

  function LSlib.gui.layout.addButton(layoutTable, parentPath, buttonName, buttonOptions)
    buttonOptions = buttonOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "button"                            ,
      name                   = buttonName                          ,

      -- optional options specified in table (or nil)
      caption                = buttonOptions.caption               ,
      tooltip                = buttonOptions.tooltip               ,
      style                  = buttonOptions.style                 ,

      enabled                = buttonOptions.enabled               ,
      ignored_by_interaction = buttonOptions.ignored_by_interaction,
      mouse_button_filter    = buttonOptions.mouse_button_filter   ,
    })
  end

  function LSlib.gui.layout.addSpriteButton(layoutTable, parentPath, spriteButtonName, spriteButtonOptions)
    spriteButtonOptions = spriteButtonOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                           = "sprite-button"                                   ,
      name                           = spriteButtonName                                  ,

      -- optional options specified in table (or nil)
      caption                        = spriteButtonOptions.caption                       ,
      tooltip                        = spriteButtonOptions.tooltip                       ,
      style                          = spriteButtonOptions.style                         ,

      sprite                         = spriteButtonOptions.sprite                        ,
      hovered_sprite                 = spriteButtonOptions.hovered_sprite                ,
      clicked_sprite                 = spriteButtonOptions.clicked_sprite                ,

      number                         = spriteButtonOptions.number                        ,
      show_percent_for_small_numbers = spriteButtonOptions.show_percent_for_small_numbers,

      enabled                        = spriteButtonOptions.enabled                       ,
      ignored_by_interaction         = spriteButtonOptions.ignored_by_interaction        ,
      mouse_button_filter            = spriteButtonOptions.mouse_button_filter           ,
    })
  end

  function LSlib.gui.layout.addLabel(layoutTable, parentPath, labelName, labelOptions)
    labelOptions = labelOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "label"                            ,
      name                   = labelName                          ,

      -- optional options specified in table (or nil)
      caption                = labelOptions.caption               ,
      tooltip                = labelOptions.tooltip               ,
      style                  = labelOptions.style                 ,

      enabled                = labelOptions.enabled               ,
      ignored_by_interaction = labelOptions.ignored_by_interaction,
    })
  end

  function LSlib.gui.layout.addTextfield(layoutTable, parentPath, textfieldName, textfieldOptions)
    textfieldOptions = textfieldOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "textfield"                            ,
      name                   = textfieldName                          ,

      -- optional options specified in table (or nil)
      text                   = textfieldOptions.text                  ,
      tooltip                = textfieldOptions.tooltip               ,
      style                  = textfieldOptions.style                 ,

      enabled                = textfieldOptions.enabled               ,
      ignored_by_interaction = textfieldOptions.ignored_by_interaction,
    })
  end

  function LSlib.gui.layout.addListbox(layoutTable, parentPath, listboxName, listboxOptions)
    listboxOptions = listboxOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                   = "list-box"                           ,
      name                   = listboxName                          ,
      -- optional options specified in table (or nil)
      items                  = listboxOptions.items                 ,
      selected_index         = listboxOptions.selected_index        ,
      style                  = listboxOptions.style                 ,

      enabled                = listboxOptions.enabled               ,
      ignored_by_interaction = listboxOptions.ignored_by_interaction,
    })
  end

  function LSlib.gui.layout.addTable(layoutTable, parentPath, tableName, numberOfColumns, tableOptions)
    listboxOptions = listboxOptions or {}

    return LSlib.gui.layout.addElement(layoutTable, parentPath, {
      type                               = "table"                                        ,
      name                               = tableName                                      ,
      column_count                       = numberOfColumns                                ,

      -- optional options specified in table (or nil)
      draw_vertical_lines                = tableOptions.draw_vertical_lines               ,
      draw_horizontal_lines              = tableOptions.draw_horizontal_lines             ,
      draw_horizontal_line_after_headers = tableOptions.draw_horizontal_line_after_headers,
      style                              = tableOptions.style                             ,

      enabled                            = tableOptions.enabled                           ,
      ignored_by_interaction             = tableOptions.ignored_by_interaction            ,
    })
  end

end
