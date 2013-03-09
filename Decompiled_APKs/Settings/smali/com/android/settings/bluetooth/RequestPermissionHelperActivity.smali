.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_INTERNAL_REQUEST_BT_ON:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

.field public static final ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

.field private static final TAG:Ljava/lang/String; = "RequestPermissionHelperActivity"


# instance fields
.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 149
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 150
    .local v1, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_2

    .line 151
    const-string v4, "RequestPermissionHelperActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 157
    .end local v1           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 142
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v5, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    .line 155
    .restart local v1       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 157
    goto :goto_1
.end method


# virtual methods
.method createDialog()V
    .locals 6

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 71
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 72
    const v2, 0x7f0c07d3

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v2, :cond_0

    .line 76
    const v2, 0x7f0c07d4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, messageText:Ljava/lang/String;
    :goto_0
    iput-object v0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 86
    const v2, 0x7f0c075c

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 87
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    const v2, 0x7f0c075d

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 89
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 92
    return-void

    .line 78
    .end local v0           #messageText:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v2, :cond_1

    .line 79
    const v2, 0x7f0c07d8

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0           #messageText:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c07d7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #messageText:Ljava/lang/String;
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 163
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onBackPressed()V

    .line 164
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const/4 v0, 0x0

    .line 103
    .local v0, btState:I
    const/16 v1, 0x1e

    .line 105
    .local v1, retryCount:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 106
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 112
    :cond_1
    :goto_1
    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 115
    :cond_2
    const/16 v2, -0x3e8

    .line 127
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .local v2, returnCode:I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_0

    .line 117
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :cond_3
    const/4 v2, 0x0

    .line 119
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 122
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .end local v2           #returnCode:I
    :pswitch_1
    const/4 v2, 0x0

    .line 123
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 108
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    goto :goto_0
.end method
