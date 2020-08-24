
Margin=40;
Top_Stack=72;
Bottom_Stack=(global.max_H);
Right_Stack=(global.max_W);

inv_window_x0 = global.max_W*0.5
inv_window_x1 = global.max_W - Margin
inv_window_y0 = Margin
inv_window_y1 = global.max_H-Margin

item_cell_spr = spr_item_cell
cell_highlight_spr = spr_item_cell_highlight
item_cell_delta = sprite_get_width(item_cell_spr) + 16
item_grid_x = inv_window_x0 + item_cell_delta
item_grid_y = global.max_H*0.50 + Margin
inv_label_x = global.max_W-Margin //"Inventory" text
inv_label_y = item_grid_y - 32
item_grid_w = 4
item_grid_h = 4
pointer_i = 0
pointer_j = 0