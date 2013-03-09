.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDeviceNamePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->initialize()V

    .line 72
    return-void
.end method

.method private final initialize()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 83
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 90
    const-string v0, "device_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->setKey(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->setSelectable(Z)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0496

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onPause(Landroid/app/Activity;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 116
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 126
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "rename device"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onResume(Landroid/app/Activity;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 122
    return-void
.end method
