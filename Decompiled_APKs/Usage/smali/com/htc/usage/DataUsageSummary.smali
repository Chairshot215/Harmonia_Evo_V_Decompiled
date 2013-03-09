.class public Lcom/htc/usage/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;,
        Lcom/htc/usage/DataUsageSummary$UidDetailTask;,
        Lcom/htc/usage/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/htc/usage/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/htc/usage/DataUsageSummary$LimitEditorFragment;,
        Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;,
        Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;,
        Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;,
        Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;,
        Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;,
        Lcom/htc/usage/DataUsageSummary$AppUsageItem;,
        Lcom/htc/usage/DataUsageSummary$CycleAdapter;,
        Lcom/htc/usage/DataUsageSummary$CycleChangeItem;,
        Lcom/htc/usage/DataUsageSummary$CycleItem;,
        Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;
    }
.end annotation


# static fields
.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LOADER_ALL_APP:I = 0x4

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = true

.field private static final MAX_CYCLE_LIST_SIZE:I = 0xa

.field public static final MAX_WARNING_LIMIT_BYTES:J = 0x61a7c0000000L

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MENU_ID_ADVANCED:I = 0x0

.field public static final TAB_3G:Ljava/lang/String; = "3g"

.field public static final TAB_4G:Ljava/lang/String; = "4g"

.field public static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field public static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsageSummary"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_CANCEL_LIMIT:Ljava/lang/String; = "confirmCancelLimit"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

