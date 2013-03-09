.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothOppBtEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v1

    .line 73
    .local v1, mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->enableBluetooth()V

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 84
    .end local v0           #in:Landroid/content/Intent;
    .end local v1           #mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 58
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 65
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->setupAlert()V

    .line 67
    return-void
.end method
