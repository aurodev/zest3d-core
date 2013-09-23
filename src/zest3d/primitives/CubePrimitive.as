package zest3d.primitives 
{
	import zest3d.datatypes.Transform;
	import zest3d.resources.VertexFormat;
	import zest3d.scenegraph.TriMesh;
	import zest3d.shaders.VisualEffectInstance;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class CubePrimitive extends Primitive 
	{
		
		public function CubePrimitive( effect:VisualEffectInstance, hasTexCoords:Boolean = true, hasNormals: Boolean = true, xExtent:int = 1, yExtent:int = 1, zExtent:Number = 1, bothSides:Boolean = false, isStatic:Boolean = true, inside:Boolean = false, transform:Transform = null ) 
		{
			this.effect = effect;
			this.bothSides = bothSides;
			var vFormat:VertexFormat = this.generateVertexFormat( hasTexCoords, hasNormals );
			var primitive:TriMesh = new StandardMesh( vFormat, isStatic, inside, transform ).box( xExtent, yExtent, zExtent );
			super( vFormat, primitive.vertexBuffer, primitive.indexBuffer );
		}
		
	}

}