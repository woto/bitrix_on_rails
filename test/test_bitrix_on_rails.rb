# -*- coding: utf-8 -*-
require 'helper'

class TestBitrixOnRails < Test::Unit::TestCase
  should "автоматичеки создает модели свойств для всех инфоблоков при инициализации" do
    assert_equal 2, BitrixOnRails.init.count, '2 инфоблока в нашей схеме'
    # assert defined?(IblockElementPropM7), 'должен определиться автоматически'
    puts IblockElementPropM7
  end

  should "Брать свойства для блока и кешировать их" do

    Iblock.get_properties(3)

    # А этот запрос уже кеширован
    Iblock.get_properties(3)
  end
end


# При инициализации создаются модели для всех инфоблоков
# При использовании IblockElement можно работать со свойствами
# Пожно подключать Инфоблок через has_infoblock к модели
