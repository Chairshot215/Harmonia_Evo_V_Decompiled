.class public Lgnu/lists/TreeList;
.super Lgnu/lists/AbstractSequence;
.source "TreeList.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static final BEGIN_ATTRIBUTE_LONG:I = 0xf109

.field public static final BEGIN_ATTRIBUTE_LONG_SIZE:I = 0x5

.field protected static final BEGIN_DOCUMENT:I = 0xf110

.field protected static final BEGIN_ELEMENT_LONG:I = 0xf108

.field protected static final BEGIN_ELEMENT_SHORT:I = 0xa000

.field protected static final BEGIN_ELEMENT_SHORT_INDEX_MAX:I = 0xfff

.field public static final BEGIN_ENTITY:I = 0xf112

.field public static final BEGIN_ENTITY_SIZE:I = 0x5

.field static final BOOL_FALSE:C = '\uf100'

.field static final BOOL_TRUE:C = '\uf101'

.field static final BYTE_PREFIX:I = 0xf000

.field static final CDATA_SECTION:I = 0xf115

.field static final CHAR_FOLLOWS:I = 0xf106

.field static final COMMENT:I = 0xf117

.field protected static final DOCUMENT_URI:I = 0xf118

.field static final DOUBLE_FOLLOWS:I = 0xf105

.field static final END_ATTRIBUTE:I = 0xf10a

.field public static final END_ATTRIBUTE_SIZE:I = 0x1

.field protected static final END_DOCUMENT:I = 0xf111

.field protected static final END_ELEMENT_LONG:I = 0xf10c

.field protected static final END_ELEMENT_SHORT:I = 0xf10b

.field protected static final END_ENTITY:I = 0xf113

.field static final FLOAT_FOLLOWS:I = 0xf104

.field public static final INT_FOLLOWS:I = 0xf102

.field static final INT_SHORT_ZERO:I = 0xc000

.field static final JOINER:I = 0xf116

.field static final LONG_FOLLOWS:I = 0xf103

.field public static final MAX_CHAR_SHORT:I = 0x9fff

.field static final MAX_INT_SHORT:I = 0x1fff

.field static final MIN_INT_SHORT:I = -0x1000

.field static final OBJECT_REF_FOLLOWS:C = '\uf10d'

.field static final OBJECT_REF_SHORT:I = 0xe000

.field static final OBJECT_REF_SHORT_INDEX_MAX:I = 0xfff

.field protected static final POSITION_PAIR_FOLLOWS:C = '\uf10f'

.field static final POSITION_REF_FOLLOWS:C = '\uf10e'

.field protected static final PROCESSING_INSTRUCTION:I = 0xf114


# instance fields
.field public attrStart:I

.field currentParent:I

