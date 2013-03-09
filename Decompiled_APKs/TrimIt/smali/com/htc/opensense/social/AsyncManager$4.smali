.class Lcom/htc/opensense/social/AsyncManager$4;
.super Ljava/lang/Object;
.source "AsyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/AsyncManager;

.field final synthetic val$task:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/AsyncManager;Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/opensense/social/AsyncManager$4;->this$0:Lcom/htc/opensense/social/AsyncManager;

    iput-object p2, p0, Lcom/htc/opensense/social/AsyncManager$4;->val$task:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iput-object p3, p0, Lcom/htc/opensense/social/AsyncManager$4;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/AsyncManager$4;->val$task:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/AsyncManager$4;->val$uid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/opensense/social/AsyncManager$AsyncTask;->asyncGetDataList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SocialServiceManager"

    const-string v2, "remote error error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
