.class public Lcom/android/mms/ui/SmsSentNoServiceDialog;
.super Landroid/app/Activity;
.source "SmsSentNoServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;,
        Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final MOVE_TYPE_FAIL:I = 0x1

.field private static final MOVE_TYPE_QUEUE:I = 0x0

.field private static final SMS_SENT_NO_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmsSentNoServiceDialog"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field mDialogHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private msgQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->msgQueue:Ljava/util/Queue;

    .line 39
    new-instance v0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->mDialogHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->executeCancelListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsSentNoServiceDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 227
    :cond_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmsSentNoServiceDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while trying to dismiss progress dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private executeCancelListener()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method private showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->dismissProgressDialog()V

    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 214
    return-void
.end method


# virtual methods
.method public add(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->msgQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getFirst()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->msgQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->msgQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method public isMsgQueueEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog;->msgQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const-string v2, "SmsSentNoServiceDialog"

    const-string v3, "onCreate: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->add(Landroid/net/Uri;)V

    .line 180
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->showDialog(I)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 81
    const-string v0, "SmsSentNoServiceDialog"

    const-string v1, "onCreateDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901ab

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e6

    new-instance v2, Lcom/android/mms/ui/SmsSentNoServiceDialog$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog$3;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e7

    new-instance v2, Lcom/android/mms/ui/SmsSentNoServiceDialog$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog$2;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/SmsSentNoServiceDialog$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SmsSentNoServiceDialog$1;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 188
    const-string v0, "SmsSentNoServiceDialog"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    const-string v1, "SmsSentNoServiceDialog"

    const-string v2, "onNewIntent: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->add(Landroid/net/Uri;)V

    .line 73
    :cond_0
    return-void
.end method
