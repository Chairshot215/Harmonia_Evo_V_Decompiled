.class public Lcom/htc/android/mail/easclient/EASChangePwdDialog;
.super Landroid/app/ListActivity;
.source "EASChangePwdDialog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EASChangePwdDialog"


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASChangePwdDialog"

    const-string v1, "- onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->mAccountId:J

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->showDialog(I)V

    .line 32
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASChangePwdDialog"

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

    .line 37
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02ae

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02af

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0167

    new-instance v2, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog$3;-><init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    new-instance v2, Lcom/htc/android/mail/easclient/EASChangePwdDialog$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog$2;-><init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/easclient/EASChangePwdDialog$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog$1;-><init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V

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
    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 79
    return-void
.end method
