.class public final Llibcore/util/ZoneInfoDB;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# static fields
.field private static final ALL_ZONE_DATA:Llibcore/io/MemoryMappedFile;

.field private static final INDEX_FILE_NAME:Ljava/lang/String;

.field private static final LOCK:Ljava/lang/Object;

.field private static final VERSION:Ljava/lang/String;

.field private static final ZONE_DIRECTORY_NAME:Ljava/lang/String;

.field private static final ZONE_FILE_NAME:Ljava/lang/String;

.field private static byteOffsets:[I

.field private static ids:[Ljava/lang/String;

.field private static rawUtcOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_ROOT"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/share/zoneinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llibcore/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zoneinfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llibcore/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zoneinfo.idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llibcore/util/ZoneInfoDB;->LOCK:Ljava/lang/Object;

    invoke-static {}, Llibcore/util/ZoneInfoDB;->readVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/util/ZoneInfoDB;->VERSION:Ljava/lang/String;

    invoke-static {}, Llibcore/util/ZoneInfoDB;->mapData()Llibcore/io/MemoryMappedFile;

    move-result-object v0

    sput-object v0, Llibcore/util/ZoneInfoDB;->ALL_ZONE_DATA:Llibcore/io/MemoryMappedFile;

    invoke-static {}, Llibcore/util/ZoneInfoDB;->readIndex()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    sget-object v3, Llibcore/util/ZoneInfoDB;->rawUtcOffsets:[I

    array-length v0, v3

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Llibcore/util/ZoneInfoDB;->rawUtcOffsets:[I

    aget v3, v3, v1

    if-ne v3, p0, :cond_0

    sget-object v3, Llibcore/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static getSystemDefault()Ljava/util/TimeZone;
    .locals 4

    sget-object v3, Llibcore/util/ZoneInfoDB;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "localtime"

    :cond_2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Llibcore/util/ZoneInfoDB;->makeTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/util/ZoneInfoDB;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private static makeTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v12, 0x0

    sget-object v1, Llibcore/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Llibcore/util/ZoneInfoDB;->ALL_ZONE_DATA:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v1}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v6

    sget-object v1, Llibcore/util/ZoneInfoDB;->byteOffsets:[I

    aget v1, v1, v8

    invoke-virtual {v6, v1}, Llibcore/io/BufferIterator;->skip(I)V

    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v1

    const v11, 0x545a6966

    if-ne v1, v11, :cond_0

    const/16 v0, 0x1c

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v9

    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v10

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    new-array v2, v9, [I

    array-length v0, v2

    invoke-virtual {v6, v2, v12, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    new-array v3, v9, [B

    array-length v0, v3

    invoke-virtual {v6, v3, v12, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    new-array v4, v10, [I

    new-array v5, v10, [B

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_2

    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    aput v0, v4, v7

    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readByte()B

    move-result v0

    aput-byte v0, v5, v7

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Llibcore/util/ZoneInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llibcore/util/ZoneInfo;-><init>(Ljava/lang/String;[I[B[I[B)V

    goto :goto_0
.end method

.method private static mapData()Llibcore/io/MemoryMappedFile;
    .locals 2

    :try_start_0
    sget-object v1, Llibcore/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    invoke-static {v1}, Llibcore/io/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static readIndex()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Llibcore/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    invoke-static {v2}, Llibcore/io/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;

    move-result-object v1

    invoke-static {v1}, Llibcore/util/ZoneInfoDB;->readIndex(Llibcore/io/MemoryMappedFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static readIndex(Llibcore/io/MemoryMappedFile;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v10

    const/16 v2, 0x28

    const/4 v1, 0x4

    const/16 v15, 0x28

    new-array v5, v15, [B

    invoke-virtual/range {p0 .. p0}, Llibcore/io/MemoryMappedFile;->size()J

    move-result-wide v15

    long-to-int v15, v15

    div-int/lit8 v14, v15, 0x34

    mul-int/lit8 v15, v14, 0x28

    new-array v6, v15, [C

    new-array v7, v14, [I

    const/4 v8, 0x0

    new-array v15, v14, [I

    sput-object v15, Llibcore/util/ZoneInfoDB;->byteOffsets:[I

    new-array v15, v14, [I

    sput-object v15, Llibcore/util/ZoneInfoDB;->rawUtcOffsets:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v14, :cond_3

    const/4 v15, 0x0

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v5, v15, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    sget-object v15, Llibcore/util/ZoneInfoDB;->byteOffsets:[I

    invoke-virtual {v10}, Llibcore/io/BufferIterator;->readInt()I

    move-result v16

    aput v16, v15, v4

    invoke-virtual {v10}, Llibcore/io/BufferIterator;->readInt()I

    move-result v13

    const/16 v15, 0x2c

    if-ge v13, v15, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    const-string v16, "length in index file < sizeof(tzhead)"

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    :cond_0
    sget-object v15, Llibcore/util/ZoneInfoDB;->rawUtcOffsets:[I

    invoke-virtual {v10}, Llibcore/io/BufferIterator;->readInt()I

    move-result v16

    aput v16, v15, v4

    array-length v12, v5

    const/4 v11, 0x0

    move v9, v8

    :goto_1
    if-ge v11, v12, :cond_1

    aget-byte v15, v5, v11

    if-nez v15, :cond_2

    :cond_1
    aput v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    move v8, v9

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v9, 0x1

    aget-byte v15, v5, v11

    and-int/lit16 v15, v15, 0xff

    int-to-char v15, v15

    aput-char v15, v6, v9

    add-int/lit8 v11, v11, 0x1

    move v9, v8

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v3, v6, v15, v8}, Ljava/lang/String;-><init>([CII)V

    new-array v15, v14, [Ljava/lang/String;

    sput-object v15, Llibcore/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_5

    sget-object v16, Llibcore/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    if-nez v4, :cond_4

    const/4 v15, 0x0

    :goto_3
    aget v17, v7, v4

    move/from16 v0, v17

    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v16, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v15, v4, -0x1

    aget v15, v7, v15

    goto :goto_3

    :cond_5
    return-void
.end method

.method private static readVersion()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Llibcore/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "zoneinfo.version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    sget-object v5, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
