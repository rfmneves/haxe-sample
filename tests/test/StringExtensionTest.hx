package;

import massive.munit.Assert;
import org.hamcrest.MatchersBase;
import as3hx.Compat.Regex;

#if !flash
using StringExtension;
#end

/**
* String extension & regexp tests
*/
class StringExtensionTest extends MatchersBase
{
	
	public var baseString:String;

	public function new() 
	{
		super();
	}

	@Before
	public function setup():Void
	{
		baseString  = "Lorem ipsum";
	}
	
	@After
	public function tearDown():Void
	{
		baseString = null;
	}	

	@Test
	public function testConcat():Void
	{
		var suffix: String = " another";
		// Should fail in AS3 as String have concat
		assertThat(baseString.concat(suffix), equalTo(baseString), "Testing string extension concat");
	}
}