defmodule Govt do
  def schlorship(student,students) do
    with {:ok, string} <- Map.fetch(student, :name),
    true <- Enum.member?(students,string) do
      if student.att > 75 do 
        IO.puts "#{student.name}Qualified"
       else
         IO.puts "#{string} not qaualified due to less attendance #{student.att}"
      end
     else
      :error -> IO.puts "Invalid student name key not found"
      false -> IO.puts "#{student.name} not selected"
     end
  end 
end

