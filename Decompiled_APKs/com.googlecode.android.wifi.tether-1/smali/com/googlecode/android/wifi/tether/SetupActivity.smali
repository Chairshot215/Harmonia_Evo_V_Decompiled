.class public Lcom/googlecode/android/wifi/tether/SetupActivity;
.super Landroid/preference/PreferenceActivity;
.source "SetupActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static ID_DIALOG_RESTARTING:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TETHER -> SetupActivity"


# instance fields
.field private application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private currentChannel:Ljava/lang/String;

.field private currentDevice:Ljava/lang/String;

.field private currentDriverReload:Z

.field private currentEncryptionEnabled:Z

.field private currentHideSSID:Z

.field private currentLAN:Ljava/lang/String;

.field private currentMssclampingEnabled:Z

.field private currentPassphrase:Ljava/lang/String;

.field private currentPrimaryDNS:Ljava/lang/String;

.field private currentRoutefixEnabled:Z

.field private currentSSID:Ljava/lang/String;

.field private currentSecondaryDNS:Ljava/lang/String;

.field private currentSetup:Ljava/lang/String;

.field private currentTransmitPower:Ljava/lang/String;

.field displayToastMessageHandler:Landroid/os/Handler;

.field private intentFilter:Landroid/content/IntentFilter;

.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field private keepaliveshutdown:Ljava/lang/String;

.field private keepaliveshutdownoption:Landroid/preference/ListPreference;

.field private prefPassphrase:Landroid/preference/EditTextPreference;

.field private prefPrimaryDNS:Landroid/preference/EditTextPreference;

.field private prefSSID:Landroid/preference/EditTextPreference;

.field private prefSecondaryDNS:Landroid/preference/EditTextPreference;

.field private progressDialog:Landroid/app/ProgressDialog;

.field restartingDialogHandler:Landroid/os/Handler;

.field updateSettingsMenuHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    sput v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->ID_DIALOG_RESTARTING:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 246
    new-instance v0, Lcom/googlecode/android/wifi/tether/SetupActivity$1;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$1;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->restartingDialogHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lcom/googlecode/android/wifi/tether/SetupActivity$2;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$2;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/googlecode/android/wifi/tether/SetupActivity$3;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$3;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 945
    new-instance v0, Lcom/googlecode/android/wifi/tether/SetupActivity$4;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$4;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenuHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->ID_DIALOG_RESTARTING:I

    return v0
.end method

.method static synthetic access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    return-object v0
.end method

