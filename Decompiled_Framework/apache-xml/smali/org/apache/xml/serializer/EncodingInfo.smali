.class public final Lorg/apache/xml/serializer/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/EncodingInfo$1;,
        Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;,
        Lorg/apache/xml/serializer/EncodingInfo$InEncoding;
    }
.end annotation


# instance fields
.field final javaName:Ljava/lang/String;

.field private m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_highCharInContiguousGroup:C

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    iput-char p3, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    return-void
.end method

.method static synthetic access$100(CLjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(CCLjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static inEncoding(CCLjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    new-array v1, v5, [C

    const/4 v5, 0x0

    aput-char p0, v1, v5

    const/4 v5, 0x1

    aput-char p1, v1, v5

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static inEncoding(CLjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    new-array v1, v5, [C

    const/4 v5, 0x0

    aput-char p0, v1, v5

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static inEncoding(C[B)Z
    .locals 4

    const/16 v3, 0x3f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    aget-byte v1, p1, v2

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    aget-byte v1, p1, v2

    if-ne v1, v3, :cond_3

    if-eq p0, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getHighChar()C
    .locals 1

    iget-char v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    return v0
.end method

.method public isInEncoding(C)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v0

    return v0
.end method

.method public isInEncoding(CC)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v0

    return v0
.end method
