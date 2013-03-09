.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kxml2/io/KXmlParser$ContentSource;,
        Lorg/kxml2/io/KXmlParser$ValueContext;
    }
.end annotation


# static fields
.field private static final ANY:[C = null

.field private static final ATTLISTDECL:I = 0xd

.field private static final COMMENT_DOUBLE_DASH:[C = null

.field private static final DEFAULT_ENTITIES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_QUOTE:[C = null

.field private static final ELEMENTDECL:I = 0xb

.field private static final EMPTY:[C = null

.field private static final END_CDATA:[C = null

.field private static final END_COMMENT:[C = null

.field private static final END_PROCESSING_INSTRUCTION:[C = null

.field private static final ENTITYDECL:I = 0xc

.field private static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final FIXED:[C = null

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final IMPLIED:[C = null

.field private static final NDATA:[C = null

.field private static final NOTATION:[C = null

.field private static final NOTATIONDECL:I = 0xe

.field private static final PARAMETER_ENTITY_REF:I = 0xf

.field private static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final PUBLIC:[C = null

.field private static final REQUIRED:[C = null

.field private static final SINGLE_QUOTE:[C = null

.field private static final START_ATTLIST:[C = null

.field private static final START_CDATA:[C = null

.field private static final START_COMMENT:[C = null

.field private static final START_DOCTYPE:[C = null

.field private static final START_ELEMENT:[C = null

.field private static final START_ENTITY:[C = null

.field private static final START_NOTATION:[C = null

.field private static final START_PROCESSING_INSTRUCTION:[C = null

.field private static final SYSTEM:[C = null

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECLARATION:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private buffer:[C

.field private bufferCapture:Ljava/lang/StringBuilder;

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private degenerated:Z

.field private depth:I

.field private documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private keepNamespaceAttributes:Z

.field private limit:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private position:I

.field private prefix:Ljava/lang/String;

.field private processDocDecl:Z

.field private processNsp:Z

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private rootElementName:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field public final stringPool:Llibcore/internal/StringPool;

.field private systemId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    new-array v0, v5, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    new-array v0, v4, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    new-array v0, v5, [C

    fill-array-data v0, :array_4

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    new-array v0, v4, [C

    fill-array-data v0, :array_5

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    new-array v0, v4, [C

    fill-array-data v0, :array_6

    sput-object v0, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_7

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_9

    sput-object v0, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_b

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    new-array v0, v7, [C

    fill-array-data v0, :array_c

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_d

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    new-array v0, v6, [C

    fill-array-data v0, :array_e

    sput-object v0, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    new-array v0, v5, [C

    fill-array-data v0, :array_f

    sput-object v0, Lorg/kxml2/io/KXmlParser;->ANY:[C

    new-array v0, v6, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    new-array v0, v7, [C

    fill-array-data v0, :array_11

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    new-array v0, v7, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_13

    sput-object v0, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    new-array v0, v6, [C

    fill-array-data v0, :array_14

    sput-object v0, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x2dt 0x0t
        0x2dt 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x2dt 0x0t
        0x2dt 0x0t
        0x3et 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x2dt 0x0t
        0x2dt 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x5bt 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x5bt 0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x2
        0x5dt 0x0t
        0x5dt 0x0t
        0x3et 0x0t
    .end array-data

    nop

    :array_5
    .array-data 0x2
        0x3ct 0x0t
        0x3ft 0x0t
    .end array-data

    :array_6
    .array-data 0x2
        0x3ft 0x0t
        0x3et 0x0t
    .end array-data

    :array_7
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x44t 0x0t
        0x4ft 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x59t 0x0t
        0x50t 0x0t
        0x45t 0x0t
    .end array-data

    nop

    :array_8
    .array-data 0x2
        0x53t 0x0t
        0x59t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x45t 0x0t
        0x4dt 0x0t
    .end array-data

    :array_9
    .array-data 0x2
        0x50t 0x0t
        0x55t 0x0t
        0x42t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x43t 0x0t
    .end array-data

    :array_a
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x45t 0x0t
        0x4ct 0x0t
        0x45t 0x0t
        0x4dt 0x0t
        0x45t 0x0t
        0x4et 0x0t
        0x54t 0x0t
    .end array-data

    nop

    :array_b
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x54t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x53t 0x0t
        0x54t 0x0t
    .end array-data

    nop

    :array_c
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x45t 0x0t
        0x4et 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x54t 0x0t
        0x59t 0x0t
    .end array-data

    :array_d
    .array-data 0x2
        0x3ct 0x0t
        0x21t 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x4et 0x0t
    .end array-data

    :array_e
    .array-data 0x2
        0x45t 0x0t
        0x4dt 0x0t
        0x50t 0x0t
        0x54t 0x0t
        0x59t 0x0t
    .end array-data

    nop

    :array_f
    .array-data 0x2
        0x41t 0x0t
        0x4et 0x0t
        0x59t 0x0t
    .end array-data

    nop

    :array_10
    .array-data 0x2
        0x4et 0x0t
        0x44t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x41t 0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x2
        0x4et 0x0t
        0x4ft 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x4et 0x0t
    .end array-data

    :array_12
    .array-data 0x2
        0x52t 0x0t
        0x45t 0x0t
        0x51t 0x0t
        0x55t 0x0t
        0x49t 0x0t
        0x52t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data

    :array_13
    .array-data 0x2
        0x49t 0x0t
        0x4dt 0x0t
        0x50t 0x0t
        0x4ct 0x0t
        0x49t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x2
        0x46t 0x0t
        0x49t 0x0t
        0x58t 0x0t
        0x45t 0x0t
        0x44t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    return-void
.end method

.method private adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_5

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v12, :cond_1

    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v7, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_3
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v9, "http://www.w3.org/2000/xmlns/"

    aput-object v9, v8, v5

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_9

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    :goto_3
    if-ltz v5, :cond_9

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_6

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

    :cond_6
    if-eq v4, v12, :cond_8

    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_7

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

    :cond_7
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_a
    if-eq v4, v12, :cond_b

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    :cond_b
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_d

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_c
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    :cond_d
    return v0
.end method

.method private checkRelaxed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0
.end method

.method private fillBuffer(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-ge v4, v5, :cond_1

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unbalanced entity!"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->popContentSource()V

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v5

    if-lt v4, p1, :cond_0

    :goto_0
    return v2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_5
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eq v4, v5, :cond_7

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_6
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    array-length v7, v7

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, p1, :cond_6

    goto :goto_0

    :cond_7
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_0
.end method

.method private next(Z)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v11, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v7, :cond_0

    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "setInput() must be called first."

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v7, v8, :cond_1

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    :cond_1
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v7, :cond_2

    iput-boolean v6, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->type:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    :goto_0
    return v5

    :cond_2
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_3

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iput-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    const/16 v5, 0x9

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    :cond_3
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    :cond_4
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v8, 0x3e6

    if-ne v7, v8, :cond_5

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readXmlDeclaration()V

    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    :cond_5
    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-nez p1, :cond_6

    move v4, v5

    :goto_1
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    :cond_6
    move v4, v6

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v6, v4}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEndTag()V

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    :pswitch_3
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v1, v5, v4, v7}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    :cond_7
    :goto_2
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v7, :cond_b

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_8

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-eq v7, v11, :cond_8

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_b

    :cond_8
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Unexpected token"

    invoke-direct {v5, v6, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    :cond_9
    :pswitch_5
    const/16 v8, 0x3c

    if-nez p1, :cond_a

    move v7, v5

    :goto_3
    sget-object v9, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v8, v7, v4, v9}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x7

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_2

    :cond_a
    move v7, v6

    goto :goto_3

    :pswitch_6
    sget-object v7, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->read([C)V

    sget-object v7, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    invoke-direct {p0, v7, v5}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_7

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    sget-object v7, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->read([C)V

    sget-object v7, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v7, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_7

    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readDoctype(Z)V

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_c

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_0

    :cond_c
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_d

    iput-object v10, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    :cond_d
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v2

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    if-ge v2, v11, :cond_e

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->type:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_0

    :cond_e
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private parseStartTag(ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v9, 0x3c

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/4 v9, 0x0

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v2, v9, v10

    if-eqz p1, :cond_3

    const/16 v9, 0x3f

    if-ne v2, v9, :cond_7

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    const/16 v9, 0x3e

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    goto :goto_1

    :cond_3
    const/16 v9, 0x2f

    if-ne v2, v9, :cond_6

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    const/16 v9, 0x3e

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->read(C)V

    :goto_2
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    mul-int/lit8 v8, v9, 0x4

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x3

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v10, v10

    if-lt v9, v10, :cond_4

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v9, v9, 0x4

    new-array v1, v9, [I

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v12, v12

    invoke-static {v9, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    :cond_4
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v12, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    aput v11, v9, v10

    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v9, :cond_f

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    :goto_3
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v10, 0x0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v6, v9, 0x4

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v6

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v6, 0x2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v6, 0x3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    goto :goto_4

    :cond_6
    const/16 v9, 0x3e

    if-ne v2, v9, :cond_7

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_2

    :cond_7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v6, v9, 0x4

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x4

    invoke-direct {p0, v9, v10}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v6

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x2

    aput-object v0, v9, v10

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_8

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_d

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_9

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "Unexpected EOF"

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v3, v9, v10

    const/16 v9, 0x27

    if-eq v3, v9, :cond_a

    const/16 v9, 0x22

    if-ne v3, v9, :cond_b

    :cond_a
    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :goto_5
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    const/4 v11, 0x1

    sget-object v12, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v3, v11, p2, v12}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v9, 0x20

    if-eq v3, v9, :cond_1

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_0

    :cond_b
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_c

    const/16 v3, 0x20

    goto :goto_5

    :cond_c
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "attr value delimiter missing!"

    const/4 v11, 0x0

    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    :cond_d
    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    aput-object v0, v9, v10

    goto/16 :goto_0

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attr.value missing f. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v6, 0x3

    aput-object v0, v9, v10

    goto/16 :goto_0

    :cond_f
    const-string v9, ""

    iput-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v10, v9, v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v11, v9, v10

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v10, v8, 0x2

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    goto/16 :goto_1
.end method

.method private peekCharacter()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private peekType(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x4

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v3, :cond_2

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Dangling <"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x5

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    const/16 v0, 0x3e6

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_2

    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected <!"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_6
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_7
    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/16 v0, 0xb

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_5
        0x2f -> :sswitch_3
        0x3f -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2d -> :sswitch_8
        0x41 -> :sswitch_a
        0x44 -> :sswitch_6
        0x45 -> :sswitch_9
        0x4e -> :sswitch_b
        0x5b -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private popContentSource()V
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->position:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    #getter for: Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;
    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    return-void
.end method

.method private pushContentSource([C)V
    .locals 5

    new-instance v0, Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser$ContentSource;-><init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v0, p1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    return-void
.end method

.method private read(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    return-void
.end method

.method private read([C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v2, :cond_0

    array-length v1, p1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but was EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method

.method private readAttributeListDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_1

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute list"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    aget-char v5, v5, v7

    if-ne v4, v5, :cond_3

    sget-object v4, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    :cond_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x28

    if-ne v1, v4, :cond_8

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :goto_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x29

    if-ne v1, v4, :cond_6

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :goto_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x23

    if-ne v1, v4, :cond_4

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x52

    if-ne v1, v4, :cond_9

    sget-object v4, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    :goto_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    :cond_4
    const/16 v4, 0x22

    if-eq v1, v4, :cond_5

    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    :cond_5
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    int-to-char v4, v1

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v7, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0, v2, v0, v3}, Lorg/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x7c

    if-ne v1, v4, :cond_7

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_1

    :cond_7
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_8
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/16 v4, 0x49

    if-ne v1, v4, :cond_a

    sget-object v4, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_3

    :cond_a
    const/16 v4, 0x46

    if-ne v1, v4, :cond_b

    sget-object v4, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_3

    :cond_b
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Malformed attribute type"

    invoke-direct {v4, v5, p0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readComment(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Comments may not contain --"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method

.method private readContentSpec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v4, 0x28

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x0

    :cond_0
    if-ne v0, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    if-gtz v1, :cond_0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_3

    :cond_2
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_6

    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_1

    :cond_6
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_7

    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_1

    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected element content spec"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readDoctype(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readInternalSubset()V

    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v1, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    :cond_3
    throw v1
.end method

.method private readElementDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readContentSpec()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    return-void
.end method

.method private readEndTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v0, v1, 0x4

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no tags open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v1, :cond_0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v7, v7, v8

    const/16 v8, 0x26

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    const/16 v7, 0x26

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_3

    const/16 v7, 0x3b

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    :cond_1
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    :try_start_0
    const-string v7, "#x"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v7, 0x80

    if-ge v0, v7, :cond_7

    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-le v0, v7, :cond_7

    :cond_4
    const/16 v7, 0x61

    if-lt v0, v7, :cond_5

    const/16 v7, 0x7a

    if-le v0, v7, :cond_7

    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-le v0, v7, :cond_7

    :cond_6
    const/16 v7, 0x5f

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_7

    const/16 v7, 0x23

    if-ne v0, v7, :cond_8

    :cond_7
    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    int-to-char v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v7, :cond_2

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "unterminated entity ref"

    const/4 v9, 0x0

    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    :cond_9
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_1
    move-exception v3

    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character reference: &"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v7, :cond_2

    sget-object v7, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v7, :cond_c

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->pushContentSource([C)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    if-eqz v7, :cond_e

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz p3, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unresolved: &"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private readEntityDeclaration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    const/4 v1, 0x0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    const/16 v4, 0x27

    if-ne v3, v4, :cond_5

    :cond_1
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    int-to-char v4, v3

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v7, v6, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read(C)V

    return-void

    :cond_5
    invoke-direct {p0, v7, v6}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, ""

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_2

    sget-object v4, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Expected entity value or external ID"

    const/4 v6, 0x0

    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readExternalId(ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    const/16 v4, 0x53

    if-ne v0, v4, :cond_1

    sget-object v4, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_3

    const/16 v4, 0x27

    if-eq v1, v4, :cond_3

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    sget-object v4, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    if-eqz p2, :cond_2

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    goto :goto_2
.end method

.method private readInternalSubset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected token"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readElementDeclaration()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEntityDeclaration()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readNotationDeclaration()V

    goto :goto_0

    :pswitch_5
    sget-object v1, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    sget-object v1, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Parameter entity references are not supported"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v9, 0x5f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/16 v6, 0x3a

    const/4 v5, 0x1

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_0

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_1
    if-lt v0, v7, :cond_2

    if-le v0, v8, :cond_3

    :cond_2
    if-eq v0, v9, :cond_3

    if-eq v0, v6, :cond_3

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_3

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v3, :cond_5

    :cond_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :goto_1
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v4, :cond_7

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_7
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v4

    const/16 v3, 0x61

    if-lt v0, v3, :cond_8

    const/16 v3, 0x7a

    if-le v0, v3, :cond_b

    :cond_8
    if-lt v0, v7, :cond_9

    if-le v0, v8, :cond_b

    :cond_9
    const/16 v3, 0x30

    if-lt v0, v3, :cond_a

    const/16 v3, 0x39

    if-le v0, v3, :cond_b

    :cond_a
    if-eq v0, v9, :cond_b

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_b

    if-eq v0, v6, :cond_b

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_b

    const/16 v3, 0xb7

    if-lt v0, v3, :cond_c

    :cond_b
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_1

    :cond_c
    if-nez v1, :cond_d

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private readNotationDeclaration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    invoke-direct {p0, v1, v1}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected external ID or public ID for notation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    return-void
.end method

.method private readQuotedId(Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    sget-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    sget-object v0, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected a quoted string"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readUntil([CZ)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v6, p1

    add-int/2addr v5, v6

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v5, v6, :cond_5

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v3, v5, :cond_2

    if-eqz p2, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    array-length v5, p1

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Unexpected EOF"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    const/16 v5, 0x9

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_6

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v6, p1

    add-int/2addr v5, v6

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eqz p2, :cond_3

    if-nez v2, :cond_8

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v6, v0, v3

    invoke-virtual {v4, v5, v3, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v5, v0, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v9, 0x5d

    const/16 v8, 0x26

    const/16 v5, 0x20

    const/16 v6, 0xa

    const/4 v4, 0x0

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    const/4 v1, 0x0

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_0

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_5

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v2, v3, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v3, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_3
    const-string v3, ""

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v3, v7

    if-eq v0, p1, :cond_7

    if-ne p1, v5, :cond_6

    if-le v0, v5, :cond_7

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    :cond_6
    if-ne v0, v8, :cond_8

    if-nez p2, :cond_8

    :cond_7
    if-nez v1, :cond_1b

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    if-ne v0, v6, :cond_9

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    :cond_9
    if-eq v0, v8, :cond_d

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_d

    if-ne v0, v9, :cond_a

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    :cond_a
    const/16 v3, 0x25

    if-ne v0, v3, :cond_b

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq p4, v3, :cond_d

    :cond_b
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-gt v0, v5, :cond_c

    const/4 v3, 0x1

    :goto_2
    and-int/2addr v3, v7

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0

    :cond_c
    move v3, v4

    goto :goto_2

    :cond_d
    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_e
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v3, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    if-ne v0, v3, :cond_12

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_f

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    aget-char v3, v3, v7

    if-ne v3, v6, :cond_10

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    :cond_10
    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_11

    move v0, v5

    :goto_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_0

    :cond_11
    move v0, v6

    goto :goto_3

    :cond_12
    if-ne v0, v6, :cond_13

    const/16 v0, 0x20

    goto :goto_3

    :cond_13
    if-ne v0, v8, :cond_14

    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    invoke-direct {p0, v1, v4, p3, p4}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_16

    sget-object v3, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v3, :cond_15

    const-string v3, "Illegal: \"<\" inside attribute value"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_15
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_3

    :cond_16
    if-ne v0, v9, :cond_19

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x2

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v3, v7, :cond_17

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x1

    aget-char v3, v3, v7

    if-ne v3, v9, :cond_18

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v7, v7, 0x2

    aget-char v3, v3, v7

    const/16 v7, 0x3e

    if-ne v3, v7, :cond_18

    const-string v3, "Illegal: \"]]>\" outside CDATA section"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_18
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_3

    :cond_19
    const/16 v3, 0x25

    if-ne v0, v3, :cond_1a

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "This parser doesn\'t support parameter entities"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_1a
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1b
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private readXmlDeclaration()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x1

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "processing instructions must not start with xml"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    invoke-direct {p0, v5, v5}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt v2, v5, :cond_2

    const-string v2, "version"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "version expected"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    const/4 v0, 0x1

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_4

    const-string v2, "encoding"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v0, v2, :cond_5

    const-string v2, "standalone"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-object v1, v2, v3

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    :goto_0
    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v0, v2, :cond_6

    const-string v2, "unexpected attributes in XML declaration"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    :cond_6
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    return-void

    :cond_7
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal standalone value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v1, v2

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text must be defined after setInput()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, -0x4

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 4

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 4

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    :goto_1
    if-ltz v0, :cond_4

    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_9

    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_2

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v1, v4, 0x4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v4, :cond_d

    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_9
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_b

    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

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

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_8

    const-string v4, " in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    aput v3, p1, v2

    aput v3, p1, v4

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput v2, p1, v2

    array-length v2, v0

    aput v2, p1, v4

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Wrong event type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public keepNamespaceAttributes()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    return-void
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "unexpected type"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "precondition: START_TAG"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "END_TAG expected"

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_0

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->position:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-nez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez p1, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    const/4 v5, 0x0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v12, -0x1

    if-ne v6, v12, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    sparse-switch v5, :sswitch_data_0

    const/high16 v12, -0x1

    and-int/2addr v12, v5

    const/high16 v13, -0x101

    if-ne v12, v13, :cond_9

    const-string p2, "UTF-16BE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x2

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/16 v16, 0x3

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v12, v13

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    const-string p2, "UTF-8"

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v11, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v12

    const v13, 0xfeff

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-void

    :cond_6
    shl-int/lit8 v12, v5, 0x8

    or-int v5, v12, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v14, v6

    aput-char v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid stream or encoding: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v12

    :sswitch_0
    :try_start_1
    const-string p2, "UTF-32BE"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "UTF-32LE"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :sswitch_2
    const-string p2, "UTF-32BE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :sswitch_3
    const-string p2, "UTF-32LE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :sswitch_4
    const-string p2, "UTF-16BE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :sswitch_5
    const-string p2, "UTF-16LE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    const/16 v14, 0x3c

    aput-char v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x1

    const/16 v14, 0x3f

    aput-char v14, v12, v13

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :cond_7
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    move-object/from16 v0, p0

    iget v13, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v14, v6

    aput-char v14, v12, v13

    const/16 v12, 0x3e

    if-ne v6, v12, :cond_7

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v10, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    const-string v12, "encoding"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    move v8, v7

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-eq v12, v13, :cond_8

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x27

    if-eq v12, v13, :cond_8

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v10, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :cond_9
    const/high16 v12, -0x1

    and-int/2addr v12, v5

    const/high16 v13, -0x2

    if-ne v12, v13, :cond_a

    const-string p2, "UTF-16LE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    shl-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    or-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v12, v13

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_2

    :cond_a
    and-int/lit16 v12, v5, -0x100

    const v13, -0x10444100

    if-ne v12, v13, :cond_3

    const-string p2, "UTF-8"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    const/4 v15, 0x3

    aget-char v14, v14, v15

    aput-char v14, v12, v13

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/kxml2/io/KXmlParser;->limit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x20000 -> :sswitch_1
        0x3c -> :sswitch_2
        0xfeff -> :sswitch_0
        0x3c003f -> :sswitch_4
        0x3c000000 -> :sswitch_3
        0x3c003f00 -> :sswitch_5
        0x3c3f786d -> :sswitch_6
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    return-void

    :cond_0
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
