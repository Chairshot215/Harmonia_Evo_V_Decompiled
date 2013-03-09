.class Lcom/android/server/am/HtcAppErrorDialog$1;
.super Landroid/os/Handler;
.source "HtcAppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAppErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.feedback"

    const-string v4, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    #getter for: Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAppErrorDialog;->dismiss()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
