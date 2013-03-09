.class public Lcom/android/settings/wifi/IPTAlertDialog;
.super Lcom/htc/app/HtcAlertActivity;
.source "IPTAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "IPTAlertDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.stop_IPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/IPTAlertDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 33
    nop

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
    iget-object v0, p0, Lcom/android/settings/wifi/IPTAlertDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 22
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 23
    const v1, 0x7f0c0614

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IPTAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 24
    const v1, 0x7f0c0615

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IPTAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 26
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IPTAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 27
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 28
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IPTAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/wifi/IPTAlertDialog;->setupAlert()V

    .line 30
    return-void
.end method
