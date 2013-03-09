.class Ljava/net/InetAddress$1;
.super Ljava/lang/Thread;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/InetAddress;

.field final synthetic val$destinationAddress:Ljava/net/InetAddress;

.field final synthetic val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$sourceAddress:Ljava/net/InetAddress;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Ljava/net/InetAddress$1;->this$0:Ljava/net/InetAddress;

    iput-object p2, p0, Ljava/net/InetAddress$1;->val$destinationAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Ljava/net/InetAddress$1;->val$sourceAddress:Ljava/net/InetAddress;

    iput p4, p0, Ljava/net/InetAddress$1;->val$timeout:I

    iput-object p5, p0, Ljava/net/InetAddress$1;->val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljava/net/InetAddress$1;->this$0:Ljava/net/InetAddress;

    iget-object v1, p0, Ljava/net/InetAddress$1;->val$destinationAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Ljava/net/InetAddress$1;->val$sourceAddress:Ljava/net/InetAddress;

    iget v3, p0, Ljava/net/InetAddress$1;->val$timeout:I

    #calls: Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    invoke-static {v0, v1, v2, v3}, Ljava/net/InetAddress;->access$000(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetAddress$1;->val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v0, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
