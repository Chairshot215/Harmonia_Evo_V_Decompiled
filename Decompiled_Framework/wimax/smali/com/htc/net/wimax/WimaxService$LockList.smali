.class Lcom/htc/net/wimax/WimaxService$LockList;
.super Ljava/lang/Object;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/net/wimax/WimaxService$WimaxLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/net/wimax/WimaxService;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxService;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxService$LockList;->this$0:Lcom/htc/net/wimax/WimaxService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/net/wimax/WimaxService$WimaxLock;

    iget-object v2, v2, Lcom/htc/net/wimax/WimaxService$WimaxLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addLock(Lcom/htc/net/wimax/WimaxService$WimaxLock;)V
    .locals 2

    iget-object v1, p1, Lcom/htc/net/wimax/WimaxService$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public hasLocks()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLock(Landroid/os/IBinder;)Lcom/htc/net/wimax/WimaxService$WimaxLock;
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxService$WimaxLock;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
