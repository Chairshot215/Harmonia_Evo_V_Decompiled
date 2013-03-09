.class public Lcom/htc/tasklib/source/TaskAppHelper;
.super Ljava/lang/Object;
.source "TaskAppHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTaskDBVersion(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public static onSyncCompleted(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "statusCode"
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.task.SYNC_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PKG_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "STATUS_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string v1, "ERROR_MSG"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
