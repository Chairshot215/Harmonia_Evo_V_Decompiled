.class Ljava/net/Socks4Message;
.super Ljava/lang/Object;
.source "Socks4Message.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x100

.field static final COMMAND_BIND:I = 0x2

.field static final COMMAND_CONNECT:I = 0x1

.field private static final INDEX_COMMAND:I = 0x1

.field private static final INDEX_IP:I = 0x4

.field private static final INDEX_PORT:I = 0x2

.field private static final INDEX_USER_ID:I = 0x8

.field static final INDEX_VERSION:I = 0x0

.field private static final MAX_USER_ID_LENGTH:I = 0xf8

.field static final REPLY_LENGTH:I = 0x8

.field static final RETURN_CANNOT_CONNECT_TO_IDENTD:I = 0x5c

.field static final RETURN_DIFFERENT_USER_IDS:I = 0x5d

.field static final RETURN_FAILURE:I = 0x5b

.field static final RETURN_SUCCESS:I = 0x5a

.field private static final SOCKS_VERSION:I = 0x4


# instance fields
.field protected buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/net/Socks4Message;->setVersionNumber(I)V

    return-void
.end method

.method private getString(II)Ljava/lang/String;
    .locals 6

    move v0, p1

    add-int v1, v0, p2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljava/net/Socks4Message;->buffer:[B

    sub-int v4, v0, p1

    sget-object v5, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private getVersionNumber()I
    .locals 2

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method private setString(IILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    invoke-static {v1, v4, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/net/Socks4Message;->buffer:[B

    add-int v3, p1, v0

    aput-byte v4, v2, v3

    return-void
.end method

.method private setVersionNumber(I)V
    .locals 3

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    return-object v0
.end method

.method public getCommandOrResult()I
    .locals 2

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Success"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Failure to connect to SOCKS server"

    goto :goto_0

    :pswitch_1
    const-string v0, "Unable to connect to identd to verify user"

    goto :goto_0

    :pswitch_2
    const-string v0, "Failure - user ids do not match"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIP()I
    .locals 3

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x4

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    const/4 v0, 0x0

    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Ljava/net/Socks4Message;->buffer:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPort()I
    .locals 3

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0xf8

    invoke-direct {p0, v0, v1}, Ljava/net/Socks4Message;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCommandOrResult(I)V
    .locals 3

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public setIP([B)V
    .locals 3

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x5

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x6

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x7

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setPort(I)V
    .locals 4

    iget-object v0, p0, Ljava/net/Socks4Message;->buffer:[B

    const/4 v1, 0x2

    int-to-short v2, p1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0xf8

    invoke-direct {p0, v0, v1, p1}, Ljava/net/Socks4Message;->setString(IILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/net/Socks4Message;->getVersionNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socks4Message;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socks4Message;->getIP()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " User ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socks4Message;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
