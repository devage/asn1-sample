defmodule Asn1Example do
  require :MyModule

  def encode_my_sequence(id, name) do
    my_sequence = {:MySequence, id,  name}

    case :MyModule.encode(:MySequence, my_sequence) do
      {:ok, encoded_data} -> IO.inspect(:binary.bin_to_list(encoded_data))
      {:error, reason} -> IO.puts(reason)
    end
  end
end
