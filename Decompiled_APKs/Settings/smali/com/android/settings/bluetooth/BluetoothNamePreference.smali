.class public Lcom/android/settings/bluetooth/BluetoothNamePreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "BluetoothNamePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0xf8

.field private static final TAG:Ljava/lang/String; = "BluetoothNamePreference"


# instance fields
.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    return-void
.end method

.method private setSummaryToName()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 130
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 138
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/htc/preference/HtcEditTextPreference;->onClick()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 122
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 143
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 95
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v6, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 79
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 80
    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v8, 0xf8

    invoke-direct {v7, v8}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 84
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 86
    .local v1, d:Landroid/app/Dialog;
    instance-of v6, v1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_0

    .line 87
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 88
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    return-void

    .restart local v0       #b:Landroid/widget/Button;
    :cond_1
    move v4, v5

    .line 88
    goto :goto_0
.end method
