.class public Lcom/android/settings/Settings;
.super Lcom/android/settings/HtcAbsSettings;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HtcEncryptionPageActivity;,
        Lcom/android/settings/Settings$HtcCharmSettingsActivity;,
        Lcom/android/settings/Settings$SetFullBackupPasswordActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneMasterClearActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneSoftwareInfoActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneIdentityActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneHardwareInfoActivity;,
        Lcom/android/settings/Settings$HtcAboutPhoneActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettings;,
        Lcom/android/settings/Settings$Power;,
        Lcom/android/settings/Settings$PowersaverListActivity;,
        Lcom/android/settings/Settings$ChooseLockGenericActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$DockSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$ApplicationSettingsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$SoundSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WimaxSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$HeaderAdapter;,
        Lcom/android/settings/Settings$HeaderType;
    }
.end annotation


# static fields
.field public static final ACTION_REFRESH_LIST:Ljava/lang/String; = "com.android.settings.action.REFRESH_LIST"

.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_TITLE"

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings.PARENT_HEADER"


# instance fields
.field private mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mIsAdapterResumed:Z

.field private mIsFinishWindowFocusChanged:Z

.field private mIsFirstLaunch:Z

.field private mIsHeaderAdapterRefreshed:Z

.field private mIsHeaderReady:Z

