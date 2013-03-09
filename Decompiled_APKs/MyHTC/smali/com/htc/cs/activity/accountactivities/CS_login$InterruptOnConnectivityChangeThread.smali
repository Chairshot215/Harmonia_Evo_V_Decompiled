.class Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
.super Ljava/lang/Thread;
.source "CS_login.java"

# interfaces
.implements Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterruptOnConnectivityChangeThread"
.end annotation


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field private mConnChange:Z

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "runnable"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    .line 625
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 621
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->logger:Lcom/htc/cs/util/Logger;

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->mConnChange:Z

    .line 626
    invoke-static {p1}, Lcom/htc/cs/util/ConnectivityWatcher;->get(Landroid/content/Context;)Lcom/htc/cs/util/ConnectivityWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cs/util/ConnectivityWatcher;->register(Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;)V

    .line 627
    return-void
.end method


# virtual methods
.method public onConnectivityChange(Z)V
    .locals 5
    .parameter "isNetworkActive"

    .prologue
    const/4 v4, 0x1

    .line 631
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 632
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->mConnChange:Z

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Try to interrupt thread."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 634
    iput-boolean v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->mConnChange:Z

    .line 635
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->interrupt()V

    .line 637
    :cond_0
    return-void
.end method
