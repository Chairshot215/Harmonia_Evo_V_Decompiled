.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$Chunk;
    }
.end annotation


# static fields
.field private static final BAIS_BUF:Ljava/lang/reflect/Field; = null

.field private static final BAIS_POS:Ljava/lang/reflect/Field; = null

.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    const-string v0, "buf"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    const-string v0, "pos"

    invoke-static {v0}, Ljava/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    iget-object v0, p1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-void
.end method

.method private static exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v6, Ljava/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    sget-object v6, Ljava/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-nez v5, :cond_0

    array-length v6, v2

    if-ne v6, v1, :cond_0

    move-object v3, v2

    :goto_0
    int-to-long v6, v1

    invoke-virtual {p0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_0
    :try_start_2
    new-array v3, v1, [B

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    :try_start_0
    const-class v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    const/16 v8, 0x48

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    sget-object v9, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v8, v7, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v8, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v8, v5, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_2
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Ljava/util/jar/Manifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x48

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_0

    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    sget-object v3, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    iget-object v0, v0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Ljava/util/jar/Manifest;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Manifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    iget v0, p0, Ljava/util/jar/Manifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Ljava/util/jar/Manifest;->exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v1

    :goto_0
    array-length v3, v1

    if-nez v3, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v1, v3

    if-eqz v0, :cond_2

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_3

    :cond_2
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    :cond_3
    new-instance v2, Ljava/util/jar/InitManifest;

    iget-object v3, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/jar/InitManifest;-><init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V

    invoke-virtual {v2}, Ljava/util/jar/InitManifest;->getPos()I

    move-result v3

    iput v3, p0, Ljava/util/jar/Manifest;->mainEnd:I

    iget-object v3, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1
.end method

.method removeChunks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/util/jar/Manifest;->write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    return-void
.end method
