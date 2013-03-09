.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionActivity"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRememberChoice:Landroid/widget/CheckBox;

.field private mRememberChoiceValue:Z

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 62
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createConnectionDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createConnectionDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0c0af5

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_0
    const v2, 0x7f0c07de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 139
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createPhonebookDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0c0af5

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_0
    const v2, 0x7f0c07e0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 148
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 76
    return-void
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 196
    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 200
    return-void
.end method

.method private onPositive()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 185
    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 188
    return-void
.end method

.method private savePhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 249
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 250
    .local v0, bluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 252
    .local v2, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 253
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 254
    :cond_0
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    if-eqz p3, :cond_1

    .line 215
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 219
    return-void

    .line 210
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showConnectionDialog()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 113
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 114
    const v1, 0x7f0c07dc

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createConnectionDisplayText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 116
    const v1, 0x7f0c075c

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 117
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    const v1, 0x7f0c075d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 119
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 122
    return-void
.end method

.method private showPhonebookDialog()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 126
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 127
    const v1, 0x7f0c07df

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createPhonebookDisplayText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 129
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 130
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 131
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 133
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const-string v3, "BluetoothPermissionActivity"

    const-string v4, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    const-string v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 93
    const-string v3, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 94
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, requestType:I
    if-ne v2, v6, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showConnectionDialog()V

    .line 106
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    goto :goto_0

    .line 99
    :cond_1
    if-ne v2, v4, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showPhonebookDialog()V

    goto :goto_1

    .line 102
    :cond_2
    const-string v3, "BluetoothPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 242
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method
