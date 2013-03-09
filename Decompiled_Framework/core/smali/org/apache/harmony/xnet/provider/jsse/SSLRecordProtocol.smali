.class public Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;
.super Ljava/lang/Object;
.source "SSLRecordProtocol.java"


# static fields
.field protected static final MAX_CIPHERED_DATA_LENGTH:I = 0x4800

.field protected static final MAX_COMPRESSED_DATA_LENGTH:I = 0x4400

.field protected static final MAX_DATA_LENGTH:I = 0x4000

.field protected static final MAX_SSL_PACKET_SIZE:I = 0x4805

.field private static final change_cipher_spec_byte:[B


# instance fields
.field private activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private sessionWasChanged:Z

.field private version:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "record"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    return-void
.end method

.method private packetize(B[B[B)[B
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    new-array v0, v1, [B

    aput-byte p1, v0, v3

    if-eqz p2, :cond_0

    aget-byte v1, p2, v3

    aput-byte v1, v0, v2

    aget-byte v1, p2, v2

    aput-byte v1, v0, v4

    :goto_0
    const v1, 0xff00

    array-length v2, p3

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    array-length v2, p3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    aput-byte v5, v0, v2

    aput-byte v2, v0, v4

    goto :goto_0
.end method

.method private setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLRecordProtocol.setSession: Set pending session"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cipher name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v0, v0, v3

    if-ne v0, v3, :cond_2

    :cond_1
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    :goto_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    goto :goto_1
.end method


# virtual methods
.method protected alert(BB)V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLRecordProtocol.allert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    return-void
.end method

.method protected getChangeCipherSpecMesage(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)[B
    .locals 7

    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v1, :cond_1

    const/4 v1, 0x6

    new-array v0, v1, [B

    aput-byte v6, v0, v5

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "SSLRecordProtocol.getChangeCipherSpecMesage"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "activeWriteState = pendingConnectionState"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    invoke-virtual {v2, v6, v3, v5, v4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected getDataSize(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x5

    const/16 v0, 0x4800

    if-le p1, v0, :cond_1

    const/16 p1, 0x4000

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getContentSize(I)I

    move-result p1

    goto :goto_0
.end method

.method protected getMinRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getMinFragmentSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method protected getRecordSize(I)I
    .locals 3

    const/16 v1, 0x4800

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v2, :cond_1

    add-int/lit8 v0, p1, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getFragmentSize(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x5

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method protected setVersion([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    return-void
.end method

.method protected shutdown()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    :cond_0
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    :cond_1
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    :cond_2
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    return-void
.end method

.method protected unwrap()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0xa

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v5, "SSLRecordProtocol.unwrap: BEGIN ["

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint8()I

    move-result v2

    const/16 v4, 0x14

    if-lt v2, v4, :cond_1

    const/16 v4, 0x17

    if-le v2, v4, :cond_6

    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non v3.1 message type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v4, 0x80

    if-lt v2, v4, :cond_5

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v5

    or-int v1, v4, v5

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrapSSLv2([B)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v5, "SSLRecordProtocol:unwrap ] END, SSLv2 type"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    return v2

    :cond_5
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    :cond_6
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got the message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v5, v5, v8

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v5, v5, v9

    if-eq v4, v5, :cond_a

    :cond_8
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    :cond_9
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->skip(J)J

    :cond_a
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint16()I

    move-result v1

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TLSCiphertext.fragment["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_b
    const/16 v4, 0x4800

    if-le v1, v4, :cond_c

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string v6, "Received message is too big."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v4

    :cond_c
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    int-to-byte v4, v2

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[B)[B

    move-result-object v0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "TLSPlaintext.fragment:"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_e
    array-length v3, v0

    const/16 v4, 0x4000

    if-le v3, v4, :cond_f

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v4, 0x1e

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string v6, "Decompressed plain data is too big."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    :cond_f
    packed-switch v2, :pswitch_data_0

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->receiveChangeCipherSpec()V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "activeReadState = pendingConnectionState"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_10
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSLRecordProtocol:unwrap ] END, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    aget-byte v3, v0, v8

    aget-byte v4, v0, v9

    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alert(BB)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrap([B)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSCiphertext.unwrap: APP DATA["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    invoke-interface {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Appendable;->append([B)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B
    .locals 3

    const/16 v1, 0x4000

    invoke-interface {p2, v1}, Lorg/apache/harmony/xnet/provider/jsse/DataStream;->getData(I)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v1

    return-object v1
.end method

.method protected wrap(B[BII)[B
    .locals 7

    const/16 v6, 0x4000

    const/16 v5, 0x50

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSPlaintext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    :cond_0
    if-le p4, v6, :cond_1

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The provided chunk of data is too big: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > MAX_DATA_LENGTH == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    :cond_1
    move-object v0, p2

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x4800

    if-le v1, v2, :cond_2

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string v3, "The ciphered data increased more than on 1024 bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSCiphertext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v1

    return-object v1
.end method
