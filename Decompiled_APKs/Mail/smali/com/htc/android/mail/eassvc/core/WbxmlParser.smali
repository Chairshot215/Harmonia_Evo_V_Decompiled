.class public Lcom/htc/android/mail/eassvc/core/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;
    }
.end annotation


# static fields
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

.field private attributeObject:[Ljava/lang/Object;

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

.field charSet:I

.field private codePage:I

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

.field publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field version:I

.field private wapExtensionCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TAG_TABLE:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_START_TABLE:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 55
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    .line 64
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeObject:[Ljava/lang/Object;

    .line 70
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    .line 94
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

    .line 97
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

    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 547
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 548
    .local v1, attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 551
    .local v4, cut:I
    if-eq v4, v12, :cond_1

    .line 552
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 563
    const/4 v0, 0x1

    .line 544
    .end local v7           #prefix:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 555
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    move-object v7, v1

    .line 557
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 566
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    iget v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 568
    .local v6, j:I
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 569
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 570
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 572
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 574
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 580
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 591
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_9

    .line 592
    iget v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    .line 593
    :goto_3
    if-ltz v5, :cond_9

    .line 596
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 597
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 599
    .restart local v4       #cut:I
    if-nez v4, :cond_5

    .line 600
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

    .line 606
    :cond_5
    if-eq v4, v12, :cond_8

    .line 607
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 615
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

    .line 621
    :cond_6
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 622
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 623
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 625
    iget v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v8, -0x4

    .line 626
    .restart local v6       #j:I
    :goto_4
    if-le v6, v5, :cond_8

    .line 628
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 630
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

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 627
    :cond_7
    add-int/lit8 v6, v6, -0x4

    goto :goto_4

    .line 594
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    .end local v6           #j:I
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 639
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    :cond_9
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 641
    .restart local v4       #cut:I
    if-nez v4, :cond_d

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 648
    :cond_a
    :goto_5
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    .line 650
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 651
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 652
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 653
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    .line 656
    :cond_c
    return v0

    .line 643
    :cond_d
    if-eq v4, v12, :cond_a

    .line 644
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    .line 645
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 1055
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 1059
    .end local p1
    :goto_0
    return-object p1

    .line 1057
    .restart local p1
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 1058
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 1059
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
    .line 675
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

    .line 698
    iget v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne v3, v4, :cond_0

    .line 699
    iget v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    .line 702
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    if-eqz v3, :cond_1

    .line 703
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 704
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    .line 783
    :goto_0
    return-void

    .line 708
    :cond_1
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 709
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    .line 710
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    .line 712
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v1

    .line 713
    .local v1, id:I
    :goto_1
    if-nez v1, :cond_2

    .line 714
    iput v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 715
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    .line 716
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v1

    goto :goto_1

    .line 718
    :cond_2
    iput v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 720
    sparse-switch v1, :sswitch_data_0

    .line 777
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 722
    :sswitch_0
    iput v7, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    goto :goto_0

    .line 727
    :sswitch_1
    iget v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x2

    .line 729
    .local v2, sp:I
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 730
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    .line 732
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 738
    .end local v2           #sp:I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 739
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 740
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

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 747
    .end local v0           #c:C
    :sswitch_3
    iput v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 748
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 761
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->parseWapExtension(I)V

    goto/16 :goto_0

    .line 765
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 771
    :sswitch_6
    iput v8, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 772
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 720
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

.method private final nextTextToFile(Ljava/io/FileOutputStream;)V
    .locals 5
    .parameter "fileos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 790
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne v1, v4, :cond_0

    .line 791
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    .line 794
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    if-eqz v1, :cond_1

    .line 795
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 796
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    .line 820
    :goto_0
    return-void

    .line 800
    :cond_1
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 801
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    .line 802
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    .line 804
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v0

    .line 805
    .local v0, id:I
    :goto_1
    if-nez v0, :cond_2

    .line 806
    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 807
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    .line 808
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v0

    goto :goto_1

    .line 810
    :cond_2
    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 812
    packed-switch v0, :pswitch_data_0

    .line 818
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 814
    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 815
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrIToFile(Ljava/io/FileOutputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 982
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 984
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

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
    .line 680
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 682
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 683
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

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 685
    :cond_1
    if-eqz p2, :cond_2

    .line 686
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tagTable:[Ljava/lang/String;

    goto :goto_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .parameter "page"
    .parameter "type"
    .parameter "table"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 667
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
    .line 121
    return-void
.end method

.method public findEndTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, -0x2

    .line 1244
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne v2, v5, :cond_0

    .line 1245
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    .line 1248
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    if-eqz v2, :cond_1

    .line 1249
    iput v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1250
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    .line 1283
    :goto_0
    return-void

    .line 1254
    :cond_1
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 1256
    const-string v2, "xml"

    const-string v3, "search End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v0

    .line 1258
    .local v0, id:I
    :goto_1
    if-eq v0, v6, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1259
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 1260
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v0

    goto :goto_1

    .line 1262
    :cond_2
    const-string v2, "xml"

    const-string v3, "discover End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextId:I

    .line 1265
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1268
    :pswitch_1
    iput v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    goto :goto_0

    .line 1274
    :pswitch_2
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v1, v2, 0x2

    .line 1276
    .local v1, sp:I
    iput v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1277
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    .line 1278
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    .line 1279
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 1265
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 293
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 287
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeObject(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 329
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeObject:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 299
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 279
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 305
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

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
    .line 314
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 315
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 317
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 323
    :goto_1
    return-object v1

    .line 316
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 323
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

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
    .line 336
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 102
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->processNsp:Z

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 143
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 158
    :goto_0
    return-object v1

    .line 145
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 148
    :cond_1
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .line 149
    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 151
    if-nez p1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 150
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 158
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .parameter "depth"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspStack:[Ljava/lang/String;

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

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    sget-object v5, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 173
    :cond_0
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 174
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 177
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 184
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 185
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

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

    .line 194
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

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

    .line 184
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 167
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 203
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    :cond_8
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 206
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 207
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 208
    :cond_9
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 209
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 211
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 213
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

    .line 214
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .parameter "poslen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 242
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 243
    aput v3, p1, v3

    .line 244
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 245
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 246
    .local v0, buf:[C
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 252
    .end local v0           #buf:[C
    :goto_0
    return-object v0

    .line 250
    :cond_0
    aput v4, p1, v3

    .line 251
    aput v4, p1, v5

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 283
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
    .line 269
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 270
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

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
    .line 230
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 233
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

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

    .line 380
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 381
    const/16 v0, 0x270f

    .line 385
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 387
    .local v1, save:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextImpl()V

    .line 389
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 390
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 392
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 394
    if-lt v0, v4, :cond_3

    .line 396
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1           #save:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 398
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 411
    :cond_3
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 413
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 414
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 416
    :cond_4
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    return v2

    .line 396
    .restart local v1       #save:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
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
    .line 431
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    .line 432
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    .line 435
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 436
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 438
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

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
    .line 443
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 444
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    .line 450
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->next()I

    .line 457
    :goto_0
    iget v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 458
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 460
    :cond_1
    return-object v0

    .line 455
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToEndTag()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1202
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 1203
    const/16 v0, 0x270f

    .line 1207
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 1209
    .local v1, save:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->findEndTag()V

    .line 1211
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 1212
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1214
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 1216
    if-lt v0, v4, :cond_3

    .line 1218
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1           #save:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 1220
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1234
    :cond_3
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1236
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 1237
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1239
    :cond_4
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    return v2

    .line 1218
    .restart local v1       #save:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1220
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

.method public nextToFile(Ljava/io/FileOutputStream;)I
    .locals 5
    .parameter "fileos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 341
    const/16 v0, 0x270f

    .line 345
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 347
    .local v1, save:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextTextToFile(Ljava/io/FileOutputStream;)V

    .line 349
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 350
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 352
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 354
    if-lt v0, v4, :cond_3

    .line 356
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1           #save:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    .line 358
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 371
    :cond_3
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 373
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 374
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 376
    :cond_4
    iget v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    return v2

    .line 356
    .restart local v1       #save:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
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
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 423
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nextImpl()V

    .line 424
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

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

    .line 1006
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 1007
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-virtual {p0, v4, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    .line 1009
    iput v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    .line 1010
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readAttr()V

    .line 1014
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->degenerated:Z

    .line 1016
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    shl-int/lit8 v3, v4, 0x2

    .line 1020
    .local v3, sp:I
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {p0, v4, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 1021
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 1023
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 1024
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 1025
    .local v0, bigger:[I
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v4, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    .line 1029
    .end local v0           #bigger:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->nspCounts:[I

    iget v7, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 1031
    iget v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_5

    .line 1032
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 1033
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 1032
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #sp:I
    :cond_3
    move v4, v5

    .line 1014
    goto :goto_0

    .line 1031
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #sp:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1041
    .end local v2           #j:I
    :cond_5
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 1042
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->adjustNsp()Z

    .line 1046
    :goto_3
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 1047
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1048
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1050
    return-void

    .line 1044
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_3
.end method

.method public parseWapExtension(I)V
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 826
    const/16 v3, 0x40

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    .line 827
    iput p1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->wapExtensionCode:I

    .line 829
    sparse-switch p1, :sswitch_data_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 864
    :goto_0
    :sswitch_0
    return-void

    .line 833
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto :goto_0

    .line 839
    :sswitch_2
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto :goto_0

    .line 849
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v2

    .line 850
    .local v2, len:I
    new-array v0, v2, [B

    .line 852
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 853
    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 857
    :cond_0
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto :goto_0

    .line 829
    nop

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    .line 868
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v4

    .line 869
    .local v4, id:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 871
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    const/4 v9, 0x1

    if-eq v4, v9, :cond_6

    .line 873
    :goto_1
    if-nez v4, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v9

    invoke-direct {p0, v9, v11}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    .line 875
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v4

    goto :goto_1

    .line 878
    :cond_0
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v9, v4}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 881
    .local v7, name:Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 883
    .local v1, cut:I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    .line 884
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 891
    .local v8, value:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v4

    .line 898
    :goto_3
    if-gt v4, v12, :cond_2

    if-eqz v4, :cond_2

    const/4 v9, 0x2

    if-eq v4, v9, :cond_2

    const/4 v9, 0x3

    if-eq v4, v9, :cond_2

    const/16 v9, 0x83

    if-eq v4, v9, :cond_2

    const/16 v9, 0x40

    if-lt v4, v9, :cond_1

    const/16 v9, 0x42

    if-le v4, v9, :cond_2

    :cond_1
    if-lt v4, v12, :cond_5

    const/16 v9, 0x82

    if-gt v4, v9, :cond_5

    .line 900
    :cond_2
    sparse-switch v4, :sswitch_data_0

    .line 962
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v9, v4}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    :goto_4
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v4

    goto :goto_3

    .line 886
    .end local v8           #value:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 888
    .restart local v8       #value:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 902
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v9

    invoke-direct {p0, v9, v11}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    goto :goto_4

    .line 906
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 910
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 928
    :sswitch_3
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "wap extension in attr not supported yet"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 947
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v5

    .line 948
    .local v5, len:I
    new-array v0, v5, [B

    .line 950
    .local v0, buf:[B
    const/4 v6, 0x0

    .local v6, lenIdx:I
    :goto_5
    if-ge v6, v5, :cond_4

    .line 951
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v6

    .line 950
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 953
    :cond_4
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeObject:[Ljava/lang/Object;

    ushr-int/lit8 v10, v3, 0x2

    aput-object v0, v9, v10

    goto :goto_4

    .line 958
    .end local v0           #buf:[B
    .end local v5           #len:I
    .end local v6           #lenIdx:I
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 969
    :cond_5
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v3, 0x4

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 971
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const-string v10, ""

    aput-object v10, v9, v3

    .line 972
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x0

    aput-object v10, v9, v2

    .line 973
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-object v7, v9, v3

    .line 974
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 976
    iget v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->attributeCount:I

    goto/16 :goto_0

    .line 978
    .end local v1           #cut:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/StringBuffer;
    :cond_6
    return-void

    .line 900
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
        0x83 -> :sswitch_5
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_4
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
    .line 1063
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1064
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1065
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
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
    .line 1070
    const/4 v1, 0x0

    .line 1074
    .local v1, result:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v0

    .line 1075
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 1077
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 1079
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
    .line 1083
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1084
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 1086
    .local v3, wsp:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1087
    .local v1, i:I
    if-nez v1, :cond_0

    .line 1098
    iput-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 1103
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1105
    const/4 v0, 0x0

    .line 1108
    return-object v2

    .line 1090
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1091
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1093
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 1094
    const/4 v3, 0x0

    .line 1096
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrIToFile(Ljava/io/FileOutputStream;)Ljava/lang/String;
    .locals 6
    .parameter "fileos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1112
    const/4 v2, 0x1

    .line 1113
    .local v2, wsp:Z
    const/4 v0, 0x0

    .line 1115
    .local v0, count:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1116
    .local v1, i:I
    if-nez v1, :cond_1

    .line 1131
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->isWhitespace:Z

    .line 1132
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 1133
    const/4 p1, 0x0

    .line 1136
    const/4 v3, 0x0

    return-object v3

    .line 1119
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1120
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1122
    :cond_2
    const/16 v3, 0x20

    if-le v1, v3, :cond_3

    .line 1123
    const/4 v2, 0x0

    .line 1125
    :cond_3
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1126
    add-int/lit8 v0, v0, 0x1

    .line 1127
    rem-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

    if-eqz v3, :cond_0

    .line 1128
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;->dataSaveToFileProgress(J)V

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
    .line 1140
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v2

    .line 1144
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 1146
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 1148
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1149
    .local v1, forReturn:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1151
    move v0, v2

    .line 1152
    .local v0, end:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1156
    .restart local v1       #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .end local v0           #end:I
    :cond_2
    return-object v1
.end method

.method public removeCallback(Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

    .line 1290
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 467
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 472
    :cond_2
    return-void
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
    .line 991
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 992
    .local v0, idx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 1000
    :goto_0
    return-object v1

    .line 994
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 998
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

    .line 1000
    :cond_2
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1185
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1197
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public setCallback(Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->callback:Lcom/htc/android/mail/eassvc/core/WbxmlParser$WbXmlCallback;

    .line 1287
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
    .line 526
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iput-boolean p2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->processNsp:Z

    .line 530
    :goto_0
    return-void

    .line 529
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

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

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
    .line 482
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->in:Ljava/io/InputStream;

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readByte()I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->version:I

    .line 486
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->publicIdentifierId:I

    .line 488
    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->publicIdentifierId:I

    if-nez v5, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v0

    .line 493
    .local v0, charset:I
    if-nez p2, :cond_2

    .line 494
    sparse-switch v0, :sswitch_data_0

    .line 500
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

    .line 519
    .end local v0           #charset:I
    :catch_0
    move-exception v2

    .line 520
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Illegal input format"

    invoke-direct {p0, v5}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 522
    .end local v2           #e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 495
    .restart local v0       #charset:I
    :sswitch_0
    :try_start_1
    const-string v5, "ISO-8859-1"

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    .line 506
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->readInt()I

    move-result v4

    .line 507
    .local v4, strTabSize:I
    new-array v5, v4, [B

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, ok:I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 511
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->stringTable:[B

    sub-int v6, v4, v3

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 512
    .local v1, cnt:I
    if-gtz v1, :cond_3

    .line 516
    .end local v1           #cnt:I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    .line 517
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->selectPage(IZ)V

    goto :goto_0

    .line 496
    .end local v3           #ok:I
    .end local v4           #strTabSize:I
    :sswitch_1
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 503
    :cond_2
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 513
    .restart local v1       #cnt:I
    .restart local v3       #ok:I
    .restart local v4       #strTabSize:I
    :cond_3
    add-int/2addr v3, v1

    .line 514
    goto :goto_2

    .line 494
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
    .line 476
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 477
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
    .line 534
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
    .line 1167
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/android/mail/eassvc/core/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1172
    return-void
.end method
