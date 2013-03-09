.class Ljava/lang/Daemons$ReferenceQueueDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;
    .locals 1

    sget-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-object v0
.end method

.method private enqueue(Ljava/lang/ref/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-ne p1, v1, :cond_0

    move-object v0, p1

    iput-object v2, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object v1, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object v2, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-class v3, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    const/4 v2, 0x0

    sput-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, v1}, Ljava/lang/Daemons$ReferenceQueueDaemon;->enqueue(Ljava/lang/ref/Reference;)V

    goto :goto_0

    :cond_1
    return-void
.end method