.method static synthetic access$10(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdown:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentChannel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentEncryptionEnabled:Z

    return v0
.end method

.method static synthetic access$15(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentEncryptionEnabled:Z

    return-void
.end method

.method static synthetic access$16(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z

    return v0
.end method

.method static synthetic access$17(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z

    return-void
.end method

.method static synthetic access$18(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDriverReload:Z

    return v0
.end method

.method static synthetic access$19(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDriverReload:Z

    return-void
.end method

.method static synthetic access$2(Lcom/googlecode/android/wifi/tether/SetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenu()V

    return-void
.end method

.method static synthetic access$20(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPassphrase:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentTransmitPower:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentTransmitPower:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentLAN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentLAN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentMssclampingEnabled:Z

    return v0
.end method

.method static synthetic access$27(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentMssclampingEnabled:Z

    return-void
.end method

.method static synthetic access$28(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentRoutefixEnabled:Z

    return v0
.end method

.method static synthetic access$29(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentRoutefixEnabled:Z

    return-void
.end method

.method static synthetic access$3(Lcom/googlecode/android/wifi/tether/SetupActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$30(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPrimaryDNS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPrimaryDNS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSecondaryDNS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSecondaryDNS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDevice:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSetup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSetup:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSSID:Ljava/lang/String;

    return-void
.end method

.method private updateConfiguration(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 539
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/SetupActivity$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/googlecode/android/wifi/tether/SetupActivity$13;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 942
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 943
    return-void
.end method

.method private updateSettingsMenu()V
    .locals 29

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 297
    .local v14, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 300
    :cond_0
    const v26, 0x7f03000a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->addPreferencesFromResource(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "setuppref"

    const-string v28, "auto"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 305
    .local v16, setupMethod:Ljava/lang/String;
    const-string v26, "auto"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getDeviceParameters()Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getAutoSetupMethod()Ljava/lang/String;

    move-result-object v16

    .line 310
    :cond_1
    const-string v26, "passphrasepref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v12

    .line 314
    .local v12, origTextColorPassphrase:I
    const-string v26, "netd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "netdndc"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "hostapd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "softap"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 316
    :cond_2
    const-string v26, "TETHER -> SetupActivity"

    const-string v27, "Adding validators for WPA-Encryption."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f07008d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " (WPA/WPA2-PSK)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    const v27, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v26

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/googlecode/android/wifi/tether/SetupActivity$9;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;I)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity$10;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    :goto_0
    const-string v26, "wext"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 407
    const-string v26, "wifiprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceGroup;

    .line 408
    .local v25, wifiGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "txpowerpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    .line 409
    .local v24, txpowerPreference:Landroid/preference/ListPreference;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    .end local v24           #txpowerPreference:Landroid/preference/ListPreference;
    .end local v25           #wifiGroup:Landroid/preference/PreferenceGroup;
    :cond_3
    const-string v26, "wext"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 414
    const-string v26, "wifiprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceGroup;

    .line 415
    .restart local v25       #wifiGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "encsetuppref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 416
    .local v6, encsetupPreference:Landroid/preference/ListPreference;
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    .end local v6           #encsetupPreference:Landroid/preference/ListPreference;
    .end local v25           #wifiGroup:Landroid/preference/PreferenceGroup;
    :cond_4
    const-string v26, "softap"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 421
    const-string v26, "wifiprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceGroup;

    .line 422
    .restart local v25       #wifiGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "hidessidpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 423
    .local v7, hideSSIDPreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    .end local v7           #hideSSIDPreference:Landroid/preference/CheckBoxPreference;
    .end local v25           #wifiGroup:Landroid/preference/PreferenceGroup;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isMSSClampingSupported()Z

    move-result v26

    if-nez v26, :cond_6

    .line 428
    const-string v26, "lanprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 429
    .local v9, lanGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "mssclampingpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 430
    .local v11, mssClampingPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    .end local v9           #lanGroup:Landroid/preference/PreferenceGroup;
    .end local v11           #mssClampingPreference:Landroid/preference/CheckBoxPreference;
    :cond_6
    const-string v26, "softap"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string v26, "netd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string v26, "netdndc"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 435
    const-string v26, "wifiprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceGroup;

    .line 436
    .restart local v25       #wifiGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "driverreloadpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 437
    .local v13, reloadWifiPreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    .end local v13           #reloadWifiPreference:Landroid/preference/CheckBoxPreference;
    .end local v25           #wifiGroup:Landroid/preference/PreferenceGroup;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isRoutefixSupported()Z

    move-result v26

    if-nez v26, :cond_8

    .line 442
    const-string v26, "lanprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 443
    .restart local v9       #lanGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "routefixpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 444
    .local v15, routeFixPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    .end local v9           #lanGroup:Landroid/preference/PreferenceGroup;
    .end local v15           #routeFixPreference:Landroid/preference/CheckBoxPreference;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v26

    const-string v27, "SPH-D700"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 448
    const-string v26, "miscprefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 449
    .local v10, miscGroup:Landroid/preference/PreferenceGroup;
    const-string v26, "enable4gpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 450
    .local v5, enable4gPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v10, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    .end local v5           #enable4gPreference:Landroid/preference/CheckBoxPreference;
    .end local v10           #miscGroup:Landroid/preference/PreferenceGroup;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "keepalivecheckoptionpref"

    const-string v28, "karetry"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "karetry"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "keepalivecheckprefcheckintervalshutdownpref"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    :goto_1
    const-string v26, "channelpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 463
    .local v3, channelpref:Landroid/preference/ListPreference;
    const v26, 0x7f08000b

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, channelnames:[Ljava/lang/String;
    const v26, 0x7f08000a

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, channelvalues:[Ljava/lang/String;
    const-string v26, "softap"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 466
    array-length v0, v2

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 467
    .local v20, targetentries:[Ljava/lang/CharSequence;
    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 468
    .local v21, targetentryvalues:[Ljava/lang/CharSequence;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    array-length v0, v2

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_d

    .line 481
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 486
    const-string v26, "setuppref"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    .line 487
    .local v18, setuppref:Landroid/preference/ListPreference;
    const v26, 0x7f080007

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 488
    .local v17, setupnames:[Ljava/lang/String;
    const v26, 0x7f080011

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 490
    .local v19, setupvalues:[Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v22, tmpsetupnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v23, tmpsetupvalues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_f

    .line 527
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 528
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 529
    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_17

    .line 533
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 534
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 536
    return-void

    .line 362
    .end local v2           #channelnames:[Ljava/lang/String;
    .end local v3           #channelpref:Landroid/preference/ListPreference;
    .end local v4           #channelvalues:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v17           #setupnames:[Ljava/lang/String;
    .end local v18           #setuppref:Landroid/preference/ListPreference;
    .end local v19           #setupvalues:[Ljava/lang/String;
    .end local v20           #targetentries:[Ljava/lang/CharSequence;
    .end local v21           #targetentryvalues:[Ljava/lang/CharSequence;
    .end local v22           #tmpsetupnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23           #tmpsetupvalues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const-string v26, "TETHER -> SetupActivity"

    const-string v27, "Adding validators for WEP-Encryption."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    const v28, 0x7f07008d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " (WEP 128-bit)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    const v27, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v26

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$11;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/googlecode/android/wifi/tether/SetupActivity$11;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;I)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;

    move-object/from16 v26, v0

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$12;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity$12;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 457
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "keepalivecheckprefcheckintervalshutdownpref"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 469
    .restart local v2       #channelnames:[Ljava/lang/String;
    .restart local v3       #channelpref:Landroid/preference/ListPreference;
    .restart local v4       #channelvalues:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v20       #targetentries:[Ljava/lang/CharSequence;
    .restart local v21       #targetentryvalues:[Ljava/lang/CharSequence;
    :cond_d
    add-int/lit8 v26, v8, -0x1

    aget-object v27, v2, v8

    aput-object v27, v20, v26

    .line 470
    add-int/lit8 v26, v8, -0x1

    aget-object v27, v4, v8

    aput-object v27, v21, v26

    .line 468
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 474
    .end local v8           #i:I
    .end local v20           #targetentries:[Ljava/lang/CharSequence;
    .end local v21           #targetentryvalues:[Ljava/lang/CharSequence;
    :cond_e
    array-length v0, v2

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 475
    .restart local v20       #targetentries:[Ljava/lang/CharSequence;
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 476
    .restart local v21       #targetentryvalues:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_5
    array-length v0, v2

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_a

    .line 477
    aget-object v26, v2, v8

    aput-object v26, v20, v8

    .line 478
    aget-object v26, v4, v8

    aput-object v26, v21, v8

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 494
    .restart local v17       #setupnames:[Ljava/lang/String;
    .restart local v18       #setuppref:Landroid/preference/ListPreference;
    .restart local v19       #setupvalues:[Ljava/lang/String;
    .restart local v22       #tmpsetupnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23       #tmpsetupvalues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    aget-object v26, v19, v8

    const-string v27, "netd"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isNetdSupported()Z

    move-result v26

    if-nez v26, :cond_12

    .line 492
    :cond_10
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 499
    :cond_11
    aget-object v26, v19, v8

    const-string v27, "netdndc"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isNetdNdcSupported()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 524
    :cond_12
    aget-object v26, v17, v8

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    aget-object v26, v19, v8

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 504
    :cond_13
    aget-object v26, v19, v8

    const-string v27, "hostapd"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isHostapdSupported()Z

    move-result v26

    if-nez v26, :cond_12

    goto :goto_6

    .line 509
    :cond_14
    aget-object v26, v19, v8

    const-string v27, "softap"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isSoftapSupported()Z

    move-result v26

    if-nez v26, :cond_12

    goto :goto_6

    .line 514
    :cond_15
    aget-object v26, v19, v8

    const-string v27, "softap_samsung"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isSoftapSamsungSupported()Z

    move-result v26

    if-nez v26, :cond_12

    goto/16 :goto_6

    .line 519
    :cond_16
    aget-object v26, v19, v8

    const-string v27, "wext"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isWextSupported()Z

    move-result v26

    if-nez v26, :cond_12

    goto/16 :goto_6

    .line 530
    :cond_17
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    aput-object v26, v20, v8

    .line 531
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    aput-object v26, v21, v8

    .line 529
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 95
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "devicepref"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDevice:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "setuppref"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSetup:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "ssidpref"

    const-string v3, "AndroidTether"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSSID:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "channelpref"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentChannel:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "passphrasepref"

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "abcdefghijklm"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPassphrase:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "lannetworkpref"

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "192.168.2.0/24"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentLAN:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "encpref"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentEncryptionEnabled:Z

    .line 102
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "txpowerpref"

    const-string v3, "disabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentTransmitPower:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "mssclampingpref"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentMssclampingEnabled:Z

    .line 104
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "routefixpref"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentRoutefixEnabled:Z

    .line 105
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "dnsprimarypref"

    const-string v3, "8.8.8.8"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPrimaryDNS:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "dnssecondarypref"

    const-string v3, "8.8.4.4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSecondaryDNS:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "hidessidpref"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z

    .line 108
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "driverreloadpref"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDriverReload:Z

    .line 109
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "keepalivecheckoptionpref"

    const-string v3, "karetry"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdown:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenu()V

    .line 115
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-boolean v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlSupported:Z

    if-nez v1, :cond_0

    .line 116
    const-string v1, "securityprefs"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 117
    .local v0, securityGroup:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 121
    .end local v0           #securityGroup:Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v1, "ssidpref"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefSSID:Landroid/preference/EditTextPreference;

    .line 122
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefSSID:Landroid/preference/EditTextPreference;

    .line 123
    new-instance v2, Lcom/googlecode/android/wifi/tether/SetupActivity$5;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$5;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string v1, "dnsprimarypref"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPrimaryDNS:Landroid/preference/EditTextPreference;

    .line 138
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPrimaryDNS:Landroid/preference/EditTextPreference;

    .line 139
    new-instance v2, Lcom/googlecode/android/wifi/tether/SetupActivity$6;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$6;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v1, "dnssecondarypref"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefSecondaryDNS:Landroid/preference/EditTextPreference;

    .line 154
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->prefSecondaryDNS:Landroid/preference/EditTextPreference;

    .line 155
    new-instance v2, Lcom/googlecode/android/wifi/tether/SetupActivity$7;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$7;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v1, "keepalivecheckoptionpref"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdownoption:Landroid/preference/ListPreference;

    .line 170
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdownoption:Landroid/preference/ListPreference;

    .line 171
    new-instance v2, Lcom/googlecode/android/wifi/tether/SetupActivity$8;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/SetupActivity$8;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 230
    sget v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->ID_DIALOG_RESTARTING:I

    if-ne p1, v0, :cond_0

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 232
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 235
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 236
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 980
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 981
    .local v1, supRetVal:Z
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 982
    .local v0, installBinaries:Landroid/view/SubMenu;
    const v2, 0x1080051

    invoke-interface {v0, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 983
    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Calling onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "menuItem"

    .prologue
    .line 988
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 989
    .local v0, supRetVal:Z
    const-string v1, "TETHER -> SetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Menuitem:getId  -  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->installFiles()V

    .line 993
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Calling onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 220
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Calling onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 211
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateConfiguration(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "TETHER -> SetupActivity"

    const-string v1, "Calling onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 194
    return-void
.end method

.method public validateIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "newIpAddress"

    .prologue
    .line 970
    const-string v1, ""

    .line 971
    .local v1, message:Ljava/lang/String;
    const-string v2, "(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 972
    .local v0, IP_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    const v2, 0x7f07004b

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 975
    :cond_0
    return-object v1
.end method

.method public validateSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "newSSID"

    .prologue
    .line 953
    const-string v1, ""

    .line 954
    .local v1, message:Ljava/lang/String;
    const-string v2, "ABCDEFGHIJKLMONPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_."

    .line 956
    .local v2, validChars:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 961
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 962
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 964
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f07004a

    invoke-virtual {p0, v4}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    :cond_1
    return-object v1

    .line 957
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 958
    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 956
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