.field public data:[C

.field public docStart:I

.field public gapEnd:I

.field public gapStart:I

.field public objects:[Ljava/lang/Object;

.field public oindex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 40
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 42
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 59
    const/4 v0, 0x0

    iget-object v1, p1, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-direct {p0, p1, v0, v1}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;II)V
    .locals 0
    .parameter "list"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 53
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 54
    invoke-virtual {p1, p2, p3, p0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 55
    return-void
.end method

.method private copyToList(II)Ljava/lang/Object;
    .locals 1
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 1646
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    return-object v0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 0
    .parameter "c"

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->write(I)V

    .line 684
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 2
    .parameter "csq"

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    const-string p1, "null"

    .line 830
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 2
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    const-string p1, "null"

    .line 837
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 838
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_1
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
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
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, -0x1

    .line 535
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz v1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 538
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 539
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 540
    .local v0, p:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf112

    aput-char v2, v1, v0

    .line 541
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 542
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 543
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 544
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 545
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf113

    aput-char v3, v1, v2

    goto :goto_0

    .line 542
    :cond_1
    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    sub-int/2addr v2, v0

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 65
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 66
    iput v2, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 67
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_0

    .line 69
    const/16 v0, 0xc8

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 70
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 73
    iput v2, p0, Lgnu/lists/TreeList;->oindex:I

    .line 74
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 75
    return-void
.end method

.method public compare(II)I
    .locals 3
    .parameter "ipos1"
    .parameter "ipos2"

    .prologue
    .line 2271
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2272
    .local v0, i1:I
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2273
    .local v1, i2:I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 2303
    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 2304
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 400
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 402
    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, index:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10e

    aput-char v3, v1, v2

    .line 404
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 405
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 406
    return-void
.end method

.method public consumeIRange(IILgnu/lists/Consumer;)I
    .locals 18
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "out"

    .prologue
    .line 1090
    move/from16 v10, p1

    .line 1091
    .local v10, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v15, v0

    move/from16 v0, p1

    move v1, v15

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v15, v0

    move/from16 v0, p2

    move v1, v15

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v15, v0

    move v9, v15

    .line 1096
    .end local p1
    .local v9, limit:I
    :goto_0
    if-lt v10, v9, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v15, v0

    if-ne v10, v15, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v15, v0

    move/from16 v0, p2

    move v1, v15

    if-le v0, v1, :cond_10

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v10, v0

    .line 1101
    move/from16 v9, p2

    .line 1107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #pos:I
    .local v11, pos:I
    aget-char v4, v15, v10

    .line 1109
    .local v4, datum:C
    const v15, 0x9fff

    if-gt v4, v15, :cond_3

    .line 1111
    const/4 v15, 0x1

    sub-int v13, v11, v15

    .line 1112
    .local v13, start:I
    move v8, v9

    .line 1115
    .local v8, lim:I
    :goto_1
    if-lt v11, v8, :cond_2

    move v10, v11

    .line 1124
    .end local v11           #pos:I
    .restart local v10       #pos:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    sub-int v16, v10, v13

    move-object/from16 v0, p3

    move-object v1, v15

    move v2, v13

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0

    .end local v4           #datum:C
    .end local v8           #lim:I
    .end local v9           #limit:I
    .end local v13           #start:I
    .restart local p1
    :cond_1
    move/from16 v9, p2

    .line 1091
    goto :goto_0

    .line 1117
    .end local v10           #pos:I
    .end local p1
    .restart local v4       #datum:C
    .restart local v8       #lim:I
    .restart local v9       #limit:I
    .restart local v11       #pos:I
    .restart local v13       #start:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #pos:I
    .restart local v10       #pos:I
    aget-char v4, v15, v11

    .line 1118
    const v15, 0x9fff

    if-le v4, v15, :cond_12

    .line 1120
    add-int/lit8 v10, v10, -0x1

    .line 1121
    goto :goto_2

    .line 1127
    .end local v8           #lim:I
    .end local v10           #pos:I
    .end local v13           #start:I
    .restart local v11       #pos:I
    :cond_3
    const v15, 0xe000

    if-lt v4, v15, :cond_4

    const v15, 0xefff

    if-gt v4, v15, :cond_4

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    const v16, 0xe000

    sub-int v16, v4, v16

    aget-object v15, v15, v16

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    move v10, v11

    .line 1131
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto :goto_0

    .line 1133
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :cond_4
    const v15, 0xa000

    if-lt v4, v15, :cond_5

    const v15, 0xafff

    if-gt v4, v15, :cond_5

    .line 1136
    const v15, 0xa000

    sub-int v5, v4, v15

    .line 1137
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    aget-object v15, v15, v5

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1138
    add-int/lit8 v10, v11, 0x2

    .line 1139
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1148
    .end local v5           #index:I
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :cond_5
    const v15, 0xb000

    if-lt v4, v15, :cond_6

    const v15, 0xdfff

    if-gt v4, v15, :cond_6

    .line 1151
    const v15, 0xc000

    sub-int v15, v4, v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    move v10, v11

    .line 1152
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1154
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 1283
    :pswitch_0
    new-instance v15, Ljava/lang/Error;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unknown code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1157
    :pswitch_1
    invoke-interface/range {p3 .. p3}, Lgnu/lists/Consumer;->startDocument()V

    .line 1158
    add-int/lit8 v10, v11, 0x4

    .line 1159
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1161
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_2
    invoke-interface/range {p3 .. p3}, Lgnu/lists/Consumer;->endDocument()V

    move v10, v11

    .line 1162
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1164
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_3
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/TreeList;

    move v15, v0

    if-eqz v15, :cond_7

    .line 1165
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/TreeList;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object v15, v15, v16

    invoke-virtual {v4, v15}, Lgnu/lists/TreeList;->beginEntity(Ljava/lang/Object;)V

    .line 1166
    :cond_7
    add-int/lit8 v10, v11, 0x4

    .line 1167
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1169
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :pswitch_4
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/TreeList;

    move v15, v0

    if-eqz v15, :cond_11

    .line 1170
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/TreeList;

    move-object v4, v0

    .end local v4           #datum:C
    invoke-virtual {v4}, Lgnu/lists/TreeList;->endEntity()V

    move v10, v11

    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1173
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :pswitch_5
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/TreeList;

    move v15, v0

    if-eqz v15, :cond_8

    .line 1174
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/TreeList;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object v15, v15, v16

    invoke-virtual {v4, v15}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 1175
    :cond_8
    add-int/lit8 v10, v11, 0x2

    .line 1176
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1179
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :pswitch_6
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1180
    .local v7, length:I
    add-int/lit8 v10, v11, 0x2

    .line 1181
    .end local v11           #pos:I
    .restart local v10       #pos:I
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/XConsumer;

    move v15, v0

    if-eqz v15, :cond_9

    .line 1182
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/XConsumer;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    invoke-interface {v4, v15, v10, v7}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1183
    :cond_9
    add-int/2addr v10, v7

    .line 1185
    goto/16 :goto_0

    .line 1188
    .end local v7           #length:I
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :pswitch_7
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1189
    .restart local v7       #length:I
    add-int/lit8 v10, v11, 0x2

    .line 1190
    .end local v11           #pos:I
    .restart local v10       #pos:I
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/XConsumer;

    move v15, v0

    if-eqz v15, :cond_a

    .line 1191
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/XConsumer;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    invoke-interface {v4, v15, v10, v7}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 1194
    :goto_3
    add-int/2addr v10, v7

    .line 1196
    goto/16 :goto_0

    .line 1193
    .restart local v4       #datum:C
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    move-object/from16 v0, p3

    move-object v1, v15

    move v2, v10

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_3

    .line 1199
    .end local v7           #length:I
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object v14, v15, v16

    check-cast v14, Ljava/lang/String;

    .line 1200
    .local v14, target:Ljava/lang/String;
    add-int/lit8 v15, v11, 0x2

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1201
    .restart local v7       #length:I
    add-int/lit8 v10, v11, 0x4

    .line 1202
    .end local v11           #pos:I
    .restart local v10       #pos:I
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/XConsumer;

    move v15, v0

    if-eqz v15, :cond_b

    .line 1203
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/XConsumer;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    invoke-interface {v4, v14, v15, v10, v7}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1205
    :cond_b
    add-int/2addr v10, v7

    .line 1207
    goto/16 :goto_0

    .line 1210
    .end local v7           #length:I
    .end local v10           #pos:I
    .end local v14           #target:Ljava/lang/String;
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :pswitch_9
    const v15, 0xf100

    if-eq v4, v15, :cond_c

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    move v10, v11

    .line 1211
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1210
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :cond_c
    const/4 v15, 0x0

    goto :goto_4

    .line 1213
    :pswitch_a
    const-string v15, ""

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    move v10, v11

    .line 1214
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1216
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    add-int/lit8 v16, v4, 0x1

    const v17, 0xf106

    sub-int v16, v16, v17

    move-object/from16 v0, p3

    move-object v1, v15

    move v2, v11

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lgnu/lists/Consumer;->write([CII)V

    .line 1217
    add-int/lit8 v10, v11, 0x1

    .line 1218
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1221
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object v12, v15, v16

    check-cast v12, Lgnu/lists/AbstractSequence;

    .line 1222
    .local v12, seq:Lgnu/lists/AbstractSequence;
    add-int/lit8 v15, v11, 0x2

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    .line 1223
    .local v6, ipos:I
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/PositionConsumer;

    move v15, v0

    if-eqz v15, :cond_d

    .line 1224
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/PositionConsumer;

    move-object v4, v0

    .end local v4           #datum:C
    invoke-interface {v4, v12, v6}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 1227
    :goto_5
    add-int/lit8 v10, v11, 0x4

    .line 1229
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1226
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :cond_d
    invoke-virtual {v12, v6}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v15

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_5

    .line 1231
    .end local v6           #ipos:I
    .end local v12           #seq:Lgnu/lists/AbstractSequence;
    :pswitch_d
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/lists/PositionConsumer;

    move v15, v0

    if-eqz v15, :cond_e

    .line 1233
    move-object/from16 v0, p3

    check-cast v0, Lgnu/lists/PositionConsumer;

    move-object v4, v0

    .end local v4           #datum:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object p1, v15, v16

    check-cast p1, Lgnu/lists/SeqPosition;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    .line 1234
    add-int/lit8 v10, v11, 0x2

    .line 1235
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1239
    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :cond_e
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    aget-object v15, v15, v16

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1240
    add-int/lit8 v10, v11, 0x2

    .line 1241
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1243
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_f
    add-int/lit8 v10, v11, 0x1

    .line 1244
    .end local v11           #pos:I
    .restart local v10       #pos:I
    invoke-interface/range {p3 .. p3}, Lgnu/lists/Consumer;->endElement()V

    goto/16 :goto_0

    .line 1247
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_10
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1248
    .restart local v5       #index:I
    if-ltz v5, :cond_f

    const/4 v15, 0x1

    sub-int v15, v11, v15

    :goto_6
    add-int/2addr v5, v15

    .line 1249
    add-int/lit8 v10, v11, 0x2

    .line 1250
    .end local v11           #pos:I
    .restart local v10       #pos:I
    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    aget-object v15, v15, v5

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1248
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v15, v0

    array-length v15, v15

    goto :goto_6

    .line 1254
    .end local v5           #index:I
    :pswitch_11
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1255
    .restart local v5       #index:I
    invoke-interface/range {p3 .. p3}, Lgnu/lists/Consumer;->endElement()V

    .line 1256
    add-int/lit8 v10, v11, 0x6

    .line 1257
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1259
    .end local v5           #index:I
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_12
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1260
    .restart local v5       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object v15, v0

    aget-object v15, v15, v5

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 v10, v11, 0x4

    .line 1262
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1264
    .end local v5           #index:I
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_13
    invoke-interface/range {p3 .. p3}, Lgnu/lists/Consumer;->endAttribute()V

    move v10, v11

    .line 1265
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1267
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_14
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1268
    add-int/lit8 v10, v11, 0x2

    .line 1269
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1271
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_15
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 1272
    add-int/lit8 v10, v11, 0x2

    .line 1273
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1275
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_16
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v15

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-interface {v0, v1, v2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 1276
    add-int/lit8 v10, v11, 0x4

    .line 1277
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1279
    .end local v10           #pos:I
    .restart local v11       #pos:I
    :pswitch_17
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v15

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-interface {v0, v1, v2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 1280
    add-int/lit8 v10, v11, 0x4

    .line 1281
    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .line 1286
    .end local v4           #datum:C
    :cond_10
    return v10

    .end local v10           #pos:I
    .restart local v4       #datum:C
    .restart local v11       #pos:I
    :cond_11
    move v10, v11

    .end local v11           #pos:I
    .restart local v10       #pos:I
    goto/16 :goto_0

    .restart local v8       #lim:I
    .restart local v13       #start:I
    :cond_12
    move v11, v10

    .end local v10           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_1

    .line 1154
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_9
        :pswitch_9
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_b
        :pswitch_0
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 3
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 1072
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->hasNext(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    const/4 v2, 0x0

    .line 1080
    :goto_0
    return v2

    .line 1074
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1075
    .local v1, start:I
    const v2, 0x7fffffff

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    .line 1076
    .local v0, end:I
    if-ne v0, v1, :cond_1

    .line 1077
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 1078
    :cond_1
    if-ltz v0, :cond_2

    .line 1079
    invoke-virtual {p0, v1, v0, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1080
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 2
    .parameter "startPos"
    .parameter "endPos"
    .parameter "out"

    .prologue
    .line 1085
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1086
    return-void
.end method

.method public createPos(IZ)I
    .locals 1
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lgnu/lists/TreeList;->createRelativePos(IIZ)I

    move-result v0

    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 3
    .parameter "istart"
    .parameter "offset"
    .parameter "isAfter"

    .prologue
    .line 1914
    if-eqz p3, :cond_2

    .line 1916
    if-nez p2, :cond_1

    .line 1918
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    move v1, p1

    .line 1936
    :goto_0
    return v1

    .line 1920
    :cond_0
    if-nez p1, :cond_1

    .line 1921
    const/4 v1, 0x1

    goto :goto_0

    .line 1923
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 1925
    :cond_2
    if-gez p2, :cond_3

    .line 1926
    const-string v1, "backwards createRelativePos"

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1927
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1928
    .local v0, pos:I
    :cond_4
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_5

    .line 1930
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 1931
    if-gez v0, :cond_4

    .line 1932
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1934
    :cond_5
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, v1, :cond_6

    .line 1935
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1936
    :cond_6
    if-eqz p3, :cond_7

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    shl-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public documentUriOfPos(I)Ljava/lang/Object;
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 2249
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2250
    .local v0, index:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move-object v2, v4

    .line 2260
    :goto_0
    return-object v2

    .line 2252
    :cond_0
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v2, v2, v0

    const v3, 0xf110

    if-ne v2, v3, :cond_2

    .line 2254
    add-int/lit8 v1, v0, 0x5

    .line 2255
    .local v1, next:I
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v1, v2, :cond_1

    .line 2256
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2257
    :cond_1
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v2, v2, v1

    const v3, 0xf118

    if-ne v2, v3, :cond_2

    .line 2258
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0

    .end local v1           #next:I
    :cond_2
    move-object v2, v4

    .line 2260
    goto :goto_0
.end method

.method public dump()V
    .locals 2

    .prologue
    .line 2323
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2325
    .local v0, out:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;)V

    .line 2326
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2327
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;II)V

    .line 2334
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;II)V
    .locals 12
    .parameter "out"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 2338
    const/4 v8, 0x0

    .line 2340
    .local v8, toskip:I
    const/4 v7, 0x1

    .line 2341
    .local v7, skipFollowingWords:Z
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_11

    .line 2344
    iget v9, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v1, v9, :cond_0

    iget v9, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v1, v9, :cond_2

    .line 2347
    :cond_0
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v9, v1

    .line 2348
    .local v0, ch:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-short v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_1

    .line 2351
    const v9, 0x9fff

    if-gt v0, v9, :cond_5

    .line 2353
    const/16 v9, 0x20

    if-lt v0, v9, :cond_3

    const/16 v9, 0x7f

    if-ge v0, v9, :cond_3

    .line 2354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2541
    if-eqz v7, :cond_2

    if-lez v8, :cond_2

    .line 2543
    add-int/2addr v1, v8

    .line 2544
    const/4 v8, 0x0

    .line 2341
    .end local v0           #ch:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2355
    .restart local v0       #ch:I
    :cond_3
    const/16 v9, 0xa

    if-ne v0, v9, :cond_4

    .line 2356
    const-string v9, "=\'\\n\'"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2358
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'\\u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2360
    :cond_5
    const v9, 0xe000

    if-lt v0, v9, :cond_6

    const v9, 0xefff

    if-gt v0, v9, :cond_6

    .line 2363
    const v9, 0xe000

    sub-int/2addr v0, v9

    .line 2364
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v5, v9, v0

    .line 2365
    .local v5, obj:Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=Object#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2369
    .end local v5           #obj:Ljava/lang/Object;
    :cond_6
    const v9, 0xa000

    if-lt v0, v9, :cond_7

    const v9, 0xafff

    if-gt v0, v9, :cond_7

    .line 2372
    const v9, 0xa000

    sub-int/2addr v0, v9

    .line 2373
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v10, v1, 0x1

    aget-char v9, v9, v10

    add-int v2, v9, v1

    .line 2374
    .local v2, j:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=BEGIN_ELEMENT_SHORT end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " index#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 2377
    .end local v2           #j:I
    :cond_7
    const v9, 0xb000

    if-lt v0, v9, :cond_8

    const v9, 0xdfff

    if-gt v0, v9, :cond_8

    .line 2380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "= INT_SHORT:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0xc000

    sub-int v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2384
    :cond_8
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2463
    :pswitch_1
    const-string v9, "= false"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2387
    :pswitch_2
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2388
    .restart local v2       #j:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=INT_FOLLOWS value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    const/4 v8, 0x2

    .line 2390
    goto/16 :goto_1

    .line 2392
    .end local v2           #j:I
    :pswitch_3
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    .line 2393
    .local v3, l:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=LONG_FOLLOWS value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    const/4 v8, 0x4

    .line 2395
    goto/16 :goto_1

    .line 2397
    .end local v3           #l:J
    :pswitch_4
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2398
    .restart local v2       #j:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=FLOAT_FOLLOWS value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2400
    const/4 v8, 0x2

    .line 2401
    goto/16 :goto_1

    .line 2403
    .end local v2           #j:I
    :pswitch_5
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    .line 2404
    .restart local v3       #l:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=DOUBLE_FOLLOWS value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    const/4 v8, 0x4

    .line 2407
    goto/16 :goto_1

    .line 2409
    .end local v3           #l:J
    :pswitch_6
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2410
    .restart local v2       #j:I
    if-gez v2, :cond_9

    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_2
    add-int/2addr v2, v9

    .line 2411
    const-string v9, "=BEGIN_DOCUMENT end:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    const-string v9, " parent:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2415
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2416
    const/4 v8, 0x4

    .line 2417
    goto/16 :goto_1

    :cond_9
    move v9, v1

    .line 2410
    goto :goto_2

    .line 2419
    .end local v2           #j:I
    :pswitch_7
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2420
    .restart local v2       #j:I
    const-string v9, "=BEGIN_ENTITY base:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    const-string v9, " parent:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2424
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2425
    const/4 v8, 0x4

    .line 2426
    goto/16 :goto_1

    .line 2428
    .end local v2           #j:I
    :pswitch_8
    const-string v9, "=END_ENTITY"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2431
    :pswitch_9
    const-string v9, "=DOCUMENT_URI: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2433
    .restart local v2       #j:I
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2434
    const/4 v8, 0x2

    .line 2435
    goto/16 :goto_1

    .line 2437
    .end local v2           #j:I
    :pswitch_a
    const-string v9, "=COMMENT: \'"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2439
    .restart local v2       #j:I
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v10, v1, 0x3

    invoke-virtual {p1, v9, v10, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2440
    const/16 v9, 0x27

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2441
    add-int/lit8 v8, v2, 0x2

    .line 2442
    goto/16 :goto_1

    .line 2444
    .end local v2           #j:I
    :pswitch_b
    const-string v9, "=CDATA: \'"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2446
    .restart local v2       #j:I
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v10, v1, 0x3

    invoke-virtual {p1, v9, v10, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2447
    const/16 v9, 0x27

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2448
    add-int/lit8 v8, v2, 0x2

    .line 2449
    goto/16 :goto_1

    .line 2451
    .end local v2           #j:I
    :pswitch_c
    const-string v9, "=PROCESSING_INSTRUCTION: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2453
    .restart local v2       #j:I
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2454
    const-string v9, " \'"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2456
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v10, v1, 0x5

    invoke-virtual {p1, v9, v10, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2457
    const/16 v9, 0x27

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2458
    add-int/lit8 v8, v2, 0x4

    .line 2459
    goto/16 :goto_1

    .line 2461
    .end local v2           #j:I
    :pswitch_d
    const-string v9, "=END_DOCUMENT"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2464
    :pswitch_e
    const-string v9, "= true"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2465
    :pswitch_f
    const-string v9, "= joiner"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2467
    :pswitch_10
    const-string v9, "=CHAR_FOLLOWS"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2470
    :pswitch_11
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 2472
    :pswitch_12
    const-string v9, "=END_ELEMENT_SHORT begin:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v10, v1, 0x1

    aget-char v9, v9, v10

    sub-int v2, v1, v9

    .line 2474
    .restart local v2       #j:I
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v9, v9, v2

    const v10, 0xa000

    sub-int v2, v9, v10

    .line 2476
    const-string v9, " -> #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2478
    const-string v9, "=<"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2480
    const/16 v9, 0x3e

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2481
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2483
    .end local v2           #j:I
    :pswitch_13
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2484
    .restart local v2       #j:I
    if-gez v2, :cond_a

    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_3
    add-int/2addr v2, v9

    .line 2485
    const-string v9, "=BEGIN_ELEMENT_LONG end:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2487
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2488
    const-string v9, " -> #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2490
    if-ltz v2, :cond_b

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v10, v10

    if-ge v9, v10, :cond_b

    .line 2491
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    :goto_4
    const/4 v8, 0x2

    .line 2495
    goto/16 :goto_1

    :cond_a
    move v9, v1

    .line 2484
    goto :goto_3

    .line 2493
    :cond_b
    const-string v9, "=<out-of-bounds>"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 2497
    .end local v2           #j:I
    :pswitch_14
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2498
    .restart local v2       #j:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=END_ELEMENT_LONG name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2501
    if-gez v2, :cond_c

    add-int v9, v1, v2

    move v2, v9

    .line 2502
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " begin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    add-int/lit8 v9, v1, 0x5

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2504
    if-gez v2, :cond_d

    add-int v9, v1, v2

    move v2, v9

    .line 2505
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const/4 v8, 0x6

    .line 2507
    goto/16 :goto_1

    .line 2509
    .end local v2           #j:I
    :pswitch_15
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2510
    .restart local v2       #j:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=BEGIN_ATTRIBUTE name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2513
    if-gez v2, :cond_e

    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_5
    add-int/2addr v2, v9

    .line 2514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    const/4 v8, 0x4

    .line 2516
    goto/16 :goto_1

    :cond_e
    move v9, v1

    .line 2513
    goto :goto_5

    .line 2517
    .end local v2           #j:I
    :pswitch_16
    const-string v9, "=END_ATTRIBUTE"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2519
    :pswitch_17
    const-string v9, "=POSITION_PAIR_FOLLOWS seq:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .restart local v2       #j:I
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    const/16 v9, 0x3d

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2523
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v9, v2

    .line 2524
    .local v6, seq:Ljava/lang/Object;
    if-nez v6, :cond_f

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    const/16 v9, 0x40

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2526
    if-nez v6, :cond_10

    const-string v9, "null"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :goto_7
    const-string v9, " ipos:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2531
    const/4 v8, 0x4

    goto/16 :goto_1

    .line 2524
    :cond_f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 2527
    :cond_10
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 2548
    .end local v0           #ch:I
    .end local v2           #j:I
    .end local v6           #seq:Ljava/lang/Object;
    :cond_11
    return-void

    .line 2384
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_17
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public endAttribute()V
    .locals 4

    .prologue
    const v3, 0xf10a

    .line 670
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-gtz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_1

    .line 673
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endAttribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 676
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v2, p0, Lgnu/lists/TreeList;->attrStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 678
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public endDocument()V
    .locals 5

    .prologue
    const v4, 0xf111

    .line 517
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_0

    iget v1, p0, Lgnu/lists/TreeList;->docStart:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v1, v1, v2

    const v2, 0xf110

    if-eq v1, v2, :cond_1

    .line 519
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unexpected endDocument"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 522
    iget v1, p0, Lgnu/lists/TreeList;->docStart:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v3, p0, Lgnu/lists/TreeList;->docStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 523
    const/4 v1, 0x0

    iput v1, p0, Lgnu/lists/TreeList;->docStart:I

    .line 524
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v4, v1, v2

    .line 525
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 526
    .local v0, parent:I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_2

    move v1, v0

    :goto_0
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 527
    return-void

    .line 526
    :cond_2
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public endElement()V
    .locals 9

    .prologue
    const/high16 v8, 0x1

    const v7, 0xf10c

    .line 591
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v5, v5, v6

    if-eq v5, v7, :cond_0

    .line 592
    new-instance v5, Ljava/lang/Error;

    const-string v6, "unexpected endElement"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 593
    :cond_0
    iget v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 594
    .local v1, index:I
    iget v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 595
    .local v0, begin:I
    iget v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 596
    .local v3, parent:I
    iput v3, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 597
    iget v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v5, v5, 0x7

    iput v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 598
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int v2, v5, v0

    .line 599
    .local v2, offset:I
    sub-int v4, v0, v3

    .line 600
    .local v4, parentOffset:I
    const/16 v5, 0xfff

    if-ge v1, v5, :cond_1

    if-ge v2, v8, :cond_1

    if-ge v4, v8, :cond_1

    .line 603
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    const v6, 0xa000

    or-int/2addr v6, v1

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 604
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v0, 0x1

    int-to-char v7, v2

    aput-char v7, v5, v6

    .line 605
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v0, 0x2

    int-to-char v7, v4

    aput-char v7, v5, v6

    .line 606
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    const v7, 0xf10b

    aput-char v7, v5, v6

    .line 607
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v6, v6, 0x1

    int-to-char v7, v2

    aput-char v7, v5, v6

    .line 608
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 622
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    const v6, 0xf108

    aput-char v6, v5, v0

    .line 613
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 614
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v7, v5, v6

    .line 615
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 616
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v5, v5, 0x3

    neg-int v6, v2

    invoke-virtual {p0, v5, v6}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 617
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ge v3, v5, :cond_2

    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-gt v0, v5, :cond_3

    .line 618
    :cond_2
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v3, v5

    .line 619
    :cond_3
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p0, v5, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 620
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v5, v5, 0x7

    iput v5, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public endEntity()V
    .locals 5

    .prologue
    const v4, 0xf113

    .line 551
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v1, v1, v2

    if-eq v1, v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v1, v1, v2

    const v2, 0xf112

    if-eq v1, v2, :cond_2

    .line 555
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unexpected endEntity"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_2
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 558
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v4, v1, v2

    .line 559
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 560
    .local v0, parent:I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_3

    move v1, v0

    :goto_1
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public ensureSpace(I)V
    .locals 9
    .parameter "needed"

    .prologue
    const/4 v8, 0x0

    .line 328
    iget v6, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v7, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int v1, v6, v7

    .line 329
    .local v1, avail:I
    if-le p1, v1, :cond_3

    .line 331
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v6

    .line 332
    .local v4, oldSize:I
    sub-int v6, v4, v1

    add-int v2, v6, p1

    .line 333
    .local v2, neededSize:I
    mul-int/lit8 v3, v4, 0x2

    .line 334
    .local v3, newSize:I
    if-ge v3, v2, :cond_0

    .line 335
    move v3, v2

    .line 336
    :cond_0
    new-array v5, v3, [C

    .line 337
    .local v5, tmp:[C
    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lez v6, :cond_1

    .line 338
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    iget v7, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    iget v6, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int v0, v4, v6

    .line 340
    .local v0, afterGap:I
    if-lez v0, :cond_2

    .line 341
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    iget v7, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int v8, v3, v0

    invoke-static {v6, v7, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_2
    sub-int v6, v3, v0

    iput v6, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 343
    iput-object v5, p0, Lgnu/lists/TreeList;->data:[C

    .line 345
    .end local v0           #afterGap:I
    .end local v2           #neededSize:I
    .end local v3           #newSize:I
    .end local v4           #oldSize:I
    .end local v5           #tmp:[C
    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 2
    .parameter "arg1"

    .prologue
    .line 370
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 372
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    iget v1, p0, Lgnu/lists/TreeList;->oindex:I

    aput-object p1, v0, v1

    .line 373
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->oindex:I

    return v0
.end method

.method public firstAttributePos(I)I
    .locals 2
    .parameter "ipos"

    .prologue
    .line 1039
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1040
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public firstChildPos(I)I
    .locals 2
    .parameter "ipos"

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    .line 901
    .local v0, index:I
    if-gez v0, :cond_0

    .line 902
    const/4 v1, 0x0

    .line 903
    :goto_0
    return v1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, i:I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1063
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    .line 1064
    if-nez v0, :cond_0

    .line 1065
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1067
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeCount(I)I
    .locals 4
    .parameter "parent"

    .prologue
    .line 1020
    const/4 v1, 0x0

    .line 1021
    .local v1, n:I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v0

    .line 1022
    .local v0, attr:I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 1024
    add-int/lit8 v1, v1, 0x1

    .line 1023
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    goto :goto_0

    .line 1025
    :cond_0
    return v1
.end method

.method protected getIndexDifference(II)I
    .locals 5
    .parameter "ipos1"
    .parameter "ipos0"

    .prologue
    .line 2278
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2279
    .local v1, i0:I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v2

    .line 2280
    .local v2, i1:I
    const/4 v3, 0x0

    .line 2281
    .local v3, negate:Z
    if-le v1, v2, :cond_0

    .line 2283
    const/4 v3, 0x1

    .line 2284
    move v0, v2

    .local v0, i:I
    move v2, v1

    move v1, v0

    .line 2286
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .line 2287
    .restart local v0       #i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2289
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 2290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    if-eqz v3, :cond_2

    neg-int v4, v0

    :goto_1
    return v4

    :cond_2
    move v4, v0

    goto :goto_1
.end method

.method protected final getIntN(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 379
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getLongN(I)J
    .locals 8
    .parameter "index"

    .prologue
    const-wide/32 v6, 0xffff

    .line 385
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 386
    .local v0, data:[C
    aget-char v1, v0, p1

    int-to-long v1, v1

    and-long/2addr v1, v6

    const/16 v3, 0x30

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x1

    aget-char v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x2

    aget-char v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x3

    aget-char v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getNextKind(I)I
    .locals 1
    .parameter "ipos"

    .prologue
    .line 1533
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getNextKindI(I)I

    move-result v0

    return v0
.end method

.method public getNextKindI(I)I
    .locals 7
    .parameter "index"

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0x20

    const/16 v4, 0x16

    const/4 v3, 0x0

    .line 1538
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne p1, v1, :cond_0

    move v1, v3

    .line 1594
    :goto_0
    return v1

    .line 1540
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v1, p1

    .line 1541
    .local v0, datum:C
    const v1, 0x9fff

    if-gt v0, v1, :cond_1

    .line 1542
    const/16 v1, 0x1d

    goto :goto_0

    .line 1543
    :cond_1
    const v1, 0xe000

    if-lt v0, v1, :cond_2

    const v1, 0xefff

    if-gt v0, v1, :cond_2

    move v1, v5

    .line 1545
    goto :goto_0

    .line 1546
    :cond_2
    const v1, 0xa000

    if-lt v0, v1, :cond_3

    const v1, 0xafff

    if-gt v0, v1, :cond_3

    move v1, v6

    .line 1548
    goto :goto_0

    .line 1549
    :cond_3
    const v1, 0xff00

    and-int/2addr v1, v0

    const v2, 0xf000

    if-ne v1, v2, :cond_4

    .line 1550
    const/16 v1, 0x1c

    goto :goto_0

    .line 1551
    :cond_4
    const v1, 0xb000

    if-lt v0, v1, :cond_5

    const v1, 0xdfff

    if-gt v0, v1, :cond_5

    move v1, v4

    .line 1553
    goto :goto_0

    .line 1554
    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v5

    .line 1594
    goto :goto_0

    .line 1558
    :pswitch_1
    const/16 v1, 0x1b

    goto :goto_0

    :pswitch_2
    move v1, v4

    .line 1560
    goto :goto_0

    .line 1562
    :pswitch_3
    const/16 v1, 0x18

    goto :goto_0

    .line 1564
    :pswitch_4
    const/16 v1, 0x19

    goto :goto_0

    .line 1566
    :pswitch_5
    const/16 v1, 0x1a

    goto :goto_0

    .line 1569
    :pswitch_6
    const/16 v1, 0x22

    goto :goto_0

    .line 1571
    :pswitch_7
    add-int/lit8 v1, p1, 0x5

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v1

    goto :goto_0

    :pswitch_8
    move v1, v6

    .line 1573
    goto :goto_0

    :pswitch_9
    move v1, v3

    .line 1579
    goto :goto_0

    .line 1581
    :pswitch_a
    const/16 v1, 0x23

    goto :goto_0

    .line 1583
    :pswitch_b
    const/16 v1, 0x1f

    goto :goto_0

    .line 1585
    :pswitch_c
    const/16 v1, 0x24

    goto :goto_0

    .line 1587
    :pswitch_d
    const/16 v1, 0x25

    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 2
    .parameter "ipos"

    .prologue
    .line 1632
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1633
    .local v0, type:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 6
    .parameter "ipos"

    .prologue
    const v5, 0xa000

    const/4 v4, 0x0

    .line 1601
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1605
    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v1, v3, :cond_0

    move-object v3, v4

    .line 1627
    :goto_1
    return-object v3

    .line 1607
    :cond_0
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v3, v1

    .line 1608
    .local v0, datum:C
    const v3, 0xf112

    if-eq v0, v3, :cond_1

    .line 1612
    if-lt v0, v5, :cond_2

    const v3, 0xafff

    if-gt v0, v3, :cond_2

    .line 1614
    sub-int v1, v0, v5

    .line 1627
    :goto_2
    if-gez v1, :cond_7

    move-object v3, v4

    goto :goto_1

    .line 1610
    :cond_1
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 1615
    :cond_2
    const v3, 0xf108

    if-ne v0, v3, :cond_4

    .line 1617
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1618
    .local v2, j:I
    if-gez v2, :cond_3

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    :goto_3
    add-int/2addr v2, v3

    .line 1619
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1620
    goto :goto_2

    :cond_3
    move v3, v1

    .line 1618
    goto :goto_3

    .line 1621
    .end local v2           #j:I
    :cond_4
    const v3, 0xf109

    if-ne v0, v3, :cond_5

    .line 1622
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    goto :goto_2

    .line 1623
    :cond_5
    const v3, 0xf114

    if-ne v0, v3, :cond_6

    .line 1624
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    goto :goto_2

    :cond_6
    move-object v3, v4

    .line 1626
    goto :goto_1

    .line 1627
    :cond_7
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    goto :goto_1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 6
    .parameter "ipos"

    .prologue
    const v5, 0xe000

    .line 1667
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v2

    .line 1668
    .local v2, index:I
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne v2, v4, :cond_0

    .line 1669
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 1739
    :goto_0
    return-object v4

    .line 1670
    :cond_0
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v4, v2

    .line 1671
    .local v0, datum:C
    const v4, 0x9fff

    if-gt v0, v4, :cond_1

    .line 1672
    invoke-static {v0}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1673
    :cond_1
    if-lt v0, v5, :cond_2

    const v4, 0xefff

    if-gt v0, v4, :cond_2

    .line 1675
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    goto :goto_0

    .line 1676
    :cond_2
    const v4, 0xa000

    if-lt v0, v4, :cond_3

    const v4, 0xafff

    if-gt v0, v4, :cond_3

    .line 1678
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v4, v4, v5

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v2, v4}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1683
    :cond_3
    const v4, 0xb000

    if-lt v0, v4, :cond_4

    const v4, 0xdfff

    if-gt v0, v4, :cond_4

    .line 1685
    const v4, 0xc000

    sub-int v4, v0, v4

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1686
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 1741
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPosNext, code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1690
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1691
    .local v1, end_offset:I
    if-gez v1, :cond_5

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    :goto_1
    add-int/2addr v1, v4

    .line 1692
    add-int/lit8 v1, v1, 0x1

    .line 1699
    invoke-direct {p0, v2, v1}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_5
    move v4, v2

    .line 1691
    goto :goto_1

    .line 1703
    .end local v1           #end_offset:I
    :pswitch_2
    const v4, 0xf100

    if-eq v0, v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1705
    :pswitch_3
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1707
    :pswitch_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1709
    :pswitch_5
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1711
    :pswitch_6
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1713
    :pswitch_7
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, v2, 0x1

    aget-char v4, v4, v5

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 1716
    :pswitch_8
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1717
    .restart local v1       #end_offset:I
    if-gez v1, :cond_7

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    :goto_3
    add-int/2addr v1, v4

    .line 1718
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v2, v4}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    move v4, v2

    .line 1717
    goto :goto_3

    .line 1722
    .end local v1           #end_offset:I
    :pswitch_9
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1723
    .restart local v1       #end_offset:I
    if-gez v1, :cond_8

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    :goto_4
    add-int/2addr v1, v4

    .line 1724
    add-int/lit8 v4, v1, 0x7

    invoke-direct {p0, v2, v4}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    move v4, v2

    .line 1723
    goto :goto_4

    .line 1730
    .end local v1           #end_offset:I
    :pswitch_a
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1733
    :pswitch_b
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    aget-object v4, v4, v5

    goto/16 :goto_0

    .line 1735
    :pswitch_c
    const-string v4, ""

    goto/16 :goto_0

    .line 1737
    :pswitch_d
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    aget-object v3, v4, v5

    check-cast v3, Lgnu/lists/AbstractSequence;

    .line 1738
    .local v3, seq:Lgnu/lists/AbstractSequence;
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1739
    invoke-virtual {v3, p1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v4

    goto/16 :goto_0

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getPosNextInt(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    .line 1652
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1653
    .local v1, index:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1655
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v2, v1

    .line 1656
    .local v0, datum:C
    const v2, 0xb000

    if-lt v0, v2, :cond_0

    const v2, 0xdfff

    if-gt v0, v2, :cond_0

    .line 1658
    const v2, 0xc000

    sub-int v2, v0, v2

    .line 1662
    .end local v0           #datum:C
    .end local p0
    :goto_0
    return v2

    .line 1659
    .restart local v0       #datum:C
    .restart local p0
    :cond_0
    const v2, 0xf102

    if-ne v0, v2, :cond_1

    .line 1660
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    goto :goto_0

    .line 1662
    .end local v0           #datum:C
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 1638
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1639
    const/4 v0, 0x3

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 1641
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public gotoAttributesStart(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 1045
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v1, :cond_0

    .line 1046
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 1047
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne p1, v1, :cond_1

    move v1, v3

    .line 1055
    :goto_0
    return v1

    .line 1049
    :cond_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v1, p1

    .line 1050
    .local v0, datum:C
    const v1, 0xa000

    if-lt v0, v1, :cond_2

    const v1, 0xafff

    if-le v0, v1, :cond_3

    :cond_2
    const v1, 0xf108

    if-ne v0, v1, :cond_4

    .line 1053
    :cond_3
    add-int/lit8 v1, p1, 0x3

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1055
    goto :goto_0
.end method

.method public gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 1030
    iget v1, p1, Lgnu/lists/TreePosition;->ipos:I

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1031
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1032
    const/4 v1, 0x0

    .line 1034
    :goto_0
    return v1

    .line 1033
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, p0, v1}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 1034
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final gotoChildrenStart(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 908
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne p1, v2, :cond_0

    move v2, v3

    .line 936
    :goto_0
    return v2

    .line 910
    :cond_0
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v2, p1

    .line 911
    .local v0, datum:C
    const v2, 0xa000

    if-lt v0, v2, :cond_1

    const v2, 0xafff

    if-le v0, v2, :cond_2

    :cond_1
    const v2, 0xf108

    if-ne v0, v2, :cond_4

    .line 914
    :cond_2
    add-int/lit8 p1, p1, 0x3

    .line 921
    :goto_1
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v2, :cond_3

    .line 922
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 923
    :cond_3
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v2, p1

    .line 924
    const v2, 0xf109

    if-ne v0, v2, :cond_8

    .line 926
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 927
    .local v1, end:I
    if-gez v1, :cond_7

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    :goto_2
    add-int p1, v1, v2

    .line 928
    goto :goto_1

    .line 915
    .end local v1           #end:I
    :cond_4
    const v2, 0xf110

    if-eq v0, v2, :cond_5

    const v2, 0xf112

    if-ne v0, v2, :cond_6

    .line 916
    :cond_5
    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_6
    move v2, v3

    .line 918
    goto :goto_0

    .restart local v1       #end:I
    :cond_7
    move v2, p1

    .line 927
    goto :goto_2

    .line 929
    .end local v1           #end:I
    :cond_8
    const v2, 0xf10a

    if-eq v0, v2, :cond_9

    const v2, 0xf116

    if-ne v0, v2, :cond_a

    .line 930
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 931
    :cond_a
    const v2, 0xf118

    if-ne v0, v2, :cond_b

    .line 932
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_b
    move v2, p1

    .line 936
    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 4
    .parameter "ipos"

    .prologue
    const/4 v3, 0x0

    .line 1523
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1524
    .local v1, index:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 1527
    :goto_0
    return v2

    .line 1526
    :cond_0
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v2, v1

    .line 1527
    .local v0, ch:C
    const v2, 0xf10a

    if-eq v0, v2, :cond_1

    const v2, 0xf10b

    if-eq v0, v2, :cond_1

    const v2, 0xf10c

    if-eq v0, v2, :cond_1

    const v2, 0xf111

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2298
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 856
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-nez v1, :cond_0

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    move v0, v1

    .line 857
    .local v0, pos:I
    :goto_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0           #pos:I
    :cond_0
    move v0, v2

    .line 856
    goto :goto_0

    .restart local v0       #pos:I
    :cond_1
    move v1, v2

    .line 857
    goto :goto_1
.end method

.method public final nextDataIndex(I)I
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 2173
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v3, :cond_0

    .line 2174
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2175
    :cond_0
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne p1, v3, :cond_1

    move v3, v5

    .line 2241
    :goto_0
    return v3

    .line 2178
    :cond_1
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, pos:I
    aget-char v0, v3, p1

    .line 2179
    .local v0, datum:C
    const v3, 0x9fff

    if-le v0, v3, :cond_3

    const v3, 0xe000

    if-lt v0, v3, :cond_2

    const v3, 0xefff

    if-le v0, v3, :cond_3

    :cond_2
    const v3, 0xb000

    if-lt v0, v3, :cond_4

    const v3, 0xdfff

    if-gt v0, v3, :cond_4

    :cond_3
    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    move v3, v2

    .line 2184
    goto :goto_0

    .line 2185
    .end local p1
    .restart local v2       #pos:I
    :cond_4
    const v3, 0xa000

    if-lt v0, v3, :cond_5

    const v3, 0xafff

    if-gt v0, v3, :cond_5

    .line 2187
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v3, v3, v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto :goto_0

    .line 2188
    .end local p1
    .restart local v2       #pos:I
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 2243
    :pswitch_0
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2191
    :pswitch_1
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 2192
    .local v1, j:I
    if-gez v1, :cond_6

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    :goto_1
    add-int/2addr v1, v3

    .line 2193
    add-int/lit8 v3, v1, 0x1

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto :goto_0

    .line 2192
    .end local p1
    .restart local v2       #pos:I
    :cond_6
    sub-int v3, v2, v4

    goto :goto_1

    .line 2195
    .end local v1           #j:I
    :pswitch_2
    add-int/lit8 v1, v2, 0x4

    .line 2198
    .restart local v1       #j:I
    :goto_2
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v1, v3, :cond_7

    .line 2199
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2200
    :cond_7
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v1, v3, :cond_8

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    move v3, v5

    .line 2201
    goto :goto_0

    .line 2202
    .end local p1
    .restart local v2       #pos:I
    :cond_8
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v3, v3, v1

    const v4, 0xf113

    if-ne v3, v4, :cond_9

    .line 2203
    add-int/lit8 v3, v1, 0x1

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2204
    .end local p1
    .restart local v2       #pos:I
    :cond_9
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    goto :goto_2

    .end local v1           #j:I
    :pswitch_3
    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    move v3, v2

    .line 2209
    goto/16 :goto_0

    .line 2211
    .end local p1
    .restart local v2       #pos:I
    :pswitch_4
    add-int/lit8 v3, v2, 0x1

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2216
    .end local p1
    .restart local v2       #pos:I
    :pswitch_5
    add-int/lit8 v3, v2, 0x2

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2218
    .end local p1
    .restart local v2       #pos:I
    :pswitch_6
    add-int/lit8 v3, v2, 0x4

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .end local p1
    .restart local v2       #pos:I
    :pswitch_7
    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    move v3, v5

    .line 2224
    goto/16 :goto_0

    .line 2226
    .end local p1
    .restart local v2       #pos:I
    :pswitch_8
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 2227
    .restart local v1       #j:I
    if-gez v1, :cond_a

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    :goto_3
    add-int/2addr v1, v3

    .line 2228
    add-int/lit8 v3, v1, 0x7

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2227
    .end local p1
    .restart local v2       #pos:I
    :cond_a
    sub-int v3, v2, v4

    goto :goto_3

    .line 2230
    .end local v1           #j:I
    :pswitch_9
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 2231
    .restart local v1       #j:I
    if-gez v1, :cond_b

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    :goto_4
    add-int/2addr v1, v3

    .line 2232
    add-int/lit8 v3, v1, 0x1

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2231
    .end local p1
    .restart local v2       #pos:I
    :cond_b
    sub-int v3, v2, v4

    goto :goto_4

    .line 2235
    .end local v1           #j:I
    :pswitch_a
    add-int/lit8 v3, v2, 0x4

    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto/16 :goto_0

    .line 2237
    .end local p1
    .restart local v2       #pos:I
    :pswitch_b
    add-int/lit8 p1, v2, 0x2

    .line 2241
    .end local v2           #pos:I
    .restart local p1
    :goto_5
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_0

    .end local p1
    .restart local v2       #pos:I
    :pswitch_c
    move p1, v2

    .end local v2           #pos:I
    .restart local p1
    goto :goto_5

    .line 2188
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 16
    .parameter "startPos"
    .parameter "predicate"
    .parameter "endPos"
    .parameter "descend"

    .prologue
    .line 1998
    invoke-virtual/range {p0 .. p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v12

    .line 1999
    .local v12, start:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v9

    .line 2000
    .local v9, limit:I
    move v11, v12

    .line 2001
    .local v11, pos:I
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/lists/NodePredicate;

    move v13, v0

    if-eqz v13, :cond_0

    .line 2002
    move-object/from16 v0, p0

    move v1, v11

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v11

    .line 2003
    :cond_0
    const/4 v3, 0x0

    .line 2007
    .local v3, checkAttribute:Z
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/lists/ElementPredicate;

    move v13, v0

    if-eqz v13, :cond_2

    .line 2009
    const/4 v5, 0x1

    .line 2010
    .local v5, checkNode:Z
    const/4 v4, 0x1

    .line 2011
    .local v4, checkElement:Z
    const/4 v6, 0x0

    .line 2028
    .local v6, checkText:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v13, v0

    if-ne v11, v13, :cond_1

    .line 2029
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v11, v0

    .line 2030
    :cond_1
    if-lt v11, v9, :cond_4

    const/4 v13, -0x1

    if-eq v9, v13, :cond_4

    .line 2031
    const/4 v13, 0x0

    .line 2156
    :goto_1
    return v13

    .line 2013
    .end local v4           #checkElement:Z
    .end local v5           #checkNode:Z
    .end local v6           #checkText:Z
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/lists/AttributePredicate;

    move v13, v0

    if-eqz v13, :cond_3

    .line 2015
    const/4 v5, 0x1

    .line 2016
    .restart local v5       #checkNode:Z
    const/4 v4, 0x0

    .line 2017
    .restart local v4       #checkElement:Z
    const/4 v6, 0x0

    .restart local v6       #checkText:Z
    goto :goto_0

    .line 2021
    .end local v4           #checkElement:Z
    .end local v5           #checkNode:Z
    .end local v6           #checkText:Z
    :cond_3
    const/4 v5, 0x1

    .line 2022
    .restart local v5       #checkNode:Z
    const/4 v4, 0x1

    .line 2023
    .restart local v4       #checkElement:Z
    const/4 v6, 0x1

    .restart local v6       #checkText:Z
    goto :goto_0

    .line 2033
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v13, v0

    aget-char v7, v13, v11

    .line 2034
    .local v7, datum:C
    const v13, 0x9fff

    if-le v7, v13, :cond_6

    const v13, 0xe000

    if-lt v7, v13, :cond_5

    const v13, 0xefff

    if-le v7, v13, :cond_6

    :cond_5
    const v13, 0xb000

    if-lt v7, v13, :cond_a

    const v13, 0xdfff

    if-gt v7, v13, :cond_a

    .line 2040
    :cond_6
    if-eqz v6, :cond_8

    shl-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v13

    invoke-interface {v0, v1, v2}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2042
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v13, v0

    if-lt v11, v13, :cond_7

    .line 2043
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v14, v0

    sub-int/2addr v13, v14

    sub-int/2addr v11, v13

    .line 2044
    :cond_7
    shl-int/lit8 v13, v11, 0x1

    goto :goto_1

    .line 2046
    :cond_8
    add-int/lit8 v10, v11, 0x1

    .line 2026
    .local v10, next:I
    :cond_9
    :goto_2
    move v11, v10

    goto :goto_0

    .line 2049
    .end local v10           #next:I
    :cond_a
    packed-switch v7, :pswitch_data_0

    .line 2139
    :pswitch_0
    const v13, 0xa000

    if-lt v7, v13, :cond_14

    const v13, 0xafff

    if-gt v7, v13, :cond_14

    .line 2142
    if-eqz p4, :cond_13

    .line 2143
    add-int/lit8 v10, v11, 0x3

    .line 2146
    .restart local v10       #next:I
    :goto_3
    if-eqz v4, :cond_9

    .line 2152
    :goto_4
    if-le v11, v12, :cond_9

    shl-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v13

    invoke-interface {v0, v1, v2}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2154
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v13, v0

    if-lt v11, v13, :cond_b

    .line 2155
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v14, v0

    sub-int/2addr v13, v14

    sub-int/2addr v11, v13

    .line 2156
    :cond_b
    shl-int/lit8 v13, v11, 0x1

    goto/16 :goto_1

    .line 2052
    .end local v10           #next:I
    :pswitch_1
    add-int/lit8 v10, v11, 0x3

    .line 2053
    .restart local v10       #next:I
    goto :goto_2

    .line 2055
    .end local v10           #next:I
    :pswitch_2
    add-int/lit8 v10, v11, 0x5

    .line 2056
    .restart local v10       #next:I
    if-eqz v5, :cond_9

    goto :goto_4

    .line 2059
    .end local v10           #next:I
    :pswitch_3
    add-int/lit8 v10, v11, 0x5

    .line 2060
    .restart local v10       #next:I
    goto :goto_2

    .line 2065
    .end local v10           #next:I
    :pswitch_4
    add-int/lit8 v10, v11, 0x3

    .line 2066
    .restart local v10       #next:I
    if-eqz v6, :cond_9

    goto :goto_4

    .line 2069
    .end local v10           #next:I
    :pswitch_5
    add-int/lit8 v10, v11, 0x2

    .line 2070
    .restart local v10       #next:I
    goto :goto_2

    .line 2072
    .end local v10           #next:I
    :pswitch_6
    if-nez p4, :cond_c

    .line 2073
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2074
    :cond_c
    add-int/lit8 v10, v11, 0x2

    .line 2075
    .restart local v10       #next:I
    goto :goto_2

    .line 2077
    .end local v10           #next:I
    :pswitch_7
    add-int/lit8 v10, v11, 0x5

    .line 2078
    .restart local v10       #next:I
    if-eqz v6, :cond_9

    goto :goto_4

    .line 2081
    .end local v10           #next:I
    :pswitch_8
    if-nez p4, :cond_d

    .line 2082
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2083
    :cond_d
    add-int/lit8 v10, v11, 0x7

    .line 2084
    .restart local v10       #next:I
    goto :goto_2

    .line 2087
    .end local v10           #next:I
    :pswitch_9
    if-nez p4, :cond_e

    .line 2088
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2091
    :cond_e
    :pswitch_a
    add-int/lit8 v10, v11, 0x1

    .line 2092
    .restart local v10       #next:I
    goto :goto_2

    .line 2094
    .end local v10           #next:I
    :pswitch_b
    if-eqz v5, :cond_10

    .line 2096
    add-int/lit8 v13, v11, 0x3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    .line 2097
    .local v8, j:I
    add-int/lit8 v13, v8, 0x1

    if-gez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v14, v0

    array-length v14, v14

    :goto_5
    add-int v10, v13, v14

    .line 2101
    .end local v8           #j:I
    .restart local v10       #next:I
    :goto_6
    if-eqz v3, :cond_9

    goto :goto_4

    .end local v10           #next:I
    .restart local v8       #j:I
    :cond_f
    move v14, v11

    .line 2097
    goto :goto_5

    .line 2100
    .end local v8           #j:I
    :cond_10
    add-int/lit8 v10, v11, 0x5

    .restart local v10       #next:I
    goto :goto_6

    .line 2105
    .end local v10           #next:I
    :pswitch_c
    add-int/lit8 v10, v11, 0x1

    .line 2106
    .restart local v10       #next:I
    if-eqz v6, :cond_9

    goto :goto_4

    .line 2109
    .end local v10           #next:I
    :pswitch_d
    add-int/lit8 v10, v11, 0x1

    .line 2110
    .restart local v10       #next:I
    goto/16 :goto_2

    .line 2113
    .end local v10           #next:I
    :pswitch_e
    add-int/lit8 v10, v11, 0x5

    .line 2114
    .restart local v10       #next:I
    if-eqz v6, :cond_9

    goto/16 :goto_4

    .line 2117
    .end local v10           #next:I
    :pswitch_f
    add-int/lit8 v13, v11, 0x5

    add-int/lit8 v14, v11, 0x3

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    add-int v10, v13, v14

    .line 2118
    .restart local v10       #next:I
    if-eqz v5, :cond_9

    goto/16 :goto_4

    .line 2121
    .end local v10           #next:I
    :pswitch_10
    add-int/lit8 v13, v11, 0x3

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    add-int v10, v13, v14

    .line 2122
    .restart local v10       #next:I
    if-eqz v5, :cond_9

    goto/16 :goto_4

    .line 2125
    .end local v10           #next:I
    :pswitch_11
    add-int/lit8 v13, v11, 0x3

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v14

    add-int v10, v13, v14

    .line 2126
    .restart local v10       #next:I
    if-eqz v6, :cond_9

    goto/16 :goto_4

    .line 2129
    .end local v10           #next:I
    :pswitch_12
    if-eqz p4, :cond_11

    .line 2130
    add-int/lit8 v10, v11, 0x3

    .line 2136
    .restart local v10       #next:I
    :goto_7
    if-eqz v4, :cond_9

    goto/16 :goto_4

    .line 2133
    .end local v10           #next:I
    :cond_11
    add-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    .line 2134
    .restart local v8       #j:I
    if-gez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v13, v0

    array-length v13, v13

    :goto_8
    add-int/2addr v13, v8

    add-int/lit8 v10, v13, 0x7

    .restart local v10       #next:I
    goto :goto_7

    .end local v10           #next:I
    :cond_12
    move v13, v11

    goto :goto_8

    .line 2145
    .end local v8           #j:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object v13, v0

    add-int/lit8 v14, v11, 0x1

    aget-char v13, v13, v14

    add-int/2addr v13, v11

    add-int/lit8 v10, v13, 0x2

    .restart local v10       #next:I
    goto/16 :goto_3

    .line 2149
    .end local v10           #next:I
    :cond_14
    new-instance v13, Ljava/lang/Error;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unknown code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2049
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_f
        :pswitch_11
        :pswitch_d
        :pswitch_10
        :pswitch_1
    .end packed-switch
.end method

.method public final nextNodeIndex(II)I
    .locals 3
    .parameter "pos"
    .parameter "limit"

    .prologue
    .line 1942
    const/high16 v1, -0x8000

    or-int/2addr v1, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1943
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, v1

    .line 1946
    :cond_0
    :goto_0
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v1, :cond_1

    .line 1947
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1948
    :cond_1
    if-lt p1, p2, :cond_3

    .line 1986
    :cond_2
    :pswitch_0
    return p1

    .line 1950
    :cond_3
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v1, p1

    .line 1951
    .local v0, datum:C
    const v1, 0x9fff

    if-le v0, v1, :cond_6

    const v1, 0xe000

    if-lt v0, v1, :cond_4

    const v1, 0xefff

    if-le v0, v1, :cond_6

    :cond_4
    const v1, 0xb000

    if-lt v0, v1, :cond_5

    const v1, 0xdfff

    if-le v0, v1, :cond_6

    :cond_5
    const v1, 0xff00

    and-int/2addr v1, v0

    const v2, 0xf000

    if-ne v1, v2, :cond_7

    .line 1958
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 1959
    goto :goto_0

    .line 1961
    :cond_7
    const v1, 0xa000

    if-lt v0, v1, :cond_8

    const v1, 0xafff

    if-le v0, v1, :cond_2

    .line 1964
    :cond_8
    packed-switch v0, :pswitch_data_0

    .line 1989
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1990
    goto :goto_0

    .line 1967
    :pswitch_2
    add-int/lit8 p1, p1, 0x3

    .line 1968
    goto :goto_0

    .line 1970
    :pswitch_3
    add-int/lit8 p1, p1, 0x1

    .line 1971
    goto :goto_0

    .line 1979
    :pswitch_4
    add-int/lit8 p1, p1, 0x5

    .line 1980
    goto :goto_0

    .line 1964
    :pswitch_data_0
    .packed-switch 0xf108
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public nextPos(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 2163
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2164
    .local v0, index:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2165
    const/4 v1, 0x0

    .line 2168
    :goto_0
    return v1

    .line 2166
    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, v1, :cond_1

    .line 2167
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2168
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public parentOrEntityI(I)I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, -0x1

    .line 960
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne p1, v4, :cond_0

    move v4, v6

    .line 1015
    :goto_0
    return v4

    .line 962
    :cond_0
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v4, p1

    .line 963
    .local v1, datum:C
    const v4, 0xf110

    if-eq v1, v4, :cond_1

    const v4, 0xf112

    if-ne v1, v4, :cond_3

    .line 965
    :cond_1
    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 966
    .local v3, parent_offset:I
    if-lt v3, v6, :cond_2

    move v4, v3

    .line 967
    goto :goto_0

    .line 969
    :cond_2
    add-int v4, p1, v3

    goto :goto_0

    .line 971
    .end local v3           #parent_offset:I
    :cond_3
    const v4, 0xa000

    if-lt v1, v4, :cond_5

    const v4, 0xafff

    if-gt v1, v4, :cond_5

    .line 974
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, p1, 0x2

    aget-char v3, v4, v5

    .line 975
    .restart local v3       #parent_offset:I
    if-nez v3, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    sub-int v4, p1, v3

    goto :goto_0

    .line 977
    .end local v3           #parent_offset:I
    :cond_5
    const v4, 0xf108

    if-ne v1, v4, :cond_9

    .line 979
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 980
    .local v2, end_offset:I
    if-gez v2, :cond_6

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    :goto_1
    add-int/2addr v2, v4

    .line 981
    add-int/lit8 v4, v2, 0x5

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 982
    .restart local v3       #parent_offset:I
    if-nez v3, :cond_7

    move v4, v6

    .line 983
    goto :goto_0

    .end local v3           #parent_offset:I
    :cond_6
    move v4, p1

    .line 980
    goto :goto_1

    .line 984
    .restart local v3       #parent_offset:I
    :cond_7
    if-gez v3, :cond_8

    .line 985
    add-int/2addr v3, v2

    :cond_8
    move v4, v3

    .line 986
    goto :goto_0

    .line 1005
    .end local v2           #end_offset:I
    .end local v3           #parent_offset:I
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 990
    :cond_9
    iget v4, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v4, :cond_a

    .line 991
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 992
    :cond_a
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    if-ne p1, v4, :cond_b

    move v4, v6

    .line 993
    goto :goto_0

    .line 994
    :cond_b
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v4, p1

    .line 995
    packed-switch v1, :pswitch_data_0

    .line 1010
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1012
    if-gez p1, :cond_9

    move v4, v6

    .line 1015
    goto :goto_0

    .line 998
    :pswitch_2
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, p1, 0x1

    aget-char v4, v4, v5

    sub-int v4, p1, v4

    goto :goto_0

    .line 1000
    :pswitch_3
    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1001
    .local v0, begin_offset:I
    if-gez v0, :cond_c

    .line 1002
    add-int/2addr v0, p1

    :cond_c
    move v4, v0

    .line 1003
    goto/16 :goto_0

    .end local v0           #begin_offset:I
    :pswitch_4
    move v4, v6

    .line 1008
    goto/16 :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0xf10a
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public parentOrEntityPos(I)I
    .locals 2
    .parameter "ipos"

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 955
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public parentPos(I)I
    .locals 4
    .parameter "ipos"

    .prologue
    const/4 v3, -0x1

    .line 941
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 944
    .local v0, index:I
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 945
    if-ne v0, v3, :cond_1

    move v1, v3

    .line 948
    :goto_0
    return v1

    .line 947
    :cond_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf112

    if-eq v1, v2, :cond_0

    .line 948
    shl-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public final posToDataIndex(I)I
    .locals 3
    .parameter "ipos"

    .prologue
    .line 880
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 881
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    .line 895
    :goto_0
    return v1

    .line 882
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 883
    .local v0, index:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 884
    add-int/lit8 v0, v0, -0x1

    .line 885
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v0, v1, :cond_2

    .line 886
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 887
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 889
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 890
    if-gez v0, :cond_3

    .line 891
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_0

    .line 892
    :cond_3
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v1, :cond_4

    .line 893
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4
    move v1, v0

    .line 895
    goto :goto_0
.end method

.method public final resizeObjects()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, oldLength:I
    const/16 v0, 0x64

    .line 356
    .local v0, newLength:I
    new-array v2, v0, [Ljava/lang/Object;

    .line 365
    .local v2, tmp:[Ljava/lang/Object;
    :goto_0
    iput-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 366
    return-void

    .line 360
    .end local v0           #newLength:I
    .end local v1           #oldLength:I
    .end local v2           #tmp:[Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v1, v3

    .line 361
    .restart local v1       #oldLength:I
    mul-int/lit8 v0, v1, 0x2

    .line 362
    .restart local v0       #newLength:I
    new-array v2, v0, [Ljava/lang/Object;

    .line 363
    .restart local v2       #tmp:[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setAttributeName(II)V
    .locals 1
    .parameter "attrIndex"
    .parameter "nameIndex"

    .prologue
    .line 665
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 666
    return-void
.end method

.method public setElementName(II)V
    .locals 3
    .parameter "elementIndex"
    .parameter "nameIndex"

    .prologue
    .line 579
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, p1

    const v2, 0xf108

    if-ne v1, v2, :cond_0

    .line 581
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 582
    .local v0, j:I
    if-gez v0, :cond_1

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    :goto_0
    add-int p1, v0, v1

    .line 584
    .end local v0           #j:I
    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-ge p1, v1, :cond_2

    .line 585
    new-instance v1, Ljava/lang/Error;

    const-string v2, "setElementName before gapEnd"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0       #j:I
    :cond_1
    move v1, p1

    .line 582
    goto :goto_0

    .line 586
    .end local v0           #j:I
    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 587
    return-void
.end method

.method public final setIntN(II)V
    .locals 3
    .parameter "index"
    .parameter "i"

    .prologue
    .line 394
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    aput-char v1, v0, p1

    .line 395
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 396
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 862
    const/4 v1, 0x0

    .line 863
    .local v1, size:I
    const/4 v0, 0x0

    .line 866
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    .line 867
    if-nez v0, :cond_0

    .line 868
    return v1

    .line 869
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAttribute(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 651
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 652
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 653
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf109

    aput-char v2, v0, v1

    .line 654
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-eqz v0, :cond_0

    .line 655
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nested attribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 657
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 658
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 659
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 660
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10a

    aput-char v2, v0, v1

    .line 661
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 627
    return-void
.end method

.method public startDocument()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 500
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 501
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 502
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 503
    .local v0, p:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf110

    aput-char v2, v1, v0

    .line 504
    iget v1, p0, Lgnu/lists/TreeList;->docStart:I

    if-eqz v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/Error;

    const-string v2, "nested document"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->docStart:I

    .line 507
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 508
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    if-ne v2, v4, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 509
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 510
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 511
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 512
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf111

    aput-char v3, v1, v2

    .line 513
    return-void

    .line 508
    :cond_1
    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    sub-int/2addr v2, v0

    goto :goto_0
.end method

.method public startElement(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x3

    .line 565
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 566
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/4 v1, 0x7

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 567
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf108

    aput-char v2, v0, v1

    .line 568
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 569
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 570
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10c

    aput-char v2, v0, v1

    .line 571
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 572
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 573
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 574
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v3

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 575
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startElement(I)V

    .line 496
    return-void
.end method

.method public statistics()V
    .locals 2

    .prologue
    .line 2308
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2309
    .local v0, out:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->statistics(Ljava/io/PrintWriter;)V

    .line 2310
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2311
    return-void
.end method

.method public statistics(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 2315
    const-string v0, "data array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2316
    const-string v0, "data array gap: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2317
    const-string v0, "object array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2318
    return-void
.end method

.method public stringValue(ILjava/lang/StringBuffer;)I
    .locals 2
    .parameter "index"
    .parameter "sbuf"

    .prologue
    .line 1754
    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    .line 1755
    .local v0, next:I
    if-le v0, p1, :cond_0

    .line 1757
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    move v1, p1

    .line 1761
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_0
.end method

.method public stringValue(ZILjava/lang/StringBuffer;)I
    .locals 12
    .parameter "inElement"
    .parameter "index"
    .parameter "sbuf"

    .prologue
    .line 1766
    const/4 v8, 0x0

    .line 1767
    .local v8, value:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1768
    .local v1, doChildren:I
    iget v9, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p2, v9, :cond_0

    .line 1769
    iget v9, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v10, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v9, v10

    add-int/2addr p2, v9

    .line 1770
    :cond_0
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    if-ne p2, v9, :cond_1

    .line 1771
    const/4 v9, -0x1

    .line 1909
    .end local v8           #value:Ljava/lang/Object;
    :goto_0
    return v9

    .line 1772
    .restart local v8       #value:Ljava/lang/Object;
    :cond_1
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v9, p2

    .line 1773
    .local v0, datum:C
    add-int/lit8 p2, p2, 0x1

    .line 1774
    const/4 v7, 0x0

    .line 1775
    .local v7, spaceNeeded:Z
    const v9, 0x9fff

    if-gt v0, v9, :cond_2

    .line 1777
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v9, p2

    .line 1778
    goto :goto_0

    .line 1780
    :cond_2
    const v9, 0xe000

    if-lt v0, v9, :cond_7

    const v9, 0xefff

    if-gt v0, v9, :cond_7

    .line 1783
    if-eqz v7, :cond_3

    .line 1784
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1785
    :cond_3
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    const v10, 0xe000

    sub-int v10, v0, v10

    aget-object v8, v9, v10

    .line 1786
    const/4 v7, 0x0

    .line 1899
    .end local v8           #value:Ljava/lang/Object;
    :goto_1
    if-eqz v8, :cond_4

    .line 1900
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1901
    :cond_4
    if-lez v1, :cond_6

    .line 1905
    :cond_5
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v1, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v1

    .line 1907
    if-gez v1, :cond_5

    :cond_6
    move v9, p2

    .line 1909
    goto :goto_0

    .line 1788
    .restart local v8       #value:Ljava/lang/Object;
    :cond_7
    const v9, 0xa000

    if-lt v0, v9, :cond_8

    const v9, 0xafff

    if-gt v0, v9, :cond_8

    .line 1791
    add-int/lit8 v1, p2, 0x2

    .line 1792
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v9, v9, p2

    add-int/2addr v9, p2

    add-int/lit8 p2, v9, 0x1

    goto :goto_1

    .line 1794
    :cond_8
    const v9, 0xff00

    and-int/2addr v9, v0

    const v10, 0xf000

    if-ne v9, v10, :cond_9

    .line 1796
    and-int/lit16 v9, v0, 0xff

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move v9, p2

    .line 1797
    goto :goto_0

    .line 1799
    :cond_9
    const v9, 0xb000

    if-lt v0, v9, :cond_a

    const v9, 0xdfff

    if-gt v0, v9, :cond_a

    .line 1802
    const v9, 0xc000

    sub-int v9, v0, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move v9, p2

    .line 1803
    goto :goto_0

    .line 1807
    :cond_a
    packed-switch v0, :pswitch_data_0

    .line 1896
    :pswitch_0
    new-instance v9, Ljava/lang/Error;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unimplemented: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1810
    :pswitch_1
    add-int/lit8 v9, p2, 0x2

    goto/16 :goto_0

    .line 1812
    :pswitch_2
    add-int/lit8 p2, p2, 0x2

    .line 1817
    :pswitch_3
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1818
    .local v5, length:I
    add-int/lit8 p2, p2, 0x2

    .line 1819
    if-eqz p1, :cond_b

    const v9, 0xf115

    if-ne v0, v9, :cond_c

    .line 1820
    :cond_b
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p3, v9, p2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1821
    :cond_c
    add-int v9, p2, v5

    goto/16 :goto_0

    .line 1825
    .end local v5           #length:I
    :pswitch_4
    if-eqz v7, :cond_d

    .line 1826
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1827
    :cond_d
    const v9, 0xf100

    if-eq v0, v9, :cond_e

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1828
    const/4 v7, 0x1

    move v9, p2

    .line 1829
    goto/16 :goto_0

    .line 1827
    :cond_e
    const/4 v9, 0x0

    goto :goto_2

    .line 1831
    :pswitch_5
    if-eqz v7, :cond_f

    .line 1832
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1833
    :cond_f
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1834
    const/4 v7, 0x1

    .line 1835
    add-int/lit8 v9, p2, 0x2

    goto/16 :goto_0

    .line 1837
    :pswitch_6
    if-eqz v7, :cond_10

    .line 1838
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1839
    :cond_10
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v9

    invoke-virtual {p3, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1840
    const/4 v7, 0x1

    .line 1841
    add-int/lit8 v9, p2, 0x4

    goto/16 :goto_0

    .line 1843
    :pswitch_7
    if-eqz v7, :cond_11

    .line 1844
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1845
    :cond_11
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1846
    const/4 v7, 0x1

    .line 1847
    add-int/lit8 v9, p2, 0x2

    goto/16 :goto_0

    .line 1849
    :pswitch_8
    if-eqz v7, :cond_12

    .line 1850
    const/16 v9, 0x20

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1851
    :cond_12
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    invoke-virtual {p3, v9, v10}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1852
    const/4 v7, 0x1

    .line 1853
    add-int/lit8 v9, p2, 0x4

    goto/16 :goto_0

    .line 1855
    :pswitch_9
    const/4 v7, 0x0

    .line 1856
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v9, v9, p2

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1857
    add-int/lit8 v9, p2, 0x1

    goto/16 :goto_0

    .line 1860
    :pswitch_a
    add-int/lit8 v1, p2, 0x4

    .line 1861
    const/4 v9, 0x1

    sub-int v9, p2, v9

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p2

    .line 1862
    goto/16 :goto_1

    .line 1864
    :pswitch_b
    const/4 v7, 0x0

    .line 1865
    add-int/lit8 v1, p2, 0x2

    .line 1866
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 1867
    .local v4, j:I
    if-gez v4, :cond_13

    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_3
    add-int/2addr v4, v9

    .line 1868
    add-int/lit8 p2, v4, 0x7

    .line 1869
    goto/16 :goto_1

    .line 1867
    :cond_13
    const/4 v9, 0x1

    sub-int v9, p2, v9

    goto :goto_3

    .line 1871
    .end local v4           #j:I
    :pswitch_c
    const/4 v7, 0x0

    .line 1872
    goto/16 :goto_1

    .line 1878
    :pswitch_d
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 1880
    :pswitch_e
    if-nez p1, :cond_14

    .line 1881
    add-int/lit8 v1, p2, 0x4

    .line 1882
    :cond_14
    add-int/lit8 v9, p2, 0x2

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1883
    .local v2, end:I
    if-gez v2, :cond_15

    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    :goto_4
    add-int p2, v2, v9

    .line 1884
    goto/16 :goto_1

    :cond_15
    move v9, p2

    .line 1883
    goto :goto_4

    .line 1887
    .end local v2           #end:I
    :pswitch_f
    iget-object v9, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v10

    aget-object v6, v9, v10

    check-cast v6, Lgnu/lists/AbstractSequence;

    .line 1888
    .local v6, seq:Lgnu/lists/AbstractSequence;
    add-int/lit8 v9, p2, 0x2

    invoke-virtual {p0, v9}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1889
    .local v3, ipos:I
    check-cast v6, Lgnu/lists/TreeList;

    .end local v6           #seq:Lgnu/lists/AbstractSequence;
    shr-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, p1, v9, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    .line 1890
    add-int/lit8 p2, p2, 0x4

    .line 1892
    goto/16 :goto_1

    .line 1807
    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public stringValue(IILjava/lang/StringBuffer;)V
    .locals 2
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "sbuf"

    .prologue
    .line 1747
    move v0, p1

    .line 1748
    .local v0, index:I
    :goto_0
    if-ge v0, p2, :cond_0

    if-ltz v0, :cond_0

    .line 1749
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0

    .line 1750
    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 19
    .parameter "sep"
    .parameter "sbuf"

    .prologue
    .line 1291
    const/4 v11, 0x0

    .line 1292
    .local v11, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move v10, v0

    .line 1294
    .local v10, limit:I
    const/4 v13, 0x0

    .line 1295
    .local v13, seen:Z
    const/4 v6, 0x0

    .line 1296
    .local v6, inStartTag:Z
    const/4 v5, 0x0

    .line 1299
    .local v5, inAttribute:Z
    :goto_0
    if-lt v11, v10, :cond_1

    .line 1301
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1303
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move v11, v0

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    .line 1305
    if-ne v11, v10, :cond_1

    .line 1519
    :cond_0
    return-void

    .line 1312
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #pos:I
    .local v12, pos:I
    aget-char v4, v16, v11

    .line 1314
    .local v4, datum:C
    const v16, 0x9fff

    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 1316
    const/16 v16, 0x1

    sub-int v15, v12, v16

    .line 1317
    .local v15, start:I
    move v9, v10

    .line 1320
    .local v9, lim:I
    :goto_1
    if-lt v12, v9, :cond_3

    move v11, v12

    .line 1329
    .end local v12           #pos:I
    .restart local v11       #pos:I
    :goto_2
    if-eqz v6, :cond_2

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1330
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    sub-int v17, v11, v15

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move v2, v15

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1331
    const/4 v13, 0x0

    .line 1332
    goto :goto_0

    .line 1322
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #pos:I
    .restart local v11       #pos:I
    aget-char v4, v16, v12

    .line 1323
    const v16, 0x9fff

    move v0, v4

    move/from16 v1, v16

    if-le v0, v1, :cond_27

    .line 1325
    add-int/lit8 v11, v11, -0x1

    .line 1326
    goto :goto_2

    .line 1334
    .end local v9           #lim:I
    .end local v11           #pos:I
    .end local v15           #start:I
    .restart local v12       #pos:I
    :cond_4
    const v16, 0xe000

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    const v16, 0xefff

    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 1337
    if-eqz v6, :cond_5

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1338
    :cond_5
    if-eqz v13, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    const v17, 0xe000

    sub-int v17, v4, v17

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move v11, v12

    .line 1340
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1338
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/4 v13, 0x1

    goto :goto_3

    .line 1342
    :cond_7
    const v16, 0xa000

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    const v16, 0xafff

    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_a

    .line 1345
    if-eqz v6, :cond_8

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1346
    :cond_8
    const v16, 0xa000

    sub-int v7, v4, v16

    .line 1347
    .local v7, index:I
    if-eqz v13, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    :cond_9
    const/16 v16, 0x3c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    add-int/lit8 v11, v12, 0x2

    .line 1351
    .end local v12           #pos:I
    .restart local v11       #pos:I
    const/4 v13, 0x0

    .line 1352
    const/4 v6, 0x1

    .line 1353
    goto/16 :goto_0

    .line 1355
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_a
    const v16, 0xb000

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    const v16, 0xdfff

    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_d

    .line 1358
    if-eqz v6, :cond_b

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1359
    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    :goto_4
    const v16, 0xc000

    sub-int v16, v4, v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move v11, v12

    .line 1361
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1359
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_c
    const/4 v13, 0x1

    goto :goto_4

    .line 1363
    :cond_d
    packed-switch v4, :pswitch_data_0

    .line 1516
    :pswitch_0
    new-instance v16, Ljava/lang/Error;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "unknown code:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1367
    :pswitch_1
    add-int/lit8 v11, v12, 0x4

    .line 1368
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1370
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_2
    add-int/lit8 v11, v12, 0x2

    .line 1371
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1373
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_3
    if-eqz v6, :cond_e

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1374
    :cond_e
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1375
    .restart local v7       #index:I
    add-int/lit8 v11, v12, 0x2

    .line 1376
    .end local v12           #pos:I
    .restart local v11       #pos:I
    const-string v16, "<!--"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move v2, v11

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1378
    const-string v16, "-->"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    add-int/2addr v11, v7

    .line 1380
    goto/16 :goto_0

    .line 1382
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_4
    if-eqz v6, :cond_f

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1383
    :cond_f
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1384
    .restart local v7       #index:I
    add-int/lit8 v11, v12, 0x2

    .line 1385
    .end local v12           #pos:I
    .restart local v11       #pos:I
    const-string v16, "<![CDATA["

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move v2, v11

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1387
    const-string v16, "]]>"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    add-int/2addr v11, v7

    .line 1389
    goto/16 :goto_0

    .line 1391
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_5
    if-eqz v6, :cond_10

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1392
    :cond_10
    const-string v16, "<?"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1394
    .restart local v7       #index:I
    add-int/lit8 v11, v12, 0x2

    .line 1395
    .end local v12           #pos:I
    .restart local v11       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1396
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1397
    add-int/lit8 v11, v11, 0x2

    .line 1398
    if-lez v7, :cond_11

    .line 1400
    const/16 v16, 0x20

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move v2, v11

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1402
    add-int/2addr v11, v7

    .line 1404
    :cond_11
    const-string v16, "?>"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_6
    move v11, v12

    .line 1408
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1411
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_7
    if-eqz v6, :cond_12

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1412
    :cond_12
    if-eqz v13, :cond_13

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    :goto_5
    const v16, 0xf100

    move v0, v4

    move/from16 v1, v16

    if-eq v0, v1, :cond_14

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move v11, v12

    .line 1414
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1412
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_13
    const/4 v13, 0x1

    goto :goto_5

    .line 1413
    :cond_14
    const/16 v16, 0x0

    goto :goto_6

    :pswitch_8
    move v11, v12

    .line 1416
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1418
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_9
    if-eqz v6, :cond_15

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1419
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    add-int/lit8 v17, v4, 0x1

    const v18, 0xf106

    sub-int v17, v17, v18

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move v2, v12

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1420
    const/4 v13, 0x0

    .line 1421
    add-int/lit8 v11, v12, 0x1

    .line 1422
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1424
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_a
    if-eqz v6, :cond_16

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1425
    :cond_16
    if-eqz v13, :cond_17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v17

    aget-object v14, v16, v17

    check-cast v14, Lgnu/lists/AbstractSequence;

    .line 1428
    .local v14, seq:Lgnu/lists/AbstractSequence;
    add-int/lit8 v16, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v8

    .line 1430
    .local v8, ipos:I
    invoke-virtual {v14, v8}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1431
    add-int/lit8 v11, v12, 0x4

    .line 1433
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1425
    .end local v8           #ipos:I
    .end local v11           #pos:I
    .end local v14           #seq:Lgnu/lists/AbstractSequence;
    .restart local v12       #pos:I
    :cond_17
    const/4 v13, 0x1

    goto :goto_7

    .line 1436
    :pswitch_b
    if-eqz v6, :cond_18

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1437
    :cond_18
    if-eqz v13, :cond_19

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1438
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v17

    aget-object v16, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1439
    add-int/lit8 v11, v12, 0x2

    .line 1440
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1437
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_19
    const/4 v13, 0x1

    goto :goto_8

    .line 1442
    :pswitch_c
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1443
    .restart local v7       #index:I
    if-ltz v7, :cond_1b

    const/16 v16, 0x1

    sub-int v16, v12, v16

    :goto_9
    add-int v7, v7, v16

    .line 1444
    add-int/lit8 v11, v12, 0x2

    .line 1445
    .end local v12           #pos:I
    .restart local v11       #pos:I
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1446
    if-eqz v6, :cond_1c

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1448
    :cond_1a
    :goto_a
    const/16 v16, 0x3c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1450
    const/4 v13, 0x0

    .line 1451
    const/4 v6, 0x1

    .line 1452
    goto/16 :goto_0

    .line 1443
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    goto :goto_9

    .line 1447
    .end local v12           #pos:I
    .restart local v11       #pos:I
    :cond_1c
    if-eqz v13, :cond_1a

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 1455
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_d
    const v16, 0xf10b

    move v0, v4

    move/from16 v1, v16

    if-ne v0, v1, :cond_1d

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #pos:I
    .restart local v11       #pos:I
    aget-char v7, v16, v12

    .line 1458
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->data:[C

    move-object/from16 v16, v0

    const/16 v17, 0x2

    sub-int v17, v11, v17

    sub-int v17, v17, v7

    aget-char v16, v16, v17

    const v17, 0xa000

    sub-int v7, v16, v17

    .line 1465
    :goto_b
    if-eqz v6, :cond_1e

    .line 1466
    const-string v16, "/>"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    :goto_c
    const/4 v6, 0x0

    .line 1474
    const/4 v13, 0x1

    .line 1475
    goto/16 :goto_0

    .line 1462
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_1d
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1463
    .restart local v7       #index:I
    add-int/lit8 v11, v12, 0x6

    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto :goto_b

    .line 1469
    :cond_1e
    const-string v16, "</"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1471
    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1477
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_e
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v7

    .line 1478
    .restart local v7       #index:I
    const/16 v16, 0x20

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1480
    const-string v16, "=\""

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    const/4 v5, 0x1

    .line 1482
    const/4 v6, 0x0

    .line 1483
    add-int/lit8 v11, v12, 0x4

    .line 1484
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1486
    .end local v7           #index:I
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_f
    const/16 v16, 0x22

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1487
    const/4 v5, 0x0

    .line 1488
    const/4 v6, 0x1

    .line 1489
    const/4 v13, 0x0

    move v11, v12

    .line 1490
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1492
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :pswitch_10
    if-eqz v6, :cond_1f

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1493
    :cond_1f
    if-eqz v13, :cond_20

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    :goto_d
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1495
    add-int/lit8 v11, v12, 0x2

    .line 1496
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1493
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_20
    const/4 v13, 0x1

    goto :goto_d

    .line 1498
    :pswitch_11
    if-eqz v6, :cond_21

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1499
    :cond_21
    if-eqz v13, :cond_22

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1500
    :goto_e
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1501
    add-int/lit8 v11, v12, 0x2

    .line 1502
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1499
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_22
    const/4 v13, 0x1

    goto :goto_e

    .line 1504
    :pswitch_12
    if-eqz v6, :cond_23

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1505
    :cond_23
    if-eqz v13, :cond_24

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1506
    :goto_f
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1507
    add-int/lit8 v11, v12, 0x4

    .line 1508
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1505
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_24
    const/4 v13, 0x1

    goto :goto_f

    .line 1510
    :pswitch_13
    if-eqz v6, :cond_25

    const/16 v16, 0x3e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 1511
    :cond_25
    if-eqz v13, :cond_26

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1512
    :goto_10
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1513
    add-int/lit8 v11, v12, 0x4

    .line 1514
    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto/16 :goto_0

    .line 1511
    .end local v11           #pos:I
    .restart local v12       #pos:I
    :cond_26
    const/4 v13, 0x1

    goto :goto_10

    .end local v12           #pos:I
    .restart local v9       #lim:I
    .restart local v11       #pos:I
    .restart local v15       #start:I
    :cond_27
    move v12, v11

    .end local v11           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_1

    .line 1363
    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_7
        :pswitch_7
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public write(I)V
    .locals 3
    .parameter "c"

    .prologue
    .line 689
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 690
    const v0, 0x9fff

    if-gt p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 699
    :goto_0
    return-void

    .line 692
    :cond_0
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf106

    aput-char v2, v0, v1

    .line 695
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 5
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 797
    if-nez p3, :cond_0

    .line 798
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 799
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    move v1, p2

    .line 800
    .end local p2
    .local v1, start:I
    :goto_0
    if-lez p3, :cond_2

    .line 802
    add-int/lit8 p2, v1, 0x1

    .end local v1           #start:I
    .restart local p2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 803
    .local v0, ch:C
    add-int/lit8 p3, p3, -0x1

    .line 804
    const v2, 0x9fff

    if-gt v0, v2, :cond_1

    .line 805
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v0, v2, v3

    :goto_1
    move v1, p2

    .line 811
    .end local p2
    .restart local v1       #start:I
    goto :goto_0

    .line 808
    .end local v1           #start:I
    .restart local p2
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->write(I)V

    .line 809
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    goto :goto_1

    .line 812
    .end local v0           #ch:C
    .end local p2
    .restart local v1       #start:I
    :cond_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->write(Ljava/lang/CharSequence;II)V

    .line 789
    return-void
.end method

.method public write([CII)V
    .locals 5
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 769
    if-nez p3, :cond_0

    .line 770
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 771
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    move v1, p2

    .line 772
    .end local p2
    .local v1, off:I
    :goto_0
    if-lez p3, :cond_2

    .line 774
    add-int/lit8 p2, v1, 0x1

    .end local v1           #off:I
    .restart local p2
    aget-char v0, p1, v1

    .line 775
    .local v0, ch:C
    add-int/lit8 p3, p3, -0x1

    .line 776
    const v2, 0x9fff

    if-gt v0, v2, :cond_1

    .line 777
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v0, v2, v3

    :goto_1
    move v1, p2

    .line 783
    .end local p2
    .restart local v1       #off:I
    goto :goto_0

    .line 780
    .end local v1           #off:I
    .restart local p2
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->write(I)V

    .line 781
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    goto :goto_1

    .line 784
    .end local v0           #ch:C
    .end local p2
    .restart local v1       #off:I
    :cond_2
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .parameter "v"

    .prologue
    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 704
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz p1, :cond_0

    const v2, 0xf101

    :goto_0
    aput-char v2, v0, v1

    .line 705
    return-void

    .line 704
    :cond_0
    const v2, 0xf100

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 4
    .parameter "v"

    .prologue
    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 710
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf000

    and-int/lit16 v3, p1, 0xff

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 711
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 4
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 816
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 817
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 818
    .local v0, i:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const v3, 0xf115

    aput-char v3, v2, v0

    .line 819
    invoke-virtual {p0, v1, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 820
    add-int/lit8 v0, v1, 0x2

    .line 821
    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    add-int v2, v0, p3

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 823
    return-void
.end method

.method public writeComment(Ljava/lang/String;II)V
    .locals 4
    .parameter "comment"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 456
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 457
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 458
    .local v0, i:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const v3, 0xf117

    aput-char v3, v2, v0

    .line 459
    invoke-virtual {p0, v1, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 460
    add-int/lit8 v0, v1, 0x2

    .line 461
    .end local v1           #i:I
    .restart local v0       #i:I
    add-int v2, p2, p3

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p1, p2, v2, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    add-int v2, v0, p3

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 463
    return-void
.end method

.method public writeComment([CII)V
    .locals 4
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 445
    add-int/lit8 v2, p3, 0x3

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 446
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 447
    .local v0, i:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const v3, 0xf117

    aput-char v3, v2, v0

    .line 448
    invoke-virtual {p0, v1, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 449
    add-int/lit8 v0, v1, 0x2

    .line 450
    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    add-int v2, v0, p3

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 452
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 436
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 437
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, index:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf118

    aput-char v3, v1, v2

    .line 439
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 440
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 441
    return-void
.end method

.method public writeDouble(D)V
    .locals 6
    .parameter "v"

    .prologue
    .line 747
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 748
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 749
    .local v0, l:J
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf105

    aput-char v4, v2, v3

    .line 750
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 751
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 752
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x10

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 753
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v4, v0

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 754
    return-void
.end method

.method public writeFloat(F)V
    .locals 4
    .parameter "v"

    .prologue
    .line 738
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 739
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 740
    .local v0, i:I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf104

    aput-char v3, v1, v2

    .line 741
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    ushr-int/lit8 v3, v0, 0x10

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 742
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v3, v0

    aput-char v3, v1, v2

    .line 743
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .parameter "v"

    .prologue
    .line 715
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 716
    const/16 v0, -0x1000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1fff

    if-gt p1, v0, :cond_0

    .line 717
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xc000

    add-int/2addr v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 724
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf102

    aput-char v2, v0, v1

    .line 721
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 722
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public writeJoiner()V
    .locals 3

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 764
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf116

    aput-char v2, v0, v1

    .line 765
    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .parameter "v"

    .prologue
    .line 728
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 729
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf103

    aput-char v2, v0, v1

    .line 730
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 731
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 732
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 733
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 734
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 420
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 421
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 422
    .local v0, index:I
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xe000

    or-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10d

    aput-char v3, v1, v2

    .line 427
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 428
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 4
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 410
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 411
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10f

    aput-char v3, v1, v2

    .line 412
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 413
    .local v0, seq_index:I
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 414
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 415
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 416
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 482
    add-int/lit8 v3, p4, 0x5

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 483
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 484
    .local v0, i:I
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const v4, 0xf114

    aput-char v4, v3, v0

    .line 485
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v2

    .line 486
    .local v2, index:I
    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 487
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 488
    add-int/lit8 v0, v1, 0x4

    .line 489
    .end local v1           #i:I
    .restart local v0       #i:I
    add-int v3, p3, p4

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, p3, v3, v4, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 490
    add-int v3, v0, p4

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 491
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 5
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 468
    add-int/lit8 v3, p4, 0x5

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 469
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 470
    .local v0, i:I
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const v4, 0xf114

    aput-char v4, v3, v0

    .line 471
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v2

    .line 472
    .local v2, index:I
    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 473
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 474
    add-int/lit8 v0, v1, 0x4

    .line 475
    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p2, p3, v3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int v3, v0, p4

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 477
    return-void
.end method
