.class Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;
.super Ljava/lang/Object;
.source "EncodingInfo.java"

# interfaces
.implements Lorg/apache/xml/serializer/EncodingInfo$InEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodingImpl"
.end annotation


# static fields
.field private static final RANGE:I = 0x80


# instance fields
.field private m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_alreadyKnown:[Z

.field private m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_encoding:Ljava/lang/String;

.field private final m_explFirst:I

.field private final m_explLast:I

.field private final m_first:I

.field private final m_isInEncoding:[Z

.field private final m_last:I

.field final synthetic this$0:Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V
    .locals 7

    const/16 v6, 0x7f

    const/16 v5, 0x80

    const/4 v4, 0x1

    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    iput p3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    iput p4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    iput p5, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    add-int/lit8 v2, p5, 0x7f

    iput v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ltz v2, :cond_2

    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-gt v2, v6, :cond_2

    const-string v2, "UTF8"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-16"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ASCII"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "US-ASCII"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Unicode"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UNICODE"

    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const-string v3, "ISO8859"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v6, :cond_2

    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v0, v1, v2

    if-ltz v0, :cond_1

    if-ge v0, v5, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v4, v2, v0

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v4, v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v4, v2, v0

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;)V

    return-void
.end method


# virtual methods
.method public isInEncoding(C)Z
    .locals 8

    invoke-static {p1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(C)I

    move-result v5

    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v7

    :goto_0
    return v7

    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v6, v5, v0

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean v7, v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #calls: Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/EncodingInfo;->access$100(CLjava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v7, v0, v6

    goto :goto_0
.end method

.method public isInEncoding(CC)Z
    .locals 8

    invoke-static {p1, p2}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v5

    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v7

    :goto_0
    return v7

    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result v7

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int v6, v5, v0

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean v7, v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #calls: Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z
    invoke-static {p1, p2, v0}, Lorg/apache/xml/serializer/EncodingInfo;->access$200(CCLjava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean v7, v0, v6

    goto :goto_0
.end method
