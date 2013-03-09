.class Leu/chainfire/stickmount/StickMountActivity$MountAsync;
.super Landroid/os/AsyncTask;
.source "StickMountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/stickmount/StickMountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Leu/chainfire/stickmount/StickMountActivity;


# direct methods
.method constructor <init>(Leu/chainfire/stickmount/StickMountActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object p1, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 82
    iput-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    .line 83
    iput-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    .local v0, start:J
    :goto_0
    invoke-static {}, Leu/chainfire/stickmount/Util;->getNewDeviceCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    :goto_1
    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 114
    :cond_1
    const-wide/16 v2, 0x20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public go(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    iput-object p1, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->context:Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/stickmount/Util;->mountDevices(Landroid/content/Context;Z)V

    .line 131
    :cond_0
    :try_start_1
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    invoke-virtual {v0}, Leu/chainfire/stickmount/StickMountActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_1
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    .line 94
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "StickMount"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Searching ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 97
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$MountAsync;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method
