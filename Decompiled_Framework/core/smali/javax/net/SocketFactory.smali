.class public abstract Ljavax/net/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# static fields
.field private static defaultFactory:Ljavax/net/SocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .locals 2

    const-class v1, Ljavax/net/SocketFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/net/DefaultSocketFactory;

    invoke-direct {v0}, Ljavax/net/DefaultSocketFactory;-><init>()V

    sput-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    :cond_0
    sget-object v0, Ljavax/net/SocketFactory;->defaultFactory:Ljavax/net/SocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unconnected sockets not implemented"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
