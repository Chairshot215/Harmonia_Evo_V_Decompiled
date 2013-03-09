.class final Ljavax/net/DefaultServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "DefaultServerSocketFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method
