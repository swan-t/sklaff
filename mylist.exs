defmodule MyList do
  def span(b, b), do: [b]
  def span(a, b) do
    [a|span(a+1,b)]
  end

  def date_list(wn1, wn1, start_date), do: [start_date]
  def date_list(wn1, wn2, start_date) do
    [start_date|date_list(wn1+1,wn2, Date.add(start_date, 7))]
  end

  def puts_time(d, t), do: IO.puts "#{d} - #{t}"

  def puts_times([a], time_string), do: puts_time(a, time_string)

  def puts_times([a|b], time_string) do
    puts_time(a, time_string)
    puts_times(b, time_string)
  end

  def list_dates(wn1, wn2, start_date, time_string) do
    list = date_list(wn1, wn2, start_date)
    puts_times(list, time_string)
  end
end
