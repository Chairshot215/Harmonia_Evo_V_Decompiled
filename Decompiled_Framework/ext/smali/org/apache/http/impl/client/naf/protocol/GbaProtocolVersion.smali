.class public Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;
.super Lorg/apache/http/ProtocolVersion;
.source "GbaProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sget-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;->protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpVersion;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getMinor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sget-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;->protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpVersion;[B)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/http/HttpVersion;->getMinor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    invoke-direct {v0, p2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;->protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-void
.end method


# virtual methods
.method public getProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;->protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaProtocolVersion [protocolId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/protocol/GbaProtocolVersion;->protocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