.field private mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mPrepareHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/HtcAbsSettings;-><init>()V

    .line 111
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.REFRESH_LIST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFilter:Landroid/content/IntentFilter;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mPrepareHeaders:Ljava/util/List;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    .line 229
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsHeaderReady:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsHeaderAdapterRefreshed:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    .line 1413
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings/Settings;->prepareHeaders()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 916
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 918
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 935
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 919
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 920
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 923
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 924
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 926
    new-instance v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v3}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 927
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v1, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 928
    if-eqz v2, :cond_0

    .line 929
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 932
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 434
    iget v1, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 436
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 441
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 910
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pluginExtraHeaders(Ljava/util/List;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 556
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v7, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 564
    .local v4, hasPlugInConnectToPC:Z
    const-string v14, "com.android.settings.category.PLUGIN_ENTRY"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const/16 v14, 0x80

    invoke-virtual {v10, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 568
    .local v11, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 569
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 584
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 585
    .local v5, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 588
    iget v14, v2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v14, :cond_3

    .line 589
    iget v14, v2, Landroid/content/pm/ActivityInfo;->icon:I

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 595
    :goto_1
    iget v14, v2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v14, :cond_4

    .line 596
    iget v14, v2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 604
    :goto_2
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_0

    .line 605
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 608
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 609
    iget-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "android.intent.extra.PACKAGE_NAME"

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 621
    .local v8, order:I
    if-lez v8, :cond_1

    .line 622
    add-int/lit8 v8, v8, -0x1

    .line 626
    :cond_1
    const-string v14, "com.htc.android.psclient.settings"

    iget-object v15, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 629
    const/4 v4, 0x1

    .line 632
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_6

    .line 633
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v14, v14, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v16, 0x7f080248

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 634
    add-int/lit8 v8, v6, 0x1

    .line 632
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 591
    .end local v6           #i:I
    .end local v8           #order:I
    :cond_3
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_1

    .line 597
    :cond_4
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v14, :cond_5

    .line 598
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_2

    .line 600
    :cond_5
    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_2

    .line 637
    .restart local v6       #i:I
    .restart local v8       #order:I
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 639
    .end local v6           #i:I
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 648
    .end local v2           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v8           #order:I
    :cond_8
    const-wide/16 v12, 0x0

    .line 649
    .local v12, tmpId:J
    const/4 v3, -0x1

    .line 650
    .local v3, bluetoothIndex:I
    const/4 v9, -0x1

    .line 651
    .local v9, penIndex:I
    const/4 v1, -0x1

    .line 677
    .local v1, aboutPhoneIndex:I
    const/4 v3, 0x2

    .line 678
    const/16 v9, 0xa

    .line 683
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 684
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const v14, 0x7f020081

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 685
    const v14, 0x7f0c007c

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 686
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.htc.usage"

    const-string v16, "com.htc.usage.DataUsageSummaryActivity"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 689
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 694
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 695
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0x51

    if-ne v14, v15, :cond_c

    .line 696
    const v14, 0x7f0200fd

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 697
    const v14, 0x7f0c0407

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 707
    :goto_4
    const-string v14, "com.android.settings.wimax.WimaxSettings"

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 708
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 709
    iget-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "com.android.settings.Settings.EXTRA_IS_SWITCH_PREFERENCE"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 711
    const-wide/32 v14, 0x7f080239

    iput-wide v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 717
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 718
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const v14, 0x7f020089

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 719
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0x88

    if-ne v14, v15, :cond_e

    .line 720
    const v14, 0x7f0c01be

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 724
    :goto_5
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.android.phone"

    const-string v16, "com.android.phone.Settings"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 729
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 730
    iget-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "com.android.settings.Settings.EXTRA_IS_SWITCH_PREFERENCE"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 733
    const-wide/32 v14, 0x7f080238

    iput-wide v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 738
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 739
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const-wide/32 v14, 0x7f08023d

    iput-wide v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 740
    const v14, 0x7f02007c

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 741
    const v14, 0x7f0c0075

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 742
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.android.phone"

    const-string v16, "com.android.phone.CallFeaturesSetting"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 745
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 750
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 752
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const v14, 0x7f02008c

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 753
    const v14, 0x7f0c0367

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 754
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 756
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 761
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 762
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const v14, 0x7f020079

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 763
    const v14, 0x7f0c0096

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 764
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 768
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 769
    iget-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "com.android.settings.Settings.EXTRA_IS_SWITCH_PREFERENCE"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 770
    const/16 v14, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 772
    const-wide/32 v14, 0x7f08023f

    iput-wide v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 778
    if-nez v4, :cond_b

    .line 781
    new-instance v5, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v5           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-direct {v5}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 782
    .restart local v5       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    const v14, 0x7f020080

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 783
    const v14, 0x7f0c0343

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 784
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.htc.android.psclient"

    const-string v16, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "Setting_Type"

    const-string v16, "USB"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 790
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 791
    .restart local v8       #order:I
    if-lez v8, :cond_9

    .line 792
    add-int/lit8 v8, v8, -0x1

    .line 796
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_a

    .line 797
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v14, v14, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v16, 0x7f080248

    cmp-long v14, v14, v16

    if-nez v14, :cond_f

    .line 798
    add-int/lit8 v8, v6, 0x1

    .line 804
    :cond_a
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    .end local v6           #i:I
    .end local v8           #order:I
    :cond_b
    return-void

    .line 698
    :cond_c
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0x50

    if-ne v14, v15, :cond_d

    .line 699
    const v14, 0x7f0200fc

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 700
    const v14, 0x7f0c0408

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto/16 :goto_4

    .line 702
    :cond_d
    const v14, 0x7f0200fc

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 703
    const v14, 0x7f0c0406

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto/16 :goto_4

    .line 722
    :cond_e
    const v14, 0x7f0c007b

    iput v14, v5, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto/16 :goto_5

    .line 796
    .restart local v6       #i:I
    .restart local v8       #order:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method private prepareHeaders()V
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcEntryProxy;->getHeaders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mPrepareHeaders:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/android/settings/Settings;->mPrepareHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->pluginExtraHeaders(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/Settings;->mPrepareHeaders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 194
    return-void
.end method

.method private switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 372
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 396
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 399
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 401
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 402
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 404
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 405
    .local v4, parentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iput-object v1, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 406
    iput-object v2, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 407
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 409
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 412
    new-instance v7, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v7}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 413
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 415
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v3

    .line 418
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 812
    .local v1, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 813
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 815
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-wide v3, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 816
    .local v2, id:I
    const v3, 0x7f08024c

    if-ne v2, v3, :cond_3

    .line 817
    invoke-direct {p0}, Lcom/android/settings/Settings;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 818
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 897
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 899
    iget-object v3, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/Settings$HeaderType;->getHeaderType(Lcom/htc/preference/HtcPreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    iput-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 903
    :cond_2
    iget-object v3, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    :cond_3
    const v3, 0x7f08023a

    if-eq v2, v3, :cond_4

    const v3, 0x7f080246

    if-ne v2, v3, :cond_5

    .line 820
    :cond_4
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/htc/preference/HtcPreferenceActivity$Header;)Z

    goto :goto_1

    .line 821
    :cond_5
    const v3, 0x7f080236

    if-ne v2, v3, :cond_6

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 826
    :cond_6
    const v3, 0x7f080237

    if-ne v2, v3, :cond_7

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.bluetooth"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    :cond_7
    const v3, 0x7f080239

    if-ne v2, v3, :cond_8

    .line 834
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-nez v3, :cond_1

    .line 835
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 840
    :cond_8
    const v3, 0x7f080251

    if-ne v2, v3, :cond_9

    .line 843
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 847
    :cond_9
    const v3, 0x7f08023e

    if-ne v2, v3, :cond_a

    .line 848
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcPenFeatureFlags;->getPenSettingsVisibility()Z

    move-result v3

    if-nez v3, :cond_1

    .line 849
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    :cond_a
    const v3, 0x7f08023f

    if-ne v2, v3, :cond_b

    .line 859
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatAudioFeatureFlags;->getBeatAudioSettingsVisibility()Z

    move-result v3

    if-nez v3, :cond_1

    .line 860
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 866
    :cond_b
    const v3, 0x7f080238

    if-ne v2, v3, :cond_c

    .line 867
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isWifiOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 868
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 872
    :cond_c
    const v3, 0x7f08023d

    if-ne v2, v3, :cond_d

    .line 873
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;->supportCallEntry()Z

    move-result v3

    if-nez v3, :cond_1

    .line 874
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 878
    :cond_d
    const v3, 0x7f08023c

    if-ne v2, v3, :cond_e

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 881
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 886
    :cond_e
    const v3, 0x7f080245

    if-ne v2, v3, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 890
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 907
    .end local v0           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v2           #id:I
    :cond_f
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 445
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 446
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 450
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 451
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 453
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 454
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 458
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 459
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 456
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 462
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 944
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 482
    :cond_0
    :goto_0
    return-object v0

    .line 472
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 475
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 939
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    if-nez p1, :cond_0

    .line 535
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #headers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .restart local p1       #headers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 538
    iget-object v0, p0, Lcom/android/settings/Settings;->mPrepareHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 542
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    iput-object p1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    .line 547
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 507
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/HtcAbsSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 511
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 519
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onCreate(Landroid/os/Bundle;)V

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 159
    const v0, 0x7f0c083e

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 163
    :cond_1
    if-eqz p1, :cond_2

    .line 164
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 165
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 169
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_4
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":android:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, initialFragment:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/Settings;->prepareHeaders()V

    .line 206
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mIsHeaderReady:Z

    .line 210
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsHeaderAdapterRefreshed:Z

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 212
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mIsHeaderAdapterRefreshed:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onDestroy()V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 362
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 363
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->destroy()V

    .line 365
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 3

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 493
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v1}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 494
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 497
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 501
    .end local v1           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onNewIntent(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onPause()V

    .line 345
    iget-object v1, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 348
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 349
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    if-eqz v1, :cond_0

    .line 350
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    .line 354
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1321
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1322
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    const v0, 0x7f0c09cb

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1325
    :cond_0
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitleRes()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1326
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onRestart()V

    .line 289
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 302
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/settings/HtcAbsSettings;->onResume()V

    .line 322
    iget-object v1, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/Settings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 331
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 332
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    if-nez v1, :cond_0

    .line 333
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    .line 339
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 251
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 255
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 256
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    if-nez v1, :cond_0

    .line 257
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 258
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsAdapterResumed:Z

    .line 264
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsHeaderReady:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mIsHeaderAdapterRefreshed:Z

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 266
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsHeaderAdapterRefreshed:Z

    .line 269
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mIsFinishWindowFocusChanged:Z

    .line 270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mIsFirstLaunch:Z

    .line 273
    :cond_2
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    .line 1333
    if-eqz p1, :cond_0

    .line 1336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1343
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Lcom/android/settings/Settings;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Lcom/android/settings/HtcAbsSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1344
    return-void
.end method

.method public switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/android/settings/HtcAbsSettings;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 389
    return-void
.end method
