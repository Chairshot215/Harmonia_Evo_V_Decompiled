.class Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;
.super Ljava/lang/Object;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectPushFsmStore"
.end annotation


# instance fields
.field private mFsms:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 985
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 987
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 999
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    .line 1000
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    new-instance v1, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;-><init>(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$StateFactory;)V

    .line 1002
    .restart local v0       #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p2, p3, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :cond_0
    monitor-exit p0

    return-object v0

    .line 999
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFsms(Landroid/content/Context;)[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .locals 4
    .parameter "context"

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 991
    .local v2, size:I
    new-array v0, v2, [Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    .line 992
    .local v0, fsms:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 993
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    aput-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    :cond_0
    monitor-exit p0

    return-object v0

    .line 990
    .end local v0           #fsms:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isStopped()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1012
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 1013
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1014
    iget-object v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    .line 1015
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v3

    .line 1016
    .local v3, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    iget v5, v3, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v4, :cond_1

    const/4 v4, 0x0

    .line 1018
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v3           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :cond_0
    monitor-exit p0

    return v4

    .line 1013
    .restart local v0       #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .restart local v3       #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized remove(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->mFsms:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
