.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "DefaultSSLServerSocketFactory.java"


# instance fields
.field private final errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

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
