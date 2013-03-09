.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    }
.end annotation


# instance fields
.field mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p1
.end method


# virtual methods
.method getListener(I)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putListener(Ljava/lang/Object;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
