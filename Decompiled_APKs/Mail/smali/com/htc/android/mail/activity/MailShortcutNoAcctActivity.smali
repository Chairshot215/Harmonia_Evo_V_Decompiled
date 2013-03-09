.class public Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;
.super Landroid/app/Activity;
.source "MailShortcutNoAcctActivity.java"


# static fields
.field static final DIALOG_ACCOUNT_NOT_EXIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MailShortcutNoAccountActivity"


# instance fields
.field private cancelToFinish:Landroid/content/DialogInterface$OnClickListener;

.field private mUri:Landroid/net/Uri;

.field private okToDefaultAccount:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->mUri:Landroid/net/Uri;

    .line 64
    new-instance v0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$2;-><init>(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->cancelToFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    new-instance v0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$3;-><init>(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->okToDefaultAccount:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailShortcutNoAccountActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->mUri:Landroid/net/Uri;

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->showDialog(I)V

    .line 36
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02ac

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ad

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    iget-object v2, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->cancelToFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    iget-object v2, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->okToDefaultAccount:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$1;-><init>(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
