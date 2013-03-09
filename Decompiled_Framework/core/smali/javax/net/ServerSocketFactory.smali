.class public abstract Ljavax/net/ServerSocketFactory;
.super Ljava/lang/Object;
.source "ServerSocketFactory.java"


# static fields
.field private static defaultFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 2

    const-class v1, Ljavax/net/ServerSocketFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/net/DefaultServerSocketFactory;

    invoke-direct {v0}, Ljavax/net/DefaultServerSocketFactory;-><init>()V

    sput-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    :cond_0
    sget-object v0, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;
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
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unbound server sockets not implemented"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createServerSocket(I)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(II)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
