defmodule Larva.Cli do
  @moduledoc """
   Module to interface with the command line, parse args and process using OptionParser
  """

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    parsed = OptionParser.parse(argv, switches: [help: :boolean])

    case parsed do
      {[help: true], _, _}
      -> :help
      { _,path, _}
      -> path
    end
                                                                                   
  end

  def process(:help) do
    #add help instructions here
    IO.puts "Usage ./larva <file_path>||<dir_path>|| nil to process all files in current dir"
  end

  def process(path) do
    files_in_dir = files(path)
  end

  def files(path) when Kernel.length(path) == 0 do
    #return files and dir in current_dir

  end

  def files(path) do
    #return files from path
  end
end
