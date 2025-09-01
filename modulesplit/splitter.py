import os

def chunk_module(input_file, output_dir, chunk_size=900*1024):
    """
    Splits a large Lua module into smaller parts.
    
    :param input_file: Path to the big Lua file.
    :param output_dir: Directory where chunks will be saved.
    :param chunk_size: Max size per chunk in bytes (default 900KB).
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    with open(input_file, "r", encoding="utf-8") as f:
        data = f.read()

    total_size = len(data.encode("utf-8"))
    print(f"Total file size: {total_size/1024:.2f} KB")

    # Split into chunks
    start = 0
    part = 1
    while start < len(data):
        end = start + chunk_size
        chunk = data[start:end]
        
        output_file = os.path.join(output_dir, f"module_part_{part}.lua")
        with open(output_file, "w", encoding="utf-8") as out:
            out.write(chunk)
        
        print(f"Wrote {output_file} ({len(chunk.encode('utf-8'))/1024:.2f} KB)")
        start = end
        part += 1

    print("✅ Finished splitting module.")

# Example usage
if __name__ == "__main__":
    chunk_module("hallucinate.luau", "chunks", chunk_size=900*1024)
