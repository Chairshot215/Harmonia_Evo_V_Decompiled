.class public Lorg/kxml2/wap/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field static final HEX_DIGITS:Ljava/lang/String; = "0123456789abcdef"

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field public static final WAP_EXTENSION:I = 0x40


# instance fields
.field private ATTR_START_TABLE:I

.field private ATTR_VALUE_TABLE:I

.field private TAG_TABLE:I

.field private attrStartTable:[Ljava/lang/String;

.field private attrValueTable:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isWhitespace:Z

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextId:I

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private version:I

.field private wapCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 67
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 68
    const/4 v0, -0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    return-void
.end method

.method private final adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 494
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 495
    .local v1, attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 498
    .local v4, cut:I
    if-eq v4, v12, :cond_1

    .line 499
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 510
    const/4 v0, 0x1

    .line 491
    .end local v7           #prefix:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 502
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 503
    move-object v7, v1

    .line 504
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 513
    :cond_2
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 515
    .local v6, j:I
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 516
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 517
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 519
    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 521
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 527
    :cond_3
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 538
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_9

    .line 539
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    .line 540
    :goto_3
    if-ltz v5, :cond_9

    .line 543
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 544
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 546
    .restart local v4       #cut:I
    if-nez v4, :cond_5

    .line 547
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 553
    :cond_5
    if-eq v4, v12, :cond_8

    .line 554
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 562
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 568
    :cond_6
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 569
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 570
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 572
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v8, -0x4

    .line 573
    .restart local v6       #j:I
    :goto_4
    if-le v6, v5, :cond_8

    .line 575
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate Attribute: {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 574
    :cond_7
    add-int/lit8 v6, v6, -0x4

    goto :goto_4

    .line 541
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    .end local v6           #j:I
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 586
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    :cond_9
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 588
    .restart local v4       #cut:I
    if-nez v4, :cond_d

    .line 589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 595
    :cond_a
    :goto_5
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 597
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 598
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 599
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 600
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 603
    :cond_c
    return v0

    .line 590
    :cond_d
    if-eq v4, v12, :cond_a

    .line 591
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 592
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 952
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 956
    .end local p1
    :goto_0
    return-object p1

    .line 954
    .restart local p1
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 955
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 956
    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 2
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final nextImpl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 645
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v3, v4, :cond_0

    .line 646
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    .line 649
    :cond_0
    iget-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v3, :cond_1

    .line 650
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 651
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 733
    :goto_0
    return-void

    .line 655
    :cond_1
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 656
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 657
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 659
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    .line 660
    .local v1, id:I
    :goto_1
    if-nez v1, :cond_2

    .line 661
    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 662
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 663
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    goto :goto_1

    .line 665
    :cond_2
    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 667
    sparse-switch v1, :sswitch_data_0

    .line 727
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 669
    :sswitch_0
    iput v7, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    goto :goto_0

    .line 674
    :sswitch_1
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x2

    .line 676
    .local v2, sp:I
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 677
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 678
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 679
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 685
    .end local v2           #sp:I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 686
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 687
    .local v0, c:C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 694
    .end local v0           #c:C
    :sswitch_3
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 695
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 709
    :sswitch_4
    const/16 v3, 0x40

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 710
    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 711
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 715
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 721
    :sswitch_6
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 722
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 859
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 861
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    return v0
.end method

.method private selectPage(IZ)V
    .locals 3
    .parameter "nr"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 629
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 632
    :cond_1
    if-eqz p2, :cond_2

    .line 633
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_2
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .parameter "page"
    .parameter "type"
    .parameter "table"

    .prologue
    .line 607
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 614
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "entity"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 283
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 277
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 289
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 269
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 295
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 304
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 305
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 307
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 313
    :goto_1
    return-object v1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 313
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 317
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 93
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 133
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 148
    :goto_0
    return-object v1

    .line 135
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 138
    :cond_1
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .line 139
    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 141
    if-nez p1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 143
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 140
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 148
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .parameter "depth"

    .prologue
    .line 118
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    sget-object v5, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 163
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 164
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 167
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :cond_2
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_3
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 174
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 175
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 157
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 193
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 195
    :cond_8
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 196
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 197
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 198
    :cond_9
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 199
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 201
    :cond_a
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .parameter "poslen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 232
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 233
    aput v3, p1, v3

    .line 234
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 235
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 236
    .local v0, buf:[C
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 242
    .end local v0           #buf:[C
    :goto_0
    return-object v0

    .line 240
    :cond_0
    aput v4, p1, v3

    .line 241
    aput v4, p1, v5

    .line 242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWapCode()I
    .locals 1

    .prologue
    .line 1067
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    return v0
.end method

.method public getWapExtensionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 259
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 260
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 223
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 327
    const/16 v0, 0x270f

    .line 331
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 333
    .local v1, save:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 335
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 336
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 338
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 340
    if-lt v0, v4, :cond_3

    .line 342
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1           #save:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 344
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 358
    :cond_3
    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 360
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 361
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 363
    :cond_4
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v2

    .line 342
    .restart local v1       #save:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 379
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 382
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 383
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 385
    :cond_1
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 391
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 393
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 397
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 398
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 404
    :goto_0
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 405
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 407
    :cond_1
    return-object v0

    .line 402
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 370
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 371
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method parseElement(I)V
    .locals 8
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 903
    const/4 v4, 0x2

    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 904
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-virtual {p0, v4, v6}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 906
    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    .line 907
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 908
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readAttr()V

    .line 911
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 913
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    shl-int/lit8 v3, v4, 0x2

    .line 917
    .local v3, sp:I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {p0, v4, v6}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 918
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    iget-object v7, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 920
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 921
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 922
    .local v0, bigger:[I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v4, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 926
    .end local v0           #bigger:[I
    :cond_1
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v7, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 928
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_5

    .line 929
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 930
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 929
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #sp:I
    :cond_3
    move v4, v5

    .line 911
    goto :goto_0

    .line 928
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #sp:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 938
    .end local v2           #j:I
    :cond_5
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 939
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->adjustNsp()Z

    .line 943
    :goto_3
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 944
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 945
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 947
    return-void

    .line 941
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_3
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 739
    sparse-switch p1, :sswitch_data_0

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 770
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 743
    :sswitch_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :sswitch_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 757
    :sswitch_3
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v1

    .line 758
    .local v1, count:I
    new-array v0, v1, [B

    .line 760
    .local v0, buf:[B
    :goto_1
    if-lez v1, :cond_0

    .line 761
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 739
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 776
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 777
    .local v3, id:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 779
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    .line 781
    :goto_1
    if-nez v3, :cond_0

    .line 782
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 783
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_1

    .line 786
    :cond_0
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 789
    .local v4, name:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 791
    .local v0, cut:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 792
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 799
    .local v5, value:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 806
    :goto_3
    if-gt v3, v9, :cond_2

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x83

    if-eq v3, v6, :cond_2

    const/16 v6, 0x40

    if-lt v3, v6, :cond_1

    const/16 v6, 0x42

    if-le v3, v6, :cond_2

    :cond_1
    if-lt v3, v9, :cond_4

    const/16 v6, 0x82

    if-gt v3, v6, :cond_4

    .line 808
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 839
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    :goto_4
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_3

    .line 794
    .end local v5           #value:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v5       #value:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 810
    :sswitch_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_4

    .line 814
    :sswitch_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 818
    :sswitch_2
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 831
    :sswitch_3
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lorg/kxml2/wap/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 835
    :sswitch_4
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 846
    :cond_4
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x4

    invoke-direct {p0, v6, v7}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 848
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const-string v7, ""

    aput-object v7, v6, v2

    .line 849
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 850
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v4, v6, v2

    .line 851
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 853
    iget v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    goto/16 :goto_0

    .line 855
    .end local v0           #cut:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/StringBuffer;
    :cond_5
    return-void

    .line 808
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 961
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 962
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_0
    return v0
.end method

.method readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    const/4 v1, 0x0

    .line 971
    .local v1, result:I
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v0

    .line 972
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 974
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 976
    return v1
.end method

.method readStrI()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 981
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 983
    .local v3, wsp:Z
    :goto_0
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 984
    .local v1, i:I
    if-nez v1, :cond_0

    .line 995
    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 996
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 997
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 998
    return-object v2

    .line 987
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 988
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 990
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 991
    const/4 v3, 0x0

    .line 993
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrT()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v2

    .line 1006
    .local v2, pos:I
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 1008
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 1010
    :cond_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1011
    .local v1, forReturn:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1013
    move v0, v2

    .line 1014
    .local v0, end:I
    :goto_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1018
    .restart local v1       #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .end local v0           #end:I
    :cond_2
    return-object v1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    const-string v0, "WAP Ext."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 419
    :cond_2
    return-void

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resolveId([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "tab"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 884
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 885
    .local v0, idx:I
    if-ne v0, v2, :cond_0

    .line 886
    iput v2, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 887
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 897
    :goto_0
    return-object v1

    .line 889
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 893
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 897
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    .line 869
    instance-of v3, p2, [B

    if-eqz v3, :cond_1

    .line 870
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 871
    .local v2, sb:Ljava/lang/StringBuffer;
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    .line 873
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 874
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 875
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 880
    .end local v0           #b:[B
    .end local v1           #i:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .restart local p2
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1047
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1059
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 473
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iput-boolean p2, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "in"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->version:I

    .line 433
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    .line 435
    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    if-nez v5, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    .line 438
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v0

    .line 440
    .local v0, charset:I
    if-nez p2, :cond_2

    .line 441
    sparse-switch v0, :sswitch_data_0

    .line 447
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v0           #charset:I
    :catch_0
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Illegal input format"

    invoke-direct {p0, v5}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 469
    .end local v2           #e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 442
    .restart local v0       #charset:I
    :sswitch_0
    :try_start_1
    const-string v5, "ISO-8859-1"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    .line 453
    :goto_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v4

    .line 454
    .local v4, strTabSize:I
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    .line 456
    const/4 v3, 0x0

    .line 457
    .local v3, ok:I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 458
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v6, v4, v3

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 459
    .local v1, cnt:I
    if-gtz v1, :cond_3

    .line 463
    .end local v1           #cnt:I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 464
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_0

    .line 443
    .end local v3           #ok:I
    .end local v4           #strTabSize:I
    :sswitch_1
    const-string v5, "UTF-8"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 450
    :cond_2
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 460
    .restart local v1       #cnt:I
    .restart local v3       #ok:I
    .restart local v4       #strTabSize:I
    :cond_3
    add-int/2addr v3, v1

    .line 461
    goto :goto_2

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1029
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1034
    return-void
.end method