.field private final mAllAppLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppDetailUids:[I

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/htc/usage/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/htc/usage/widget/ChartDataUsageView;

.field private mChartData:Lcom/htc/usage/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/htc/usage/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

.field mCycleEntries:[Ljava/lang/CharSequence;

.field mCycleEntryValues:[Ljava/lang/CharSequence;

.field private mCycleStartDayChangeListener:Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemCofigureChangeReceiver:Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/usage/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1437
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/usage/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/usage/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 197
    iput v0, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    .line 227
    iput-boolean v0, p0, Lcom/htc/usage/DataUsageSummary;->mShowWifi:Z

    .line 228
    iput-boolean v0, p0, Lcom/htc/usage/DataUsageSummary;->mShowEthernet:Z

    .line 233
    iput-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I

    .line 239
    iput-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 499
    new-instance v0, Lcom/htc/usage/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$3;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 582
    new-instance v0, Lcom/htc/usage/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$4;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 623
    new-instance v0, Lcom/htc/usage/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$5;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1066
    new-instance v0, Lcom/htc/usage/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$6;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 1124
    new-instance v0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;-><init>(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/DataUsageSummary$1;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mCycleStartDayChangeListener:Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;

    .line 1135
    new-instance v0, Lcom/htc/usage/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$7;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1157
    new-instance v0, Lcom/htc/usage/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$8;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/htc/usage/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$9;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1233
    new-instance v0, Lcom/htc/usage/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$10;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1264
    new-instance v0, Lcom/htc/usage/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$11;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1289
    new-instance v0, Lcom/htc/usage/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$12;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAllAppLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1370
    new-instance v0, Lcom/htc/usage/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/htc/usage/DataUsageSummary$13;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mChartListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2515
    new-instance v0, Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;-><init>(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/DataUsageSummary$1;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSystemCofigureChangeReceiver:Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/AdvancedSettingsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/usage/DataUsageSummary;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mCycleStartDayChangeListener:Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/usage/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/usage/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary;->hideMobileGlobalPreferences(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/usage/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/usage/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary;->setMobileNetworkEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->getStartTimeFromEntryValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->getEndTimeFromEntryValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/usage/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/usage/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/MyPreferenceFragment;)Lcom/htc/usage/MyPreferenceFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/net/ChartData;)Lcom/htc/usage/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/usage/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/usage/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/htc/usage/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/usage/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/htc/usage/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$3900([II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/htc/usage/DataUsageSummary;->contains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/usage/DataUsageSummary;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateLimitedMobileNetworkPreference()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/usage/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/usage/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/usage/DataUsageSummary;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAllAppLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/usage/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    return-object v0
.end method

.method private buildEntryValue(JJ)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .local v0, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1051
    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 522
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 523
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2361
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2362
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2365
    .local v2, subscriberId:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2366
    .local v1, limited:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2367
    const v3, 0x7f050025

    invoke-virtual {p0, v3}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2369
    :cond_0
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2370
    const v3, 0x7f050024

    invoke-virtual {p0, v3}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    :cond_1
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2373
    const v3, 0x7f050023

    invoke-virtual {p0, v3}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    :cond_2
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2376
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f050020

    invoke-static {v3, v4}, Lcom/htc/usage/Utils;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    :cond_3
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2379
    const v3, 0x7f050021

    invoke-virtual {p0, v3}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    :cond_4
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 2349
    .local v0, limited:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    const v1, 0x7f050026

    invoke-virtual {p0, v1}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2353
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/htc/usage/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "lableRes"
    .parameter "drawableRes"

    .prologue
    .line 601
    const-string v0, "DataUsageSummary"

    const-string v1, "buildTabSpec"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/htc/usage/DataUsageSummary;->createIndicatorView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2167
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2168
    .local v0, template:Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 2180
    :goto_0
    return-object v1

    .line 2170
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2176
    :pswitch_0
    const-string v1, "mobile"

    goto :goto_0

    .line 2172
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 2174
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 2178
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 2170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 2423
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 2424
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 2425
    const/4 v4, 0x1

    .line 2428
    .end local v3           #value:I
    :goto_1
    return v4

    .line 2423
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2428
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createIndicatorView(II)Landroid/view/View;
    .locals 8
    .parameter "lableRes"
    .parameter "drawableRes"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 609
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 610
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109009d

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 612
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 613
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 616
    .local v1, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    const-string v5, "tab_indicator"

    const v6, 0x108057c

    invoke-static {v0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 619
    return-object v3
.end method

.method public static formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "start"
    .parameter "end"
    .parameter "utcTime"

    .prologue
    .line 1441
    const v8, 0x10010

    .line 1442
    .local v8, flags:I
    if-eqz p5, :cond_0

    const-string v7, "UTC"

    .line 1444
    .local v7, timezone:Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/htc/usage/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1445
    :try_start_0
    sget-object v0, Lcom/htc/usage/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1446
    sget-object v1, Lcom/htc/usage/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1442
    .end local v7           #timezone:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1448
    .restart local v7       #timezone:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1365
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1367
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAppDetailPrimaryUid()I
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getAppRestrictBackground()Z
    .locals 5

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v1

    .line 862
    .local v1, primaryUid:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 868
    .local v2, uidPolicy:I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 863
    .end local v2           #uidPolicy:I
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "problem reading network policy"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 868
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #uidPolicy:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getEndTimeFromEntryValue(Ljava/lang/String;)J
    .locals 3
    .parameter "entryValue"

    .prologue
    .line 1062
    const-string v1, "~"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1063
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 845
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStartTimeFromEntryValue(Ljava/lang/String;)J
    .locals 3
    .parameter "entryValue"

    .prologue
    .line 1057
    const-string v1, "~"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1058
    .local v0, index:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static hasEthernet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2304
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2306
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2267
    const/4 v0, 0x0

    return v0
.end method

.method private static hasMobileRadio(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2254
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2259
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hideAllViews()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 464
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 466
    return-void
.end method

.method private hideMobileGlobalPreferences(Z)V
    .locals 4
    .parameter "hide"

    .prologue
    .line 469
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideMobileGlobalPreferences "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    if-nez v1, :cond_0

    .line 471
    const-string v1, "DataUsageSummary"

    const-string v2, "Preference fragment is null."

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 475
    :cond_0
    move v0, p1

    .line 476
    .local v0, setHide:Z
    new-instance v1, Lcom/htc/usage/DataUsageSummary$2;

    invoke-direct {v1, p0, v0}, Lcom/htc/usage/DataUsageSummary$2;-><init>(Lcom/htc/usage/DataUsageSummary;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/htc/usage/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "root"
    .parameter "label"

    .prologue
    .line 2328
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2330
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2331
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "widget"

    .prologue
    const/4 v4, -0x2

    .line 2314
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2315
    .local v0, view:Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2318
    .local v1, widgetFrame:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2319
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2390
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2391
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2395
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2396
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2397
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2399
    new-instance v3, Lcom/htc/usage/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/htc/usage/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2400
    new-instance v3, Lcom/htc/usage/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/htc/usage/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2401
    return-void
.end method

.method private isAirPlaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2466
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 836
    :goto_0
    return v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileNetworkActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2488
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobileNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2500
    :cond_0
    :goto_0
    return v0

    .line 2492
    :cond_1
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isAirPlaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2496
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobileNetworkServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMobileNetworkChangeable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2504
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isAirPlaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2512
    :cond_0
    :goto_0
    return v0

    .line 2508
    :cond_1
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobileNetworkServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMobileNetworkEnabled()Z
    .locals 2

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2457
    const-string v0, "DataUsageSummary"

    const-string v1, "isMobileNetworkEnabled: mConnService is null"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    const/4 v0, 0x0

    .line 2461
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobileNetworkServiceReady()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2470
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 2471
    const-string v3, "DataUsageSummary"

    const-string v4, "isMobileNetworkServiceReady: mConnService is null"

    invoke-static {v3, v4}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    :cond_0
    :goto_0
    return v2

    .line 2475
    :cond_1
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2476
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 2477
    const-string v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile network state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 2479
    .local v1, state:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2484
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 3

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1351
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, subscriberId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-virtual {v2, v1}, Lcom/htc/usage/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1355
    .end local v1           #subscriberId:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 828
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-virtual {v0}, Lcom/htc/usage/MyPreferenceFragment;->isEnableDataChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 872
    const-string v2, "DataUsageSummary"

    const-string v3, "setAppRestrictBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v1

    .line 875
    .local v1, primaryUid:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v1, v2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    return-void

    .line 875
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unable to save policy"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setMobileNetworkEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 822
    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileNetworkEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 824
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V

    .line 825
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, subscriberId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0, p1}, Lcom/htc/usage/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1362
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 4
    .parameter "limitBytes"

    .prologue
    .line 812
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPolicyLimitBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 814
    .local v0, warningBytes:Ljava/lang/Long;
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, p1, p2}, Lcom/htc/usage/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 818
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V

    .line 819
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .parameter "warningBytes"

    .prologue
    .line 806
    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyWarningBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/usage/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 808
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V

    .line 809
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "parent"
    .parameter "string"

    .prologue
    .line 2417
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2418
    .local v0, summary:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2419
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2420
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 2408
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2409
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2410
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 850
    const-string v1, "DataUsageSummary"

    const-string v2, "setRestrictBackground()"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 736
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 737
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 739
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 740
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 752
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/usage/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 755
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v10

    .line 756
    .local v10, primaryUid:I
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lcom/htc/usage/net/UidDetailProvider;->getUidDetail(IZ)Lcom/htc/usage/net/UidDetail;

    move-result-object v2

    .line 757
    .local v2, detail:Lcom/htc/usage/net/UidDetail;
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v12, v2, Lcom/htc/usage/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 760
    iget-object v11, v2, Lcom/htc/usage/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v11, :cond_1

    .line 761
    iget-object v0, v2, Lcom/htc/usage/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v5, v0, v3

    .line 762
    .local v5, label:Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v4, v12, v5}, Lcom/htc/usage/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v2           #detail:Lcom/htc/usage/net/UidDetail;
    .end local v3           #i$:I
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v6           #len$:I
    .end local v10           #primaryUid:I
    :cond_0
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 747
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/usage/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 803
    :goto_1
    return-void

    .line 765
    .restart local v2       #detail:Lcom/htc/usage/net/UidDetail;
    .restart local v10       #primaryUid:I
    :cond_1
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v13, v2, Lcom/htc/usage/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v4, v12, v13}, Lcom/htc/usage/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 770
    :cond_2
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 771
    .local v8, packageNames:[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v11, v8

    if-lez v11, :cond_4

    .line 772
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 773
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v7, 0x1

    .line 777
    .local v7, matchFound:Z
    :goto_2
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 784
    .end local v7           #matchFound:Z
    :goto_3
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateDetailData()V

    .line 786
    invoke-static {v1, v10}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getRestrictBackground()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 788
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v12, 0x7f05002b

    invoke-static {v11, v12}, Lcom/htc/usage/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 789
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 790
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f05002c

    invoke-static {v12, v13}, Lcom/htc/usage/Utils;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/usage/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 797
    :goto_4
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 776
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 780
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 781
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 793
    :cond_5
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v12, 0x7f05002d

    invoke-virtual {p0, v12}, Lcom/htc/usage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/usage/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 801
    :cond_6
    iget-object v11, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 669
    iput-boolean v2, p0, Lcom/htc/usage/DataUsageSummary;->mBinding:Z

    .line 670
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 720
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 673
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, currentTab:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 676
    const-string v3, "DataUsageSummary"

    const-string v4, "no tab selected; hiding body"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 683
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 684
    .local v2, tabChanged:Z
    :goto_1
    iput-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 686
    const-string v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBody() with currentTab="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v4, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 690
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 713
    :goto_2
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v7, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I

    invoke-static {v6, v7}, Lcom/htc/usage/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/usage/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 717
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 719
    iput-boolean v3, p0, Lcom/htc/usage/DataUsageSummary;->mBinding:Z

    goto :goto_0

    .end local v2           #tabChanged:Z
    :cond_2
    move v2, v3

    .line 683
    goto :goto_1

    .line 692
    .restart local v2       #tabChanged:Z
    :cond_3
    const-string v4, "3g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 693
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 695
    :cond_4
    const-string v4, "4g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 696
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 698
    :cond_5
    const-string v4, "wifi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 700
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 702
    :cond_6
    const-string v4, "ethernet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 704
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 707
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tab: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 30
    .parameter "policy"

    .prologue
    .line 921
    const-string v6, "DataUsageSummary"

    const-string v11, "updateCycleList"

    invoke-static {v6, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 924
    .local v4, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-virtual {v6}, Lcom/htc/usage/MyPreferenceFragment;->getPreferredCycle()Ljava/lang/String;

    move-result-object v26

    .line 926
    .local v26, preferredCycle:Ljava/lang/String;
    if-eqz v26, :cond_3

    .line 927
    new-instance v3, Lcom/htc/usage/DataUsageSummary$CycleItem;

    invoke-static/range {v26 .. v26}, Lcom/htc/usage/DataUsageSummary;->getStartTimeFromEntryValue(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {v26 .. v26}, Lcom/htc/usage/DataUsageSummary;->getEndTimeFromEntryValue(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .line 934
    .local v3, previousItem:Lcom/htc/usage/DataUsageSummary$CycleItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    invoke-virtual {v6}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->clear()V

    .line 936
    const-wide v21, 0x7fffffffffffffffL

    .line 937
    .local v21, historyStart:J
    const-wide/high16 v19, -0x8000

    .line 938
    .local v19, historyEnd:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    if-eqz v6, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v6, v6, Lcom/htc/usage/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v21

    .line 940
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v6, v6, Lcom/htc/usage/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v19

    .line 943
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 944
    .local v23, now:J
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v6, v21, v11

    if-nez v6, :cond_1

    move-wide/from16 v21, v23

    .line 945
    :cond_1
    const-wide/high16 v11, -0x8000

    cmp-long v6, v19, v11

    if-nez v6, :cond_2

    const-wide/16 v11, 0x1

    add-long v19, v23, v11

    .line 947
    :cond_2
    const/16 v18, 0x0

    .line 948
    .local v18, hasCycles:Z
    if-eqz p1, :cond_5

    .line 950
    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v9

    .line 953
    .local v9, cycleEnd:J
    :goto_1
    cmp-long v6, v9, v21

    if-lez v6, :cond_4

    .line 954
    move-object/from16 v0, p1

    invoke-static {v9, v10, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v7

    .line 955
    .local v7, cycleStart:J
    const-string v6, "DataUsageSummary"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generating cs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to ce="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " waiting for hs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    new-instance v5, Lcom/htc/usage/DataUsageSummary$CycleItem;

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v11, v5}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 958
    move-wide v9, v7

    .line 959
    const/16 v18, 0x1

    .line 960
    goto :goto_1

    .line 931
    .end local v3           #previousItem:Lcom/htc/usage/DataUsageSummary$CycleItem;
    .end local v7           #cycleStart:J
    .end local v9           #cycleEnd:J
    .end local v18           #hasCycles:Z
    .end local v19           #historyEnd:J
    .end local v21           #historyStart:J
    .end local v23           #now:J
    :cond_3
    new-instance v3, Lcom/htc/usage/DataUsageSummary$CycleItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .restart local v3       #previousItem:Lcom/htc/usage/DataUsageSummary$CycleItem;
    goto/16 :goto_0

    .line 963
    .restart local v9       #cycleEnd:J
    .restart local v18       #hasCycles:Z
    .restart local v19       #historyEnd:J
    .restart local v21       #historyStart:J
    .restart local v23       #now:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/htc/usage/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-direct/range {p0 .. p1}, Lcom/htc/usage/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setUsageLimitEnabled(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-direct/range {p0 .. p1}, Lcom/htc/usage/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setChangeCycleStartDayEnabled(Z)V

    .line 968
    .end local v9           #cycleEnd:J
    :cond_5
    const/16 v6, 0xa

    new-array v0, v6, [Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 969
    .local v28, tempEntries:[Ljava/lang/CharSequence;
    const/16 v6, 0xa

    new-array v0, v6, [Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    .line 970
    .local v29, tempEntryValues:[Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 971
    .local v17, cycleCount:I
    if-eqz p1, :cond_8

    .line 972
    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v9

    .line 973
    .restart local v9       #cycleEnd:J
    :cond_6
    cmp-long v6, v9, v21

    if-lez v6, :cond_7

    .line 974
    move-object/from16 v0, p1

    invoke-static {v9, v10, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v7

    .line 975
    .restart local v7       #cycleStart:J
    new-instance v5, Lcom/htc/usage/DataUsageSummary$CycleItem;

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .line 976
    .local v5, newCycle:Lcom/htc/usage/DataUsageSummary$CycleItem;
    invoke-virtual {v5}, Lcom/htc/usage/DataUsageSummary$CycleItem;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v28, v17

    .line 977
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/htc/usage/DataUsageSummary;->buildEntryValue(JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v29, v17

    .line 978
    move-wide v9, v7

    .line 979
    add-int/lit8 v17, v17, 0x1

    .line 981
    const/16 v6, 0xa

    move/from16 v0, v17

    if-lt v0, v6, :cond_6

    .line 985
    .end local v5           #newCycle:Lcom/htc/usage/DataUsageSummary$CycleItem;
    .end local v7           #cycleStart:J
    :cond_7
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntries:[Ljava/lang/CharSequence;

    .line 986
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntryValues:[Ljava/lang/CharSequence;

    .line 987
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntries:[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-static {v0, v6, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntryValues:[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v0, v6, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1011
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    if-nez v6, :cond_b

    .line 1012
    const-string v6, "DataUsageSummary"

    const-string v11, "Current preference fragment is null"

    invoke-static {v6, v11}, Lcom/htc/usage/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_3
    if-nez v18, :cond_d

    .line 1023
    move-wide/from16 v9, v19

    .line 1024
    :goto_4
    cmp-long v6, v9, v21

    if-lez v6, :cond_c

    .line 1025
    const-wide v11, 0x90321000L

    sub-long v7, v9, v11

    .line 1026
    .restart local v7       #cycleStart:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    new-instance v11, Lcom/htc/usage/DataUsageSummary$CycleItem;

    move-object v12, v4

    move-wide v13, v7

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v6, v11}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1027
    move-wide v9, v7

    .line 1028
    goto :goto_4

    .line 992
    .end local v7           #cycleStart:J
    .end local v9           #cycleEnd:J
    :cond_8
    move-wide/from16 v9, v19

    .line 993
    .restart local v9       #cycleEnd:J
    :cond_9
    cmp-long v6, v9, v21

    if-lez v6, :cond_a

    .line 994
    const-wide v11, 0x90321000L

    sub-long v7, v9, v11

    .line 995
    .restart local v7       #cycleStart:J
    new-instance v5, Lcom/htc/usage/DataUsageSummary$CycleItem;

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/htc/usage/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .line 996
    .restart local v5       #newCycle:Lcom/htc/usage/DataUsageSummary$CycleItem;
    invoke-virtual {v5}, Lcom/htc/usage/DataUsageSummary$CycleItem;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v28, v17

    .line 997
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/htc/usage/DataUsageSummary;->buildEntryValue(JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v29, v17

    .line 998
    move-wide v9, v7

    .line 999
    add-int/lit8 v17, v17, 0x1

    .line 1001
    const/16 v6, 0xa

    move/from16 v0, v17

    if-lt v0, v6, :cond_9

    .line 1005
    .end local v5           #newCycle:Lcom/htc/usage/DataUsageSummary$CycleItem;
    .end local v7           #cycleStart:J
    :cond_a
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntries:[Ljava/lang/CharSequence;

    .line 1006
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntryValues:[Ljava/lang/CharSequence;

    .line 1007
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntries:[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-static {v0, v6, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntryValues:[Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v0, v6, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 1016
    :cond_b
    const-string v6, "DataUsageSummary"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current preference fragment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-virtual {v12}, Lcom/htc/usage/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "usage_type"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setCycleEntries([Ljava/lang/CharSequence;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mCycleEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setCycleEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1030
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setChangeCycleStartDayEnabled(Z)V

    .line 1035
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    invoke-virtual {v6}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_e

    .line 1036
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    invoke-virtual {v6, v3}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/htc/usage/DataUsageSummary$CycleItem;)I

    move-result v25

    .line 1040
    .local v25, position:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/usage/DataUsageSummary$CycleItem;

    .line 1041
    .local v27, selectedItem:Lcom/htc/usage/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    move-object/from16 v0, v27

    iget-wide v11, v0, Lcom/htc/usage/DataUsageSummary$CycleItem;->start:J

    move-object/from16 v0, v27

    iget-wide v13, v0, Lcom/htc/usage/DataUsageSummary$CycleItem;->end:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/htc/usage/DataUsageSummary;->buildEntryValue(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/htc/usage/MyPreferenceFragment;->setPreferredCycle(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/DataUsageSummary;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-virtual {v11}, Lcom/htc/usage/MyPreferenceFragment;->getUsageCycleListPreference()Lcom/htc/preference/HtcPreference;

    move-result-object v11

    move-object/from16 v0, v27

    iget-wide v12, v0, Lcom/htc/usage/DataUsageSummary$CycleItem;->start:J

    move-object/from16 v0, v27

    iget-wide v14, v0, Lcom/htc/usage/DataUsageSummary$CycleItem;->end:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/htc/usage/DataUsageSummary;->buildEntryValue(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 1046
    .end local v25           #position:I
    .end local v27           #selectedItem:Lcom/htc/usage/DataUsageSummary$CycleItem;
    :goto_5
    return-void

    .line 1044
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->updateDetailData()V

    goto :goto_5
.end method

.method private updateDetailData()V
    .locals 28

    .prologue
    .line 1182
    const-string v3, "DataUsageSummary"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/htc/usage/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1185
    .local v4, start:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/htc/usage/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1186
    .local v6, end:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1188
    .local v8, now:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    .line 1190
    .local v19, context:Landroid/content/Context;
    const/4 v10, 0x0

    .line 1191
    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v3, v3, Lcom/htc/usage/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_0

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v3, v3, Lcom/htc/usage/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1194
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v11, v13

    .line 1195
    .local v20, defaultBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v3, v3, Lcom/htc/usage/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1196
    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v11, v13

    .line 1198
    .local v22, foregroundBytes:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    const/16 v11, 0xaf

    invoke-virtual {v3, v11}, Lcom/htc/usage/widget/PieChartView;->setOriginAngle(I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    invoke-virtual {v3}, Lcom/htc/usage/widget/PieChartView;->removeAllSlices()V

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080007

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v11}, Lcom/htc/usage/widget/PieChartView;->addSlice(JI)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    const-string v11, "#666666"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v11}, Lcom/htc/usage/widget/PieChartView;->addSlice(JI)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    invoke-virtual {v3}, Lcom/htc/usage/widget/PieChartView;->generatePath()V

    .line 1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v19 .. v21}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v11, v3, Lcom/htc/usage/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1224
    .end local v20           #defaultBytes:J
    .end local v22           #foregroundBytes:J
    :goto_0
    if-eqz v10, :cond_2

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v25, v11, v13

    .line 1225
    .local v25, totalBytes:J
    :goto_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    .line 1226
    .local v27, totalPhrase:Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v11, v19

    move-wide v12, v4

    move-wide v14, v6

    invoke-static/range {v11 .. v16}, Lcom/htc/usage/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v24

    .line 1227
    .local v24, rangePhrase:Ljava/lang/String;
    const-string v3, "DataUsageSummary"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const v11, 0x7f05003e

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v27, v12, v13

    const/4 v13, 0x1

    aput-object v24, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/htc/usage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    return-void

    .line 1215
    .end local v24           #rangePhrase:Ljava/lang/String;
    .end local v25           #totalBytes:J
    .end local v27           #totalPhrase:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    if-eqz v3, :cond_1

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;

    iget-object v11, v3, Lcom/htc/usage/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1220
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/htc/usage/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/usage/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1224
    :cond_2
    const-wide/16 v25, 0x0

    goto :goto_1
.end method

.method private updateLimitedMobileNetworkPreference()V
    .locals 6

    .prologue
    .line 1826
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1827
    .local v1, limitedMobileNetwork:Z
    :goto_0
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1828
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "limited_mobile_network"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1830
    return-void

    .line 1826
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #limitedMobileNetwork:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter "refreshCycle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 890
    const-string v3, "mobile"

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    iput-boolean v1, p0, Lcom/htc/usage/DataUsageSummary;->mBinding:Z

    .line 892
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobileNetworkActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/MyPreferenceFragment;->setEnableDataChecked(Z)V

    .line 893
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobileNetworkChangeable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/usage/MyPreferenceFragment;->setEnableData(Z)V

    .line 894
    iput-boolean v2, p0, Lcom/htc/usage/DataUsageSummary;->mBinding:Z

    .line 897
    :cond_0
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 898
    .local v0, policy:Landroid/net/NetworkPolicy;
    invoke-direct {p0, v0}, Lcom/htc/usage/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 899
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;

    if-eqz v0, :cond_3

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/usage/MyPreferenceFragment;->setUsageLimitChecked(Z)V

    .line 900
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 909
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 911
    invoke-direct {p0, v0}, Lcom/htc/usage/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 913
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 899
    goto :goto_0

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/usage/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private updateTabs(Z)V
    .locals 10
    .parameter "forceUpdate"

    .prologue
    const v9, 0x7f020012

    const v8, 0x7f020011

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 532
    const-string v5, "DataUsageSummary"

    const-string v6, "updateTabs"

    invoke-static {v5, v6}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 541
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    .line 542
    .local v1, mobileSplit:Z
    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 543
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "3g"

    const v7, 0x7f050024

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/usage/DataUsageSummary;->buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 544
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "4g"

    const v7, 0x7f050023

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/usage/DataUsageSummary;->buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 549
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "show_wifi"

    iget-boolean v7, p0, Lcom/htc/usage/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 550
    .local v3, showWifi:Z
    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "wifi"

    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f050020

    invoke-static {v7, v8}, Lcom/htc/usage/Utils;->getFinalResId(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {p0, v6, v7, v9}, Lcom/htc/usage/DataUsageSummary;->buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 552
    iget-boolean v5, p0, Lcom/htc/usage/DataUsageSummary;->mShowWifi:Z

    if-eq v3, v5, :cond_3

    .line 553
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 556
    :cond_3
    iput-boolean v3, p0, Lcom/htc/usage/DataUsageSummary;->mShowWifi:Z

    .line 558
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "show_ethernet"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/usage/DataUsageSummary;->mShowEthernet:Z

    .line 559
    iget-boolean v5, p0, Lcom/htc/usage/DataUsageSummary;->mShowEthernet:Z

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 560
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "ethernet"

    const v7, 0x7f050021

    invoke-direct {p0, v6, v7, v9}, Lcom/htc/usage/DataUsageSummary;->buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 563
    :cond_4
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5, v2}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 564
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 565
    .local v2, multipleTabs:Z
    :goto_2
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 566
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 567
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 569
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->updateBody()V

    .line 573
    :goto_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    goto/16 :goto_0

    .line 545
    .end local v2           #multipleTabs:Z
    .end local v3           #showWifi:Z
    :cond_5
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 546
    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "mobile"

    const v7, 0x7f050022

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/usage/DataUsageSummary;->buildTabSpec(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_1

    .restart local v3       #showWifi:Z
    :cond_6
    move v2, v4

    .line 564
    goto :goto_2

    .line 565
    .restart local v2       #multipleTabs:Z
    :cond_7
    const/16 v4, 0x8

    goto :goto_3

    .line 571
    :cond_8
    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2432
    const-string v0, "DataUsageSummary"

    const-string v1, "onBackStackChanged"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    if-nez v0, :cond_0

    .line 2434
    const-string v0, "DataUsageSummary"

    const-string v1, "mSettingFragment is null."

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    :goto_0
    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/htc/usage/AdvancedSettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2439
    const-string v0, "DataUsageSummary"

    const-string v1, "SettingFragment is showed."

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary;->hideAllViews()V

    .line 2441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/usage/DataUsageSummary;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 2445
    :cond_1
    const-string v0, "DataUsageSummary"

    const-string v1, "SettingFragment isn\'t showed."

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    invoke-direct {p0, v2}, Lcom/htc/usage/DataUsageSummary;->updateTabs(Z)V

    .line 2447
    invoke-virtual {p0, v2}, Lcom/htc/usage/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 2448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 459
    const-string v0, "DataUsageSummary"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->invalidateNetworkSeriesPath()V

    .line 461
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    const-string v0, "DataUsageSummary"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 258
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 260
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 262
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 265
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.htc.usage_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 267
    new-instance v0, Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/htc/usage/net/NetworkPolicyEditor;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    .line 268
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/htc/usage/net/NetworkPolicyEditor;->read()V

    .line 270
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/usage/DataUsageSummary;->mShowWifi:Z

    .line 271
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_ethernet"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/usage/DataUsageSummary;->mShowEthernet:Z

    .line 273
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/usage/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 275
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x0

    .line 417
    const v0, 0x7f050043

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 419
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    const-string v3, "DataUsageSummary"

    const-string v6, "onCreateView"

    invoke-static {v3, v6}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f030009

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/htc/usage/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/htc/usage/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    .line 287
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 288
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 289
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 290
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 294
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v3

    const/high16 v6, 0x200

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 296
    .local v1, shouldInset:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050025

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    .line 304
    :goto_1
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v4}, Lcom/htc/usage/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 306
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 307
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 309
    const v3, 0x7f030007

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 310
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 312
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 313
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 315
    iget v3, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v6}, Lcom/htc/usage/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 318
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    iget v7, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f070017

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 327
    new-instance v3, Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mCycleAdapter:Lcom/htc/usage/DataUsageSummary$CycleAdapter;

    .line 329
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f070007

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/usage/widget/ChartDataUsageView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    .line 330
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mChartListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/htc/usage/widget/ChartDataUsageView;->setListener(Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 334
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f070010

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 335
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070002

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 336
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 337
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/usage/widget/PieChartView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppPieChart:Lcom/htc/usage/widget/PieChartView;

    .line 338
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070012

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 339
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070013

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 340
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070016

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 342
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f070015

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 343
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 346
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 347
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 348
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v5}, Lcom/htc/usage/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 349
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "list_selector_background"

    const v7, 0x1080062

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 352
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 353
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 354
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 359
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 362
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    new-instance v3, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    iget v5, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    invoke-direct {v3, v4, v5}, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/htc/usage/net/UidDetailProvider;I)V

    iput-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    .line 365
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 366
    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    return-object v2

    .end local v1           #shouldInset:Z
    :cond_1
    move v1, v5

    .line 294
    goto/16 :goto_0

    .line 300
    .restart local v1       #shouldInset:Z
    :cond_2
    iput v5, p0, Lcom/htc/usage/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 452
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/htc/usage/net/UidDetailProvider;->clearCache()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary;->mUidDetailProvider:Lcom/htc/usage/net/UidDetailProvider;

    .line 454
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 437
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 425
    :pswitch_0
    const-string v1, "DataUsageSummary"

    const-string v2, "onOptionsItemSelected: MENU_ID_ADVANCED"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/htc/usage/AdvancedSettingsFragment;->newInstance()Lcom/htc/usage/AdvancedSettingsFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    .line 427
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 428
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f07001a

    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 433
    const/4 v1, 0x1

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary;->mSystemCofigureChangeReceiver:Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 445
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 374
    const-string v2, "DataUsageSummary"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary;->mSettingFragment:Lcom/htc/usage/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/htc/usage/AdvancedSettingsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/usage/DataUsageSummary;->updateTabs(Z)V

    .line 387
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary;->mSystemCofigureChangeReceiver:Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    new-instance v2, Lcom/htc/usage/DataUsageSummary$1;

    invoke-direct {v2, p0}, Lcom/htc/usage/DataUsageSummary$1;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/htc/usage/DataUsageSummary$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 413
    return-void
.end method
