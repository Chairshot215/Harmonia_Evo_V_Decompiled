.class public Lcom/android/htcdialer/NonPhoneActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "NonPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 40
    packed-switch p2, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htcdialer/NonPhoneActivity;->finish()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/android/htcdialer/NonPhoneActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 21
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 22
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/NonPhoneActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 23
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/NonPhoneActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 24
    const v1, 0x20c013c

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/NonPhoneActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 25
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    invoke-virtual {p0}, Lcom/android/htcdialer/NonPhoneActivity;->setupAlert()V

    .line 27
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 36
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htcdialer/NonPhoneActivity;->finish()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
