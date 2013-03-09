.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final scratch:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    return-void
.end method

.method private static decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-array v0, p0, [B

    invoke-interface {p1, v0, v2, p0}, Ljava/io/DataInput;->readFully([BII)V

    new-array v1, p0, [C

    invoke-static {v0, v1, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method decodeUTF(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    if-eqz v0, :cond_3

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/PushbackInputStream;

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    :sswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/16 v2, 0x8

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v4, p1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    int-to-long v3, v2

    add-long/2addr v3, v0

    long-to-int v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method
