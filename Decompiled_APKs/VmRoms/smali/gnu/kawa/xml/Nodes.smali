.class public Lgnu/kawa/xml/Nodes;
.super Lgnu/mapping/Values;
.source "Nodes.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static final POS_SIZE:I = 0x5


# instance fields
.field count:I

.field curFragment:Lgnu/xml/XMLFilter;

.field curNode:Lgnu/xml/NodeTree;

.field inAttribute:Z

.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Values;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    return-void
.end method

.method private maybeEndNonTextNode()V
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 180
    :cond_0
    return-void
.end method

.method private maybeStartNonTextNode()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 171
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->startFragment()V

    .line 173
    :cond_1
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    .line 174
    return-void
.end method

.method public static root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .locals 3
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 342
    iget v1, p0, Lgnu/xml/NodeTree;->gapStart:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    const v2, 0xf112

    if-ne v1, v2, :cond_0

    .line 344
    const/16 v0, 0xa

    .line 347
    .local v0, root:I
    :goto_0
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1

    .line 346
    .end local v0           #root:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #root:I
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 140
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 141
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/Nodes;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 245
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 246
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->beginEntity(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 206
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 207
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 240
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 241
    return-void
.end method

.method public endElement()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 191
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 192
    return-void
.end method

.method public endEntity()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endEntity()V

    .line 252
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 253
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 3
    .parameter "seq"

    .prologue
    .line 38
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lez v1, :cond_0

    .line 40
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 41
    .local v0, oindex:I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 51
    .end local v0           #oindex:I
    :goto_0
    return v1

    .line 45
    :cond_0
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget-object v2, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 47
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 48
    .restart local v0       #oindex:I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 49
    goto :goto_0

    .line 51
    .end local v0           #oindex:I
    :cond_1
    invoke-super {p0, p1}, Lgnu/mapping/Values;->find(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method finishFragment()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 265
    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 266
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 280
    mul-int/lit8 v0, p1, 0x5

    .line 281
    .local v0, i:I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 282
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 283
    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 286
    :cond_2
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-eq v1, v2, :cond_3

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_3
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/xml/NodeTree;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public getPos(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 330
    mul-int/lit8 v0, p1, 0x5

    .line 331
    .local v0, i:I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 332
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 334
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-eq v1, v2, :cond_1

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v1

    return v1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 3
    .parameter "ipos"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->posToDataIndex(I)I

    move-result v0

    .line 304
    .local v0, index:I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 305
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 308
    :goto_0
    return-object v1

    .line 306
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-eq v1, v2, :cond_1

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/xml/NodeTree;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    goto :goto_0
.end method

.method public getSeq(I)Lgnu/lists/AbstractSequence;
    .locals 3
    .parameter "index"

    .prologue
    .line 316
    mul-int/lit8 v0, p1, 0x5

    .line 317
    .local v0, i:I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 318
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 319
    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 320
    :cond_1
    const/4 v1, 0x0

    .line 324
    .end local p0
    :goto_0
    return-object v1

    .line 322
    .restart local p0
    :cond_2
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-eq v1, v2, :cond_3

    .line 323
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_3
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object p0, v1, v2

    .end local p0
    check-cast p0, Lgnu/lists/AbstractSequence;

    move-object v1, p0

    goto :goto_0
.end method

.method handleNonNode()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "atomic value where node is required"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 294
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    if-lt p1, v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 297
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v0, p0

    goto :goto_0
.end method

.method maybeStartTextNode()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-node where node required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 196
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 197
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 199
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 234
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 235
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 184
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 185
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method startFragment()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 258
    new-instance v0, Lgnu/xml/XMLFilter;

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 259
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 260
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 133
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 134
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 157
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 158
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 159
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 163
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 164
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 148
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 149
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeBoolean(Z)V

    .line 128
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 1
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 219
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 220
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 221
    return-void
.end method

.method public writeComment([CII)V
    .locals 1
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 212
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 213
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeComment([CII)V

    .line 214
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 215
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeDouble(D)V

    .line 110
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 103
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeFloat(F)V

    .line 104
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 121
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeInt(I)V

    .line 122
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .parameter "v"

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 115
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeLong(J)V

    .line 116
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 56
    iget-object v3, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v3, :cond_1

    .line 58
    iget v3, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v3, :cond_2

    instance-of v3, p1, Lgnu/lists/SeqPosition;

    if-nez v3, :cond_0

    instance-of v3, p1, Lgnu/lists/TreeList;

    if-eqz v3, :cond_2

    .line 60
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 67
    :cond_1
    instance-of v3, p1, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_3

    .line 69
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v1, v0

    .line 70
    .local v1, seq:Lgnu/lists/SeqPosition;
    iget-object v3, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v4, v1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v3, v4}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 81
    .end local v1           #seq:Lgnu/lists/SeqPosition;
    :goto_0
    return-void

    .line 63
    :cond_2
    iget-object v3, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v3, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_3
    instance-of v3, p1, Lgnu/lists/TreeList;

    if-eqz v3, :cond_4

    .line 75
    move-object v0, p1

    check-cast v0, Lgnu/lists/TreeList;

    move-object v2, v0

    .line 76
    .local v2, tlist:Lgnu/lists/TreeList;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0

    .line 79
    .end local v2           #tlist:Lgnu/lists/TreeList;
    :cond_4
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 80
    iget-object v3, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v3, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 1
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 31
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    .line 32
    invoke-super {p0, p1, p2}, Lgnu/mapping/Values;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 33
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 1
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 226
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 227
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 228
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 229
    return-void
.end method
