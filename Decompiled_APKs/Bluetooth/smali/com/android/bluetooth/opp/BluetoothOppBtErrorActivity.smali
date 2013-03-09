.class public Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothOppBtErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 64
    .local v2, p:Lcom/htc/app/HtcAlertController$AlertParams;
    iput-object v1, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 65
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mErrorContent:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 67
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 68
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->setupAlert()V

    .line 70
    return-void
.end method
