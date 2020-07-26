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
    "Hot",
    "Ashnatga",
    "Vinyasa",
    "Vigorous",
    "Gentle",
    "Restorative",
    "Intense",
    "",
    "Meditative",
  ])

  sampler(:class_type, [
    "Flow",
    "Vinyasa",
    "Motion",
    "Minfulness",
    "Meditation",
    "",
    "Workshop",
  ])

  def studio, do: "#{adjective()} #{noun()}"
  def class, do: "#{class_adj()} #{class_type()}"

end
