.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;
.super Ljava/lang/Object;
.source "EASPolicyConfirmDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 76
    invoke-static {}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASPolicyConfirmDialog"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$102(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->needShowConfirm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EASPolicyConfirmDialog"

    const-string v1, "show dialog"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #calls: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$200(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASPolicyConfirmDialog"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$102(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 103
    return-void
.end method
