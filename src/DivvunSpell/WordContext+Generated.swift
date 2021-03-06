// automatically generated by the FlatBuffers compiler, do not modify

public struct IndexedWord: FlatBufferObject {

	static func validateVersion() { FlatBuffersVersion_1_11_1() }

	private var _accessor: Table
	public static func getRootAsIndexedWord(bb: ByteBuffer) -> IndexedWord { return IndexedWord(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

	private init(_ t: Table) { _accessor = t }
	public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

	public var index: UInt64 { let o = _accessor.offset(4); return o == 0 ? 0 : _accessor.readBuffer(of: UInt64.self, at: o) }
	public var value: String? { let o = _accessor.offset(6); return o == 0 ? nil : _accessor.string(at: o) }
	public var valueSegmentArray: [UInt8]? { return _accessor.getVector(at: 6) }
	public static func startIndexedWord(_ fbb: FlatBufferBuilder) -> UOffset { fbb.startTable(with: 2) }
	public static func add(index: UInt64, _ fbb: FlatBufferBuilder) { fbb.add(element: index, def: 0, at: 0) }
	public static func add(value: Offset<String>, _ fbb: FlatBufferBuilder) { fbb.add(offset: value, at: 1)  }
	public static func endIndexedWord(_ fbb: FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); return end }
	public static func createIndexedWord(_ fbb: FlatBufferBuilder,
		index: UInt64 = 0,
		offsetOfValue value: Offset<String> = Offset()) -> Offset<UOffset> {
		let __start = IndexedWord.startIndexedWord(fbb)
		IndexedWord.add(index: index, fbb)
		IndexedWord.add(value: value, fbb)
		return IndexedWord.endIndexedWord(fbb, start: __start)
	}
}

public struct WordContext: FlatBufferObject {

	static func validateVersion() { FlatBuffersVersion_1_11_1() }

	private var _accessor: Table
	public static func getRootAsWordContext(bb: ByteBuffer) -> WordContext { return WordContext(Table(bb: bb, position: Int32(bb.read(def: UOffset.self, position: bb.reader)) + Int32(bb.reader))) }

	private init(_ t: Table) { _accessor = t }
	public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

	public var current: DivvunSpell.IndexedWord? { let o = _accessor.offset(4); return o == 0 ? nil : DivvunSpell.IndexedWord(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
	public var firstBefore: DivvunSpell.IndexedWord? { let o = _accessor.offset(6); return o == 0 ? nil : DivvunSpell.IndexedWord(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
	public var secondBefore: DivvunSpell.IndexedWord? { let o = _accessor.offset(8); return o == 0 ? nil : DivvunSpell.IndexedWord(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
	public var firstAfter: DivvunSpell.IndexedWord? { let o = _accessor.offset(10); return o == 0 ? nil : DivvunSpell.IndexedWord(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
	public var secondAfter: DivvunSpell.IndexedWord? { let o = _accessor.offset(12); return o == 0 ? nil : DivvunSpell.IndexedWord(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
	public static func startWordContext(_ fbb: FlatBufferBuilder) -> UOffset { fbb.startTable(with: 5) }
	public static func add(current: Offset<UOffset>, _ fbb: FlatBufferBuilder) { fbb.add(offset: current, at: 0)  }
	public static func add(firstBefore: Offset<UOffset>, _ fbb: FlatBufferBuilder) { fbb.add(offset: firstBefore, at: 1)  }
	public static func add(secondBefore: Offset<UOffset>, _ fbb: FlatBufferBuilder) { fbb.add(offset: secondBefore, at: 2)  }
	public static func add(firstAfter: Offset<UOffset>, _ fbb: FlatBufferBuilder) { fbb.add(offset: firstAfter, at: 3)  }
	public static func add(secondAfter: Offset<UOffset>, _ fbb: FlatBufferBuilder) { fbb.add(offset: secondAfter, at: 4)  }
	public static func endWordContext(_ fbb: FlatBufferBuilder, start: UOffset) -> Offset<UOffset> { let end = Offset<UOffset>(offset: fbb.endTable(at: start)); fbb.require(table: end, fields: [4]); return end }
	public static func createWordContext(_ fbb: FlatBufferBuilder,
		offsetOfCurrent current: Offset<UOffset> = Offset(),
		offsetOfFirstBefore firstBefore: Offset<UOffset> = Offset(),
		offsetOfSecondBefore secondBefore: Offset<UOffset> = Offset(),
		offsetOfFirstAfter firstAfter: Offset<UOffset> = Offset(),
		offsetOfSecondAfter secondAfter: Offset<UOffset> = Offset()) -> Offset<UOffset> {
		let __start = WordContext.startWordContext(fbb)
		WordContext.add(current: current, fbb)
		WordContext.add(firstBefore: firstBefore, fbb)
		WordContext.add(secondBefore: secondBefore, fbb)
		WordContext.add(firstAfter: firstAfter, fbb)
		WordContext.add(secondAfter: secondAfter, fbb)
		return WordContext.endWordContext(fbb, start: __start)
	}
}
