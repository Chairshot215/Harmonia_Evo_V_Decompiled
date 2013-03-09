.class Ljavax/net/ssl/DefaultSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "DefaultSSLSocketFactory.java"


# instance fields
.field private final errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0
.end method
