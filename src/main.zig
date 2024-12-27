const std = @import("std");
const c = @cImport(@cInclude("ncurses.h"));

pub fn main() !void {
    _ = c.initscr();
    _ = c.cbreak();
    _ = c.noecho();
    _ = c.keypad(c.stdscr, true);

    _ = c.printw("Hello from ncurses!\n");
    _ = c.printw("Press any key to continue...\n");
    _ = c.refresh();

    _ = c.getch();
    _ = c.endwin();
}
