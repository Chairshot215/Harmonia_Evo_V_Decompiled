.class public Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;
.super Landroid/app/ListActivity;
.source "DownloadAttachmentSDFullDialog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DownloadAttachmentSDFullDialog"


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->mAccountId:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-boolean v0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentSDFullDialog"

    const-string v1, "- onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->mAccountId:J

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->showDialog(I)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentSDFullDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02e4

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0310

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    new-instance v2, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;-><init>(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    new-instance v2, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$2;-><init>(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$1;-><init>(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 90
    return-void
.end method
