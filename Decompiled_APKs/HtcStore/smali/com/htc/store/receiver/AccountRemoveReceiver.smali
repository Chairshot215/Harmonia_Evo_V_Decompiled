.class public Lcom/htc/store/receiver/AccountRemoveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountRemoveReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_REMOVE_BROADCASTRECEIVER:Ljava/lang/String; = "com.htc.cs.connectedservice.accountremove"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/store/receiver/AccountRemoveReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/receiver/AccountRemoveReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 19
    const-string v0, "com.htc.cs.connectedservice.accountremove"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/htc/store/receiver/AccountRemoveReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clear device token due to account is logged out"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;-><init>(Lcom/htc/store/receiver/AccountRemoveReceiver;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/receiver/AccountRemoveReceiver$AccountRemoveAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    :cond_0
    return-void
.end method
