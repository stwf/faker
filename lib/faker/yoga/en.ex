defmodule Faker.Yoga.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for Yoga studios, poses in English
  """

  @spec adjective() :: String.t()
  sampler(:adjective, [
    "Grateful",
    "Thankful",
    "Beholden",
    "Contented",
    "Gratified",
    "Serene",
    "Cheerful",
    "Satisfied",
    "Peaceful",
    "Placid",
    "Tranquil",
    "Sedate",
    "Comfortable",
    "Pastoral",
    "Bucolic",
    "Supple",
    "Rhythmic",
    "Elegant",
    "Graceful",
    "Polished",
    "Exquisite",
    "Airy",
    "Buoyant",
    "Ethereal",
    "Fluffy",
    "Silken",
    "Celestial",
    "Sublime"
  ])

  @spec noun() :: String.t()
  sampler(:noun, [
    "Turtle",
    "Warrior",
    "Yoga",
    "Works",
    "Motion",
    "Flow",
    "Quokka",
    "Bonobo",
    "Sloth",
    "Lotus",
    "Ostrich",
    "Mole",
    "Panda",
    "Elephant",
    "Bear",
    "Tapir",
    "Otter",
    "Crane",
    "Flamingo",
    "Wallaby",
    "Penguin",
    "Fox",
    "Oryx",
    "Goat",
    "Gnu",
    "Hare",
    "Rabbit",
    "Ibex",
    "Impala",
    "Jaguar",
    "Kangaroo",
    "Koala",
    "Lark",
    "Lemur",
    "Macaque",
    "Manatee",
    "Meerkat",
    "Marmot",
    "Ocelot",
    "Owl",
    "Partridge",
    "Peacock",
    "Pelican",
    "Pheasant",
    "Platypus",
    "Plover",
    "Puffin",
    "Puka",
    "Puma",
    "Serval",
    "Swan",
    "Lykoi",
    "Tern",
    "Tortoise",
    "Turkey",
    "Vervet",
    "Yak",
    "Zebra"
  ])

  @spec class_adj() :: String.t()
  sampler(:class_adj, [
    "Hot Power",
    "Hot",
    "Slow",
    "Soulful",
    "Slow Flow",
    "Ashtanga",
    "Alignment",
    "Vinyasa",
    "Power",
    "Pure",
    "Zen",
    "Pure Zen",
    "Yin",
    "Figure 4",
    "Ashtanga",
    "Ashtanga",
    "Prenatal",
    "Handstand",
    "Vigorous",
    "Gentle",
    "Restorative",
    "Intense",
    "",
    "Meditative",
  ])

  sampler(:class_type, [
    "Iyengar",
    "Yoga",
    "Flow",
    "Nidra",
    "Basics",
    "Barre",
    "Ashtanga",
    "Vinyasa",
    "Breath",
    "Motion",
    "Mindfulness",
    "Ashtanga",
    "Fundamentals",
    "Meditation",
    "",
    "Workshop",
  ])

  def studio, do: "#{adjective()} #{noun()}"
  def random_class, do: "#{random_adjectives()} #{class_type()}"
  def class, do: "#{class_adj()} #{class_type()}"


  defp random_adjectives,
    do: get_random_adjectives("", Faker.random_between(0, 2))

  defp get_random_adjectives(adj, 0), do: adj

  defp get_random_adjectives(adj, cnt),
    do: get_random_adjectives("#{adj} #{class_adj()}", cnt - 1)


end
