import Scenes


  /*
     This class is responsible for the background Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class MassShotBackgroundLayer : Layer {
      let background = MassShotBackground()

      let bullethole = GunShot()
      
      init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"MassShotBackground")

          // We insert our RenderableEntities in the constructor
          insert(entity:background, at:.back)
          insert(entity:bullethole, at:.inFrontOf(object:background))
      }
  }
