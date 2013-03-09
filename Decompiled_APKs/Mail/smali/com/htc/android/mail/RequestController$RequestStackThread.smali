.class Lcom/htc/android/mail/RequestController$RequestStackThread;
.super Ljava/lang/Thread;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestStackThread"
.end annotation


# static fields
.field private static final mWaitTime:J = 0x2710L


# instance fields
.field private mIsStop:Z

.field private mRequest:Lcom/htc/android/mail/Request;

.field private mRequestLock:Ljava/lang/Object;

.field private mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/RequestController$BlockingStack",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Lcom/htc/android/mail/server/Server;

.field private mUnknowHostLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2425
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    .line 2426
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mUnknowHostLock:Ljava/lang/Object;

    .line 2430
    new-instance v0, Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/RequestController$BlockingStack;-><init>(Lcom/htc/android/mail/RequestController;)V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    .line 2431
    return-void
.end method


# virtual methods
.method public declared-synchronized pushRequest(Lcom/htc/android/mail/Request;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2763
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "RequestStackThread push"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2767
    :goto_0
    monitor-exit p0

    return-void

    .line 2765
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->start()V

    .line 2766
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$BlockingStack;->push(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllRequest()V
    .locals 8

    .prologue
    .line 2794
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v5, :cond_1

    .line 2795
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/RequestController$BlockingStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 2796
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2797
    .local v3, r:Lcom/htc/android/mail/Request;
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2799
    .end local v3           #r:Lcom/htc/android/mail/Request;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v5}, Lcom/htc/android/mail/RequestController$BlockingStack;->clear()V

    .line 2802
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2803
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_2

    .line 2804
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2805
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2806
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_2

    .line 2807
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2811
    :cond_2
    monitor-exit v6

    .line 2812
    return-void

    .line 2811
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    .line 2770
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v5, :cond_2

    .line 2771
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/RequestController$BlockingStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 2772
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2773
    .local v3, r:Lcom/htc/android/mail/Request;
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 2774
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v5, v3}, Lcom/htc/android/mail/RequestController$BlockingStack;->remove(Ljava/lang/Object;)V

    .line 2775
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2772
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2780
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2781
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 2783
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2784
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2785
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 2786
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2790
    :cond_4
    monitor-exit v6

    .line 2791
    return-void

    .line 2790
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(JI)V
    .locals 11
    .parameter "accountId"
    .parameter "command"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    .line 2869
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v5, :cond_2

    .line 2870
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/RequestController$BlockingStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 2871
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2872
    .local v3, r:Lcom/htc/android/mail/Request;
    iget v5, v3, Lcom/htc/android/mail/Request;->command:I

    if-ne v5, p3, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 2874
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v5, v3}, Lcom/htc/android/mail/RequestController$BlockingStack;->remove(Ljava/lang/Object;)V

    .line 2875
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2871
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2880
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2881
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v5, v5, Lcom/htc/android/mail/Request;->command:I

    if-ne v5, p3, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 2883
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2884
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2885
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 2886
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2890
    :cond_4
    monitor-exit v6

    .line 2891
    return-void

    .line 2890
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(JJ)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 2840
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v6, :cond_2

    .line 2841
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/android/mail/Request;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/RequestController$BlockingStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/android/mail/Request;

    .line 2842
    .local v5, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 2843
    .local v4, r:Lcom/htc/android/mail/Request;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 2842
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2844
    :cond_1
    iget-object v6, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v7, "Mailbox"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    .line 2845
    .local v3, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v3, :cond_0

    .line 2846
    iget-wide v6, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p3

    if-nez v6, :cond_0

    .line 2847
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v6, v4}, Lcom/htc/android/mail/RequestController$BlockingStack;->remove(Ljava/lang/Object;)V

    .line 2848
    invoke-virtual {v4}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    goto :goto_1

    .line 2853
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v4           #r:Lcom/htc/android/mail/Request;
    .end local v5           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2854
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v6, v6, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-nez v6, :cond_4

    :cond_3
    monitor-exit v7

    .line 2866
    :goto_2
    return-void

    .line 2855
    :cond_4
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v6, v6, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v8, "Mailbox"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    .line 2856
    .restart local v3       #mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v3, :cond_5

    monitor-exit v7

    goto :goto_2

    .line 2865
    .end local v3           #mailbox:Lcom/htc/android/mail/Mailbox;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2857
    .restart local v3       #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_5
    :try_start_1
    iget-wide v8, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v8, p3

    if-nez v6, :cond_6

    .line 2858
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v6}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2859
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2860
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_6

    .line 2861
    const-string v6, "RequestController"

    const-string v8, "stop server"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v6}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2865
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public removeRequest(JLjava/lang/ref/WeakReference;)V
    .locals 11
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const-wide v9, 0x7fffffffffffffffL

    .line 2815
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v5, :cond_2

    .line 2816
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/RequestController$BlockingStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 2817
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2818
    .local v3, r:Lcom/htc/android/mail/Request;
    iget-object v5, v3, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 2820
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v5, v3}, Lcom/htc/android/mail/RequestController$BlockingStack;->remove(Ljava/lang/Object;)V

    .line 2821
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2817
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2826
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2827
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v5, v5, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 2829
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2830
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2831
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 2832
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2836
    :cond_4
    monitor-exit v6

    .line 2837
    return-void

    .line 2836
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(Lcom/htc/android/mail/Request;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    if-eqz v0, :cond_0

    .line 2896
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2897
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/RequestController$BlockingStack;->remove(Ljava/lang/Object;)V

    .line 2899
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2900
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2901
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2902
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2903
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_1

    .line 2904
    const-string v0, "RequestController"

    const-string v2, "stop server"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2908
    :cond_1
    monitor-exit v1

    .line 2909
    return-void

    .line 2908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 67

    .prologue
    .line 2434
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v63

    .line 2440
    .local v63, serverpool:Lcom/htc/android/mail/server/ServerPool;
    const/16 v56, -0x1

    .line 2441
    .local v56, messageWhat:I
    const/16 v57, -0x1

    .line 2442
    .local v57, messageWhatError:I
    const/16 v44, 0x0

    .line 2443
    .local v44, b:Landroid/os/Bundle;
    const/16 v54, 0x0

    .line 2444
    .local v54, isError:Z
    const/16 v49, 0x0

    .line 2445
    .local v49, exception:Ljava/lang/Exception;
    const/16 v60, 0x0

    .line 2446
    .local v60, redo:Z
    const/4 v8, 0x2

    .line 2448
    .local v8, ioRetryTime:I
    const/16 v61, 0x0

    .line 2449
    .local v61, request:Lcom/htc/android/mail/Request;
    const/16 v62, 0x0

    .line 2451
    .local v62, returnObject:Ljava/lang/Object;
    const/16 v43, 0x0

    .line 2453
    .end local v62           #returnObject:Ljava/lang/Object;
    .local v43, account:Lcom/htc/android/mail/Account;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z

    if-nez v3, :cond_6c

    .line 2454
    const/16 v24, 0x0

    .line 2455
    .local v24, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/16 v59, 0x0

    .line 2456
    .local v59, parameter:Landroid/os/Bundle;
    new-instance v44, Landroid/os/Bundle;

    .end local v44           #b:Landroid/os/Bundle;
    invoke-direct/range {v44 .. v44}, Landroid/os/Bundle;-><init>()V

    .line 2457
    .restart local v44       #b:Landroid/os/Bundle;
    const/16 v54, 0x0

    .line 2458
    const/16 v49, 0x0

    .line 2459
    const/16 v62, 0x0

    .line 2460
    .restart local v62       #returnObject:Ljava/lang/Object;
    const/16 v53, 0x0

    .line 2464
    .local v53, isBroadcast:Z
    if-nez v60, :cond_1b

    .line 2465
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "RequestController"

    const-string v10, "RequestStackThread pop"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 2467
    const/16 v61, 0x0

    .line 2469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestStack:Lcom/htc/android/mail/RequestController$BlockingStack;

    invoke-virtual {v3}, Lcom/htc/android/mail/RequestController$BlockingStack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/android/mail/Request;

    move-object/from16 v61, v0

    .line 2471
    invoke-virtual/range {v61 .. v61}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v43

    .line 2472
    if-nez v43, :cond_9

    .line 2703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_2

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_2
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_3

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_3
    if-eqz v24, :cond_8

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .local v66, what:I
    if-nez v54, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_85

    .line 2718
    :cond_4
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_86

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_1
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_6

    .line 2730
    :cond_5
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_6
    throw v24

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .local v51, handler:Landroid/os/Handler;
    if-nez v53, :cond_87

    .line 2737
    if-eqz v51, :cond_8

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_7
    move-object/from16 v0, v51

    move/from16 v1, v66

    throw v0

    move-result-object v27

    .line 2740
    .local v27, message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    throw v1

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    throw v0

    .line 2742
    throw v27

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_8
    :goto_2
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    .end local v62           #returnObject:Ljava/lang/Object;
    :goto_3
    #calls: Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1900(Lcom/htc/android/mail/RequestController;)V

    goto/16 :goto_0

    .line 2473
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 2474
    :try_start_2
    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 2475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    .line 2476
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2477
    const/4 v8, 0x2

    .line 2484
    :goto_4
    const/16 v60, 0x0

    .line 2485
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v24, v0

    .line 2486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->command:I

    move/from16 v47, v0

    .line 2487
    .local v47, command:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    move-object/from16 v59, v0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->messageWhat:I

    move/from16 v56, v0

    .line 2489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->messageWhatError:I

    move/from16 v57, v0

    .line 2490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v0, v3, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    move/from16 v55, v0

    .line 2491
    .local v55, isStopOnLeave:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    move-object/from16 v62, v0

    .line 2493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiLock()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$600(Lcom/htc/android/mail/RequestController;)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerLock()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$700(Lcom/htc/android/mail/RequestController;)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    #calls: Lcom/htc/android/mail/RequestController;->setActiveMode(Lcom/htc/android/mail/Request;)V
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$800(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Request;)V

    .line 2496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_b

    if-eqz v55, :cond_a

    if-eqz v55, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2498
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2499
    const/4 v3, 0x7

    move/from16 v0, v47

    if-ne v0, v3, :cond_23

    .line 2500
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2501
    .local v4, mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "Uid"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2502
    .local v5, uid:Ljava/lang/String;
    const-string v3, "MsgId"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2503
    .local v6, msgId:J
    const-string v3, "suggestCharset"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2504
    .local v9, charset:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual/range {v3 .. v9}, Lcom/htc/android/mail/server/Server;->fetchMailAgain(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2703
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v6           #msgId:J
    .end local v9           #charset:Ljava/lang/String;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_c

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_c
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_d

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_d
    if-eqz v24, :cond_12

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_88

    .line 2718
    :cond_e
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_89

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_6
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_f

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_10

    .line 2730
    :cond_f
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_10
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_8a

    .line 2737
    if-eqz v51, :cond_12

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_11
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_12
    :goto_7
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2476
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 2578
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_0
    move-exception v48

    .line 2579
    .local v48, e:Ljava/lang/InterruptedException;
    const/16 v54, 0x1

    .line 2580
    move-object/from16 v49, v48

    .line 2581
    :try_start_6
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "RequestController"

    const-string v10, "catch InterruptedExcepiton"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2703
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_14

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_14
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_15

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_15
    if-eqz v24, :cond_1a

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_70

    .line 2718
    :cond_16
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_71

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_8
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_17

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_18

    .line 2730
    :cond_17
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_18
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_72

    .line 2737
    if-eqz v51, :cond_1a

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_19
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_1a
    :goto_9
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2479
    .end local v48           #e:Ljava/lang/InterruptedException;
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_1b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 2480
    :try_start_8
    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 2481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    .line 2482
    monitor-exit v10

    goto/16 :goto_4

    :catchall_1
    move-exception v3

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 2583
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_1
    move-exception v48

    .line 2584
    .local v48, e:Ljava/security/cert/CertificateException;
    :try_start_a
    const-string v3, "RequestController"

    const-string v10, "CertificateException"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2586
    const/16 v54, 0x1

    .line 2587
    move-object/from16 v49, v48

    .line 2703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_1c

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_1c
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_1d

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_1d
    if-eqz v24, :cond_22

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_73

    .line 2718
    :cond_1e
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_74

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_a
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_20

    .line 2730
    :cond_1f
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_75

    .line 2737
    if-eqz v51, :cond_22

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_21
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_22
    :goto_b
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2506
    .end local v48           #e:Ljava/security/cert/CertificateException;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_23
    :try_start_b
    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x2

    if-eq v3, v10, :cond_24

    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x6

    if-ne v3, v10, :cond_39

    .line 2507
    :cond_24
    const/16 v3, 0x67

    move/from16 v0, v47

    if-eq v0, v3, :cond_25

    const/16 v3, 0x6e

    move/from16 v0, v47

    if-ne v0, v3, :cond_30

    .line 2509
    :cond_25
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2511
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "UID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2512
    .restart local v5       #uid:Ljava/lang/String;
    const-string v3, "MSGID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 2513
    .local v13, msgid:J
    const-string v3, "BodyID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 2514
    .local v15, bodyid:J
    const-string v3, "Index"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2515
    .local v17, index:Ljava/lang/String;
    const-string v3, "ENCODE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2516
    .local v18, encode:Ljava/lang/String;
    const-string v3, "CharsetOrFileName"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2518
    .local v19, charsetOrfilename:Ljava/lang/String;
    const-string v3, "MimeType"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2519
    .local v20, mimetype:Ljava/lang/String;
    const-string v3, "SaveAsFile"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 2521
    .local v21, saveAsFile:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    sget v22, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$2700()Lcom/htc/android/mail/RequestController;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v10 .. v25}, Lcom/htc/android/mail/server/Server;->fetchPartByUid(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 2524
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-wide v13, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v3, v10, v11, v12, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->sendReloadMailIntent(Landroid/content/Context;J[J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_5

    .line 2589
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v13           #msgid:J
    .end local v15           #bodyid:J
    .end local v17           #index:Ljava/lang/String;
    .end local v18           #encode:Ljava/lang/String;
    .end local v19           #charsetOrfilename:Ljava/lang/String;
    .end local v20           #mimetype:Ljava/lang/String;
    .end local v21           #saveAsFile:Z
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_2
    move-exception v48

    .line 2590
    .local v48, e:Ljava/io/IOException;
    const/16 v54, 0x1

    .line 2591
    move-object/from16 v49, v48

    .line 2593
    :try_start_c
    const-string v3, "RequestController"

    const-string v10, "catch IOException"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_26

    .line 2595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2598
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z

    if-nez v3, :cond_28

    .line 2599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_28

    .line 2600
    if-lez v8, :cond_63

    .line 2601
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "RequestController"

    const-string v10, "try again"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2602
    :cond_27
    const/16 v60, 0x1

    .line 2603
    add-int/lit8 v8, v8, -0x1

    .line 2605
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mUnknowHostLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7

    .line 2606
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mUnknowHostLock:Ljava/lang/Object;

    const-wide/16 v11, 0x2710

    invoke-virtual {v3, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 2607
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2703
    :cond_28
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_29

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_29
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_2a

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_2a
    if-eqz v24, :cond_2f

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_76

    .line 2718
    :cond_2b
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_77

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_d
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_2d

    .line 2730
    :cond_2c
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_2d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_78

    .line 2737
    if-eqz v51, :cond_2f

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_2e
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_2f
    :goto_e
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2526
    .end local v48           #e:Ljava/io/IOException;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_30
    const/16 v3, 0x6f

    move/from16 v0, v47

    if-ne v0, v3, :cond_b

    .line 2527
    :try_start_f
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2529
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "MailMessage"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Lcom/htc/android/mail/MailMessage;

    .line 2531
    .local v27, message:Lcom/htc/android/mail/MailMessage;
    const-string v3, "OnlyRelated"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    .line 2533
    .local v58, onlyRelated:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v25, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$2700()Lcom/htc/android/mail/RequestController;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v26, v4

    move-object/from16 v30, v24

    invoke-virtual/range {v25 .. v31}, Lcom/htc/android/mail/server/Server;->fetchMultiAttachments(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ZLcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_5

    .line 2629
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v27           #message:Lcom/htc/android/mail/MailMessage;
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v58           #onlyRelated:Ljava/lang/Boolean;
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_3
    move-exception v48

    .line 2630
    .local v48, e:Lcom/htc/android/mail/exception/MailNotFoundException;
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z

    if-nez v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_31

    .line 2631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x1

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2632
    if-eqz v24, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2633
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2634
    .restart local v51       #handler:Landroid/os/Handler;
    if-eqz v51, :cond_31

    .line 2635
    const/16 v3, 0xcc

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2703
    .end local v51           #handler:Landroid/os/Handler;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_32

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_32
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_33

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_33
    if-eqz v24, :cond_38

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_79

    .line 2718
    :cond_34
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_7a

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_f
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_35

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_36

    .line 2730
    :cond_35
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_36
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_7b

    .line 2737
    if-eqz v51, :cond_38

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_37
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .local v27, message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_38
    :goto_10
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2535
    .end local v48           #e:Lcom/htc/android/mail/exception/MailNotFoundException;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_39
    :try_start_11
    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_b

    .line 2536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 2538
    const/16 v3, 0x201

    move/from16 v0, v47

    if-ne v0, v3, :cond_44

    .line 2539
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "RequestController"

    const-string v10, "EXCHG_fetchMailAgain"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_3a
    const-string v3, "MsgId"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2541
    .restart local v6       #msgId:J
    const-string v3, "Uid"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2542
    .restart local v5       #uid:Ljava/lang/String;
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2543
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v28, v0

    const/16 v34, 0x0

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move/from16 v33, v8

    invoke-virtual/range {v28 .. v34}, Lcom/htc/android/mail/server/Server;->fetchMailAgain(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_5

    .line 2639
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v6           #msgId:J
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_4
    move-exception v48

    .line 2640
    .local v48, e:Lcom/htc/android/mail/exception/MailException;
    const/16 v54, 0x1

    .line 2641
    move-object/from16 v49, v48

    .line 2642
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z

    if-nez v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_3b

    .line 2643
    if-eqz v24, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2644
    move-object/from16 v0, v48

    instance-of v3, v0, Lcom/htc/android/mail/exception/AuthorizationException;

    if-eqz v3, :cond_66

    .line 2645
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2646
    .restart local v51       #handler:Landroid/os/Handler;
    if-eqz v51, :cond_3b

    .line 2647
    const/16 v3, 0xcd

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2674
    .end local v51           #handler:Landroid/os/Handler;
    :cond_3b
    :goto_11
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "RequestController"

    const-string v10, "catch MailException"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 2703
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_3d

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_3d
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_3e

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_3e
    if-eqz v24, :cond_43

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_7c

    .line 2718
    :cond_3f
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_7d

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_12
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_40

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_41

    .line 2730
    :cond_40
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_41
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_7e

    .line 2737
    if-eqz v51, :cond_43

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_42
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_43
    :goto_13
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2544
    .end local v48           #e:Lcom/htc/android/mail/exception/MailException;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_44
    const/16 v3, 0x1ff

    move/from16 v0, v47

    if-ne v0, v3, :cond_50

    .line 2545
    :try_start_13
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "RequestController"

    const-string v10, "EXCHG_getRemaining"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_45
    const-string v3, "MSGID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2547
    .restart local v6       #msgId:J
    const-string v3, "UID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2548
    .restart local v5       #uid:Ljava/lang/String;
    const-string v3, "collectionId"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2549
    .local v34, searchMailCollId:Ljava/lang/String;
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2550
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v28, v0

    check-cast v28, Lcom/htc/android/mail/server/ExchangeServer;

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-wide/from16 v31, v6

    move/from16 v33, v8

    invoke-virtual/range {v28 .. v34}, Lcom/htc/android/mail/server/ExchangeServer;->fetchMailItem(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)Z

    move-result v45

    .line 2552
    .local v45, bRet:Z
    if-nez v45, :cond_46

    .line 2553
    const/16 v54, 0x1

    goto/16 :goto_5

    .line 2556
    :cond_46
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-wide v6, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v3, v10, v11, v12, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->sendReloadMailIntent(Landroid/content/Context;J[J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_5

    .line 2675
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v6           #msgId:J
    .end local v34           #searchMailCollId:Ljava/lang/String;
    .end local v45           #bRet:Z
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_5
    move-exception v48

    .line 2676
    .local v48, e:Ljava/lang/OutOfMemoryError;
    const/16 v54, 0x1

    .line 2679
    :try_start_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v46

    .line 2680
    .local v46, comRun:Ljava/lang/Runtime;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Runtime;->gc()V

    .line 2681
    if-eqz v24, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2683
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2685
    .restart local v51       #handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x7

    if-eq v3, v10, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/16 v10, 0x1ff

    if-ne v3, v10, :cond_6b

    .line 2688
    :cond_47
    if-eqz v51, :cond_48

    .line 2689
    const/16 v3, 0xcf

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2703
    .end local v51           #handler:Landroid/os/Handler;
    :cond_48
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_49

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_49
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_4a

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_4a
    if-eqz v24, :cond_4f

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_7f

    .line 2718
    :cond_4b
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_80

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_15
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_4c

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_4d

    .line 2730
    :cond_4c
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_4d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_81

    .line 2737
    if-eqz v51, :cond_4f

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_4e
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_4f
    :goto_16
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2559
    .end local v46           #comRun:Ljava/lang/Runtime;
    .end local v48           #e:Ljava/lang/OutOfMemoryError;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_50
    const/16 v3, 0x1fe

    move/from16 v0, v47

    if-ne v0, v3, :cond_59

    .line 2560
    :try_start_15
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, "RequestController"

    const-string v10, "EXCHG_fetchMailAttach"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    :cond_51
    const-string v3, "MSGID"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    .line 2562
    .local v38, messageId:J
    const-string v3, "fileRef"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2563
    .local v40, fileRef:Ljava/lang/String;
    const-string v3, "attachType"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 2564
    .local v42, attachType:I
    const-string v3, "globalMail"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v41

    .line 2565
    .local v41, globalMail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v35, v0

    invoke-virtual/range {v43 .. v43}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v42}, Lcom/htc/android/mail/server/Server;->fetchAttachment(JJLjava/lang/String;ZI)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_5

    .line 2697
    .end local v38           #messageId:J
    .end local v40           #fileRef:Ljava/lang/String;
    .end local v41           #globalMail:Z
    .end local v42           #attachType:I
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v62           #returnObject:Ljava/lang/Object;
    :catch_6
    move-exception v48

    .line 2698
    .local v48, e:Ljava/lang/Exception;
    const/16 v54, 0x1

    .line 2699
    move-object/from16 v49, v48

    .line 2700
    :try_start_16
    const-string v3, "RequestController"

    const-string v10, "catch MailException"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_52

    .line 2704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_52
    if-nez v60, :cond_0

    .line 2710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_53

    .line 2711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_53
    if-eqz v24, :cond_58

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_54

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v3, :cond_82

    .line 2718
    :cond_54
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v3, -0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_83

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_17
    const/16 v3, 0x8

    move/from16 v0, v56

    if-eq v0, v3, :cond_55

    const/4 v3, 0x7

    move/from16 v0, v56

    if-ne v0, v3, :cond_56

    .line 2730
    :cond_55
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_56
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_84

    .line 2737
    if-eqz v51, :cond_58

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_57
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_58
    :goto_18
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_3

    .line 2566
    .end local v48           #e:Ljava/lang/Exception;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_59
    const/16 v3, 0x200

    move/from16 v0, v47

    if-ne v0, v3, :cond_b

    .line 2567
    :try_start_17
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "RequestController"

    const-string v10, "EXCHG_fetchMultiAttachments"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    :cond_5a
    const-string v3, "Mailbox"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 2569
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "MailMessage"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Lcom/htc/android/mail/MailMessage;

    .line 2570
    .local v27, message:Lcom/htc/android/mail/MailMessage;
    const-string v3, "OnlyRelated"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    .line 2571
    .restart local v58       #onlyRelated:Ljava/lang/Boolean;
    const-string v3, "globalMail"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    .line 2572
    .local v41, globalMail:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0, v10, v11}, Lcom/htc/android/mail/server/Server;->fetchMultiAttachments(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ZZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_5

    .line 2703
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v27           #message:Lcom/htc/android/mail/MailMessage;
    .end local v41           #globalMail:Ljava/lang/Boolean;
    .end local v47           #command:I
    .end local v55           #isStopOnLeave:Z
    .end local v58           #onlyRelated:Ljava/lang/Boolean;
    .end local v62           #returnObject:Ljava/lang/Object;
    :catchall_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v10, :cond_5b

    .line 2704
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    iput v11, v10, Lcom/htc/android/mail/server/Server;->state:I

    .line 2707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v10, v1, v11}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2709
    :cond_5b
    if-nez v60, :cond_62

    .line 2710
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v10, :cond_5c

    .line 2711
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v10}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2714
    :cond_5c
    if-eqz v24, :cond_61

    .line 2715
    const/16 v66, -0x1

    .line 2717
    .restart local v66       #what:I
    if-nez v54, :cond_5d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v10, v10, Lcom/htc/android/mail/Request;->isStopped:Z

    if-eqz v10, :cond_6d

    .line 2718
    :cond_5d
    const-string v10, "Return"

    const/4 v11, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2719
    const/4 v10, -0x1

    move/from16 v0, v57

    if-ne v0, v10, :cond_6e

    .line 2720
    move/from16 v66, v56

    .line 2728
    :goto_19
    const/16 v10, 0x8

    move/from16 v0, v56

    if-eq v0, v10, :cond_5e

    const/4 v10, 0x7

    move/from16 v0, v56

    if-ne v0, v10, :cond_5f

    .line 2730
    :cond_5e
    const-string v10, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v11, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10, v11}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 2735
    :cond_5f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2736
    .restart local v51       #handler:Landroid/os/Handler;
    if-nez v53, :cond_6f

    .line 2737
    if-eqz v51, :cond_61

    .line 2738
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_60

    const-string v10, "RequestController"

    const-string v11, "handler is not null in mainrequestthread"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :cond_60
    move-object/from16 v0, v51

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 2740
    .local v27, message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2742
    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 2753
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v66           #what:I
    :cond_61
    :goto_1a
    const/16 v24, 0x0

    .line 2754
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1900(Lcom/htc/android/mail/RequestController;)V

    .line 2703
    :cond_62
    throw v3

    .line 2607
    .local v48, e:Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_18
    monitor-exit v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_7

    .line 2608
    :catch_7
    move-exception v52

    .line 2609
    .local v52, ie:Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v3, "RequestController"

    const-string v10, "catch InterruptedException"

    move-object/from16 v0, v52

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_c

    .line 2612
    .end local v52           #ie:Ljava/lang/InterruptedException;
    :cond_63
    if-eqz v24, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2614
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2615
    .restart local v51       #handler:Landroid/os/Handler;
    if-eqz v51, :cond_28

    .line 2616
    move-object/from16 v0, v48

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_64

    .line 2617
    const/16 v3, 0xc9

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 2618
    :cond_64
    move-object/from16 v0, v48

    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_65

    .line 2619
    const/16 v3, 0xc8

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 2621
    :cond_65
    const/16 v3, 0xca

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 2649
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Lcom/htc/android/mail/exception/MailException;
    :cond_66
    move-object/from16 v0, v48

    instance-of v3, v0, Lcom/htc/android/mail/exception/MailBoxNotFoundException;

    if-eqz v3, :cond_68

    .line 2650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0b0060

    invoke-virtual {v3, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v64

    .line 2651
    .local v64, str:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v50

    .line 2652
    .local v50, folder:Ljava/lang/String;
    if-nez v50, :cond_67

    .line 2653
    const-string v50, ""

    .line 2655
    :cond_67
    const-string v3, "\\$folder"

    invoke-virtual/range {v48 .. v48}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 2656
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2657
    .restart local v51       #handler:Landroid/os/Handler;
    if-eqz v51, :cond_3b

    .line 2658
    const/16 v3, 0xce

    move-object/from16 v0, v51

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_11

    .line 2660
    .end local v50           #folder:Ljava/lang/String;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v64           #str:Ljava/lang/String;
    :cond_68
    move-object/from16 v0, v48

    instance-of v3, v0, Lcom/htc/android/mail/exception/ServerReplyErrorException;

    if-eqz v3, :cond_69

    .line 2661
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Handler;

    .line 2662
    .restart local v51       #handler:Landroid/os/Handler;
    if-eqz v51, :cond_3b

    .line 2663
    const/16 v3, 0xd2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0318

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v48 .. v48}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_11

    .line 2666
    .end local v51           #handler:Landroid/os/Handler;
    :cond_69
    new-instance v65, Ljava/io/StringWriter;

    invoke-direct/range {v65 .. v65}, Ljava/io/StringWriter;-><init>()V

    .line 2667
    .local v65, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v65

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/exception/MailException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2668
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, "RequestController"

    invoke-virtual/range {v65 .. v65}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    :cond_6a
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "RequestController"

    const-string v10, "catch MailException"

    move-object/from16 v0, v48

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_11

    .line 2692
    .end local v65           #sw:Ljava/io/StringWriter;
    .restart local v46       #comRun:Ljava/lang/Runtime;
    .local v48, e:Ljava/lang/OutOfMemoryError;
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_6b
    if-eqz v51, :cond_48

    .line 2693
    const/16 v3, 0xd0

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto/16 :goto_14

    .line 2760
    .end local v24           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .end local v46           #comRun:Ljava/lang/Runtime;
    .end local v48           #e:Ljava/lang/OutOfMemoryError;
    .end local v51           #handler:Landroid/os/Handler;
    .end local v53           #isBroadcast:Z
    .end local v59           #parameter:Landroid/os/Bundle;
    :cond_6c
    return-void

    .line 2725
    .restart local v24       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .restart local v53       #isBroadcast:Z
    .restart local v59       #parameter:Landroid/os/Bundle;
    .restart local v66       #what:I
    :cond_6d
    move/from16 v66, v56

    goto/16 :goto_19

    .line 2722
    :cond_6e
    move/from16 v66, v57

    goto/16 :goto_19

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_6f
    if-eqz v43, :cond_61

    .line 2746
    const/4 v10, 0x0

    move/from16 v0, v66

    invoke-static {v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_1a

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Ljava/lang/InterruptedException;
    :cond_70
    move/from16 v66, v56

    goto/16 :goto_8

    .line 2722
    :cond_71
    move/from16 v66, v57

    goto/16 :goto_8

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_72
    if-eqz v43, :cond_1a

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Ljava/security/cert/CertificateException;
    :cond_73
    move/from16 v66, v56

    goto/16 :goto_a

    .line 2722
    :cond_74
    move/from16 v66, v57

    goto/16 :goto_a

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_75
    if-eqz v43, :cond_22

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_b

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Ljava/io/IOException;
    :cond_76
    move/from16 v66, v56

    goto/16 :goto_d

    .line 2722
    :cond_77
    move/from16 v66, v57

    goto/16 :goto_d

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_78
    if-eqz v43, :cond_2f

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_e

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Lcom/htc/android/mail/exception/MailNotFoundException;
    :cond_79
    move/from16 v66, v56

    goto/16 :goto_f

    .line 2722
    :cond_7a
    move/from16 v66, v57

    goto/16 :goto_f

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_7b
    if-eqz v43, :cond_38

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_10

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Lcom/htc/android/mail/exception/MailException;
    :cond_7c
    move/from16 v66, v56

    goto/16 :goto_12

    .line 2722
    :cond_7d
    move/from16 v66, v57

    goto/16 :goto_12

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_7e
    if-eqz v43, :cond_43

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_13

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .restart local v46       #comRun:Ljava/lang/Runtime;
    .local v48, e:Ljava/lang/OutOfMemoryError;
    :cond_7f
    move/from16 v66, v56

    goto/16 :goto_15

    .line 2722
    :cond_80
    move/from16 v66, v57

    goto/16 :goto_15

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_81
    if-eqz v43, :cond_4f

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_16

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v46           #comRun:Ljava/lang/Runtime;
    .end local v51           #handler:Landroid/os/Handler;
    .local v48, e:Ljava/lang/Exception;
    :cond_82
    move/from16 v66, v56

    goto/16 :goto_17

    .line 2722
    :cond_83
    move/from16 v66, v57

    goto/16 :goto_17

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_84
    if-eqz v43, :cond_58

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_18

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v48           #e:Ljava/lang/Exception;
    .end local v51           #handler:Landroid/os/Handler;
    .restart local v62       #returnObject:Ljava/lang/Object;
    :cond_85
    move/from16 v66, v56

    goto/16 :goto_1

    .line 2722
    :cond_86
    move/from16 v66, v57

    goto/16 :goto_1

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_87
    if-eqz v43, :cond_8

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    throw v1

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    throw v0

    .line 2749
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    throw v3

    goto/16 :goto_2

    .line 2725
    .end local v27           #message:Landroid/os/Message;
    .end local v51           #handler:Landroid/os/Handler;
    .restart local v47       #command:I
    .restart local v55       #isStopOnLeave:Z
    :cond_88
    move/from16 v66, v56

    goto/16 :goto_6

    .line 2722
    :cond_89
    move/from16 v66, v57

    goto/16 :goto_6

    .line 2745
    .restart local v51       #handler:Landroid/os/Handler;
    :cond_8a
    if-eqz v43, :cond_12

    .line 2746
    const/4 v3, 0x0

    move/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v27

    .line 2747
    .restart local v27       #message:Landroid/os/Message;
    move-object/from16 v0, v62

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2748
    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v43

    move/from16 v1, v66

    move-object/from16 v2, v27

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_7
.end method

.method public stopRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2918
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2919
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v0, v0, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    iget v0, v0, Lcom/htc/android/mail/server/Server;->state:I

    if-ne v0, v2, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 2922
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 2923
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 2927
    :cond_0
    monitor-exit v1

    .line 2928
    return-void

    .line 2927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopRunning()V
    .locals 1

    .prologue
    .line 2912
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController$RequestStackThread;->mIsStop:Z

    .line 2913
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->interrupt()V

    .line 2914
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeAllRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2915
    monitor-exit p0

    return-void

    .line 2912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
