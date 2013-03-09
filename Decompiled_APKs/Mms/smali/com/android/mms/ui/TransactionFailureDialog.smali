.class public Lcom/android/mms/ui/TransactionFailureDialog;
.super Landroid/app/Activity;
.source "TransactionFailureDialog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransactionFailureDialog"


# instance fields
.field private mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRetryNowListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTxId:Ljava/lang/String;

.field private mTxType:I

.field private mTxUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/android/mms/ui/TransactionFailureDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TransactionFailureDialog$1;-><init>(Lcom/android/mms/ui/TransactionFailureDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mRetryNowListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance v0, Lcom/android/mms/ui/TransactionFailureDialog$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TransactionFailureDialog$2;-><init>(Lcom/android/mms/ui/TransactionFailureDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TransactionFailureDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TransactionFailureDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/mms/ui/TransactionFailureDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "tx_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxId:Ljava/lang/String;

    .line 67
    const-string v4, "tx_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxType:I

    .line 68
    const-string v4, "tx_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxUri:Ljava/lang/String;

    .line 70
    iget-object v4, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mTxType:I

    if-ne v4, v5, :cond_1

    .line 71
    :cond_0
    const-string v4, "TransactionFailureDialog"

    const-string v5, "Invalid transaction info."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/TransactionFailureDialog;->finish()V

    .line 96
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v4, "tx_err_mesg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, mesg:Ljava/lang/String;
    const-string v4, "tx_retry"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 79
    .local v3, retry:Z
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f09019f

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 81
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 83
    if-eqz v3, :cond_2

    .line 84
    const v4, 0x7f090238

    iget-object v5, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mRetryNowListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 85
    const v4, 0x7f090237

    iget-object v5, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 89
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 90
    new-instance v4, Lcom/android/mms/ui/TransactionFailureDialog$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/TransactionFailureDialog$3;-><init>(Lcom/android/mms/ui/TransactionFailureDialog;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 87
    :cond_2
    const v4, 0x104000a

    iget-object v5, p0, Lcom/android/mms/ui/TransactionFailureDialog;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method
