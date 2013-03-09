.class public Lorg/apache/xml/utils/FastStringBuffer;
.super Ljava/lang/Object;
.source "FastStringBuffer.java"


# static fields
.field private static final CARRY_WS:I = 0x4

.field static final DEBUG_FORCE_FIXED_CHUNKSIZE:Z = true

.field static final DEBUG_FORCE_INIT_BITS:I = 0x0

.field static final SINGLE_SPACE:[C = null

.field public static final SUPPRESS_BOTH:I = 0x3

.field public static final SUPPRESS_LEADING_WS:I = 0x1

.field public static final SUPPRESS_TRAILING_WS:I = 0x2


# instance fields
.field m_array:[[C

.field m_chunkBits:I

.field m_chunkMask:I

.field m_chunkSize:I

.field m_firstFree:I

.field m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

.field m_lastChunk:I

.field m_maxChunkBits:I

.field m_rebundleBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    const/16 v1, 0xf

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/16 v0, 0xf

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    move p2, p1

    const/16 v0, 0x10

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    if-le p1, p2, :cond_0

    move p1, p2

    :cond_0
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput p3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v1, [C

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 3

    const/16 v0, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/16 v0, 0x10

    new-array v0, v0, [[C

    iput-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v0, v2, v0

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    return-void
.end method

.method private getChars(II[CI)V
    .locals 0

    return-void
.end method

.method static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_0

    move v2, v7

    :goto_0
    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_1

    move v3, v7

    :goto_1
    move v0, p1

    add-int v1, p1, p2

    if-eqz v2, :cond_4

    :goto_2
    if-ge v0, v1, :cond_2

    aget-char v8, p0, v0

    invoke-static {v8}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_4

    :goto_3
    return p4

    :cond_3
    if-eq v5, v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-ge v0, v1, :cond_8

    move v4, v0

    :goto_4
    if-ge v0, v1, :cond_5

    aget-char v8, p0, v0

    invoke-static {v8}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    if-eq v4, v0, :cond_7

    if-eqz v3, :cond_6

    sget-object v8, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    invoke-interface {p3, v8, v6, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    const/4 v3, 0x0

    :cond_6
    sub-int v8, v0, v4

    invoke-interface {p3, p0, v4, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_7
    move v5, v0

    :goto_5
    if-ge v0, v1, :cond_3

    aget-char v8, p0, v0

    invoke-static {v8}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    const/4 v6, 0x4

    :cond_9
    and-int/lit8 v7, p4, 0x2

    or-int p4, v6, v7

    goto :goto_3
.end method

.method public static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    return-void
.end method

.method private final setLength(ILorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, p1

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method


# virtual methods
.method public final append(C)V
    .locals 7

    const/4 v6, 0x0

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v3, v4

    :goto_0
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    aput-char p1, v0, v3

    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v1, v3

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    add-int/lit8 v3, v1, 0x10

    new-array v2, v3, [[C

    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v3, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v3, v4

    if-nez v0, :cond_3

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v3, v4, :cond_2

    new-instance v3, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v3, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v0, v5, [C

    aput-object v0, v3, v4

    :cond_3
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method

.method public final append(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    :cond_2
    :goto_1
    if-lez v5, :cond_7

    if-le v0, v5, :cond_3

    move v0, v5

    :cond_3
    add-int v6, v2, v0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    sub-int/2addr v5, v0

    add-int/2addr v2, v0

    if-lez v5, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_4

    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    :cond_4
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    if-nez v1, :cond_6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_5

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_5

    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    :cond_5
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    aput-object v1, v6, v7

    :cond_6
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_1

    :cond_7
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method

.method public final append(Ljava/lang/StringBuffer;)V
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    :cond_2
    :goto_1
    if-lez v5, :cond_7

    if-le v0, v5, :cond_3

    move v0, v5

    :cond_3
    add-int v6, v2, v0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    sub-int/2addr v5, v0

    add-int/2addr v2, v0

    if-lez v5, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_4

    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    :cond_4
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    if-nez v1, :cond_6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_5

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_5

    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    :cond_5
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    aput-object v1, v6, v7

    :cond_6
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_1

    :cond_7
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method

.method public final append(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 14

    const/4 v13, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v9, v10

    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v9, v10

    :cond_2
    :goto_1
    if-lez v8, :cond_9

    if-le v0, v8, :cond_3

    move v0, v8

    :cond_3
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    iget v10, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v6, v9, v10

    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v7, v2, v9

    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int v5, v9, v7

    if-le v5, v0, :cond_4

    move v5, v0

    :cond_4
    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v9, v9, v6

    iget-object v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v10, v10, v11

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {v9, v7, v10, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v5, v0, :cond_5

    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    add-int/lit8 v10, v6, 0x1

    aget-object v9, v9, v10

    iget-object v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v10, v10, v11

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v11, v5

    sub-int v12, v0, v5

    invoke-static {v9, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    sub-int/2addr v8, v0

    add-int/2addr v2, v0

    if-lez v8, :cond_2

    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v9

    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_6

    add-int/lit8 v9, v3, 0x10

    new-array v4, v9, [[C

    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v9, v13, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    :cond_6
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v9, v10

    if-nez v1, :cond_8

    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v10, 0x1

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v10, v11

    if-ne v9, v10, :cond_7

    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v9, v10, :cond_7

    new-instance v9, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v9, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    :cond_7
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v11, [C

    aput-object v1, v9, v10

    :cond_8
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v13, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto/16 :goto_1

    :cond_9
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v9, v0

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto/16 :goto_0
.end method

.method public final append([CII)V
    .locals 10

    const/4 v9, 0x0

    move v5, p3

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move v2, p2

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int v0, v6, v7

    :cond_1
    :goto_1
    if-lez v5, :cond_6

    if-le v0, v5, :cond_2

    move v0, v5

    :cond_2
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v6, v6, v7

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {p1, v2, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v0

    add-int/2addr v2, v0

    if-lez v5, :cond_1

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_3

    add-int/lit8 v6, v3, 0x10

    new-array v4, v6, [[C

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    :cond_3
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v6, v7

    if-nez v1, :cond_5

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int/2addr v7, v8

    if-ne v6, v7, :cond_4

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v6, v7, :cond_4

    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    :cond_4
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v1, v8, [C

    aput-object v1, v6, v7

    :cond_5
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method

.method public charAt(I)C
    .locals 3

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v1

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, v0

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v2, p1

    aget-char v1, v1, v2

    goto :goto_0
.end method

.method protected getOneChunkString(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, p1

    invoke-direct {v0, v1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v1, p1, v2

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v2

    add-int v2, v1, p2

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getOneChunkString(III)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v2, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 2

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p2, v0

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
    .locals 6

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v4, p2, v4

    add-int/2addr v4, p3

    add-int v1, v4, p4

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v2, v1, v4

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v3, v1, v4

    move v0, p2

    :goto_0
    if-ge v0, v2, :cond_1

    if-nez v0, :cond_0

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v5, p3

    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    :goto_1
    const/4 p3, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v4, v4, v0

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v5, p3

    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v5, v3, p3

    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    return-object p1

    :cond_3
    if-le v3, p3, :cond_2

    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v4, v4, v2

    sub-int v5, v3, p3

    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public isWhitespace(II)Z
    .locals 6

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v3, p1, v5

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v4, p1, v5

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int v0, v5, v4

    :goto_0
    if-lez p2, :cond_3

    if-gt p2, v0, :cond_0

    move v2, p2

    :goto_1
    if-nez v3, :cond_1

    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v4, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_2

    const/4 v5, 0x0

    :goto_3
    return v5

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v5, v5, v3

    invoke-static {v5, v4, v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v1

    goto :goto_2

    :cond_2
    sub-int/2addr p2, v2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public final length()I
    .locals 2

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v1, 0x10

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v1, v3

    return-void
.end method

.method public sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x1

    add-int v4, p2, p3

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v7

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v2, p2, v7

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v5, v4, v7

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v6, v4, v7

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    if-nez v0, :cond_0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v8, v2

    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result v3

    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v7, v7, v0

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v8, v2

    invoke-static {v7, v2, v8, p1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result v3

    goto :goto_1

    :cond_1
    if-nez v5, :cond_3

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v8, v6, v2

    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result v3

    :cond_2
    :goto_2
    return v3

    :cond_3
    if-le v6, v2, :cond_2

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v7, v7, v5

    sub-int v8, v6, v2

    or-int/lit8 v9, v3, 0x2

    invoke-static {v7, v2, v8, p1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result v3

    goto :goto_2
.end method

.method public sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v2, p2, v6

    add-int v6, v2, p3

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v1

    invoke-interface {p1, v6, v2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v3, p2, p3

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v4, v3, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v5, v3, v6

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    if-nez v0, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v7, v2

    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :goto_2
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v0

    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v7, v2

    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    sub-int v7, v5, v2

    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_4
    if-le v5, v2, :cond_0

    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v6, v6, v4

    sub-int v7, v5, v2

    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method

.method public final setLength(I)V
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v1, v2

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int v0, v1, v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v1, v3, v3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
