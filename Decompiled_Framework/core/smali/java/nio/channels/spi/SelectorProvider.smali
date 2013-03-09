.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;
    .locals 3

    const-class v2, Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/spi/SelectorProvider;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 2

    const-class v1, Ljava/nio/channels/spi/SelectorProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    invoke-static {v0}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    :cond_0
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/SelectorProviderImpl;

    invoke-direct {v0}, Ljava/nio/SelectorProviderImpl;-><init>()V

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    :cond_1
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
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
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
