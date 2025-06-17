local components = {

  health = {

    Class = {

      maxhealth = 100,
      currenthealth = 100,
    },

    Functions = {

      SetMaxHealth = function(self, amount)
        self.maxhealth = amount
        self.currenthealth = amount
      end,
      
      GetPercent = function(self)
        return self.currenthealth / self.maxhealth
      end,
    },
  },

  inspectable = {

    Class = {

      description = "no description set!"
    },

    Functions = {

      SetDescription = function(self, desc)
        self.description = desc
      end
    },
  },
}

return components
