.class Lcom/htc/sdcardwizard/WaitingDialogActivity;
.super Landroid/app/Activity;
.source "WaitingDialogActivity.java"


# static fields
.field public static final DELETE_DIALOG:I = 0x7f040042

.field public static final LOADING_DIALOG:I = 0x7f040041

.field public static final MOVE_DIALOG:I = 0x7f040043

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private loadingDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LSCW/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/sdcardwizard/WaitingDialogActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized dismissWaitingDialog()V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->isWaitingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 42
    sget-object v0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissWaitingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized isWaitingDialog()Z
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 20
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->dismissWaitingDialog()V

    .line 21
    return-void
.end method

.method protected final declared-synchronized showWaitingDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->dismissWaitingDialog()V

    .line 25
    new-instance v0, Lcom/htc/sdcardwizard/WaitingDialogActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity$1;-><init>(Lcom/htc/sdcardwizard/WaitingDialogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 31
    iget-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    iget-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 35
    sget-object v0, Lcom/htc/sdcardwizard/WaitingDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "showWaitingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
