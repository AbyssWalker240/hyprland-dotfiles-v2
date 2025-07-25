from rofi import Rofi
import math
r = Rofi(location=0)

rofi_args = ['']

command_history = []


# # <for_debugging>
# eq = r.text_entry("Eval", message=(
#             "[Esc] to go back\n\n"
#             "Command History:\n"
#             +"\n".join(f"Line {i}" for i in range(1, 6))
#         ), allow_blank=True, rofi_args=rofi_args)
# exit()
# # </for_debugging>

while True:
    try:
        eq = r.text_entry("Eval", message=(
            "[Esc] to go back\n\n"
            "Command History (newest first):\n"
            +("\n".join(command_history) if command_history else "[None]")
        ), rofi_args=rofi_args)
        print(eq)
        if eq is None:
            break
        print(eq)
        res = eval(eq, globals={"__builtins__": None, "math": math})
        command_history.insert(0, f"{eq} = {res}")
    except Exception as e:
        r.error(f"Error!\n\n{e}\n\nPress [RETURN] to continue...", rofi_args=rofi_args)
