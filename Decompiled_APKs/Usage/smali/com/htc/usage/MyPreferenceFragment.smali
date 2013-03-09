.class public Lcom/htc/usage/MyPreferenceFragment;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "MyPreferenceFragment.java"


# static fields
.field public static final CYCLE_START_DAY:Ljava/lang/String; = "cycle_start_day"

.field static KEY_ENABLE_MOBILE4G_DATA:Ljava/lang/String; = null

.field static KEY_ENABLE_MOBILE4G_USAGE_LIMIT:Ljava/lang/String; = null

.field static KEY_ENABLE_MOBILE_DATA:Ljava/lang/String; = null

.field static KEY_ENABLE_MOBILE_USAGE_LIMIT:Ljava/lang/String; = null

.field static KEY_ETHERNET_USAGE_CYCLE_LIST:Ljava/lang/String; = null

.field static KEY_MOBILE4G_USAGE_CYCLE_LIST:Ljava/lang/String; = null

.field static KEY_MOBILE4G_USAGE_CYCLE_START_DAY:Ljava/lang/String; = null

.field static KEY_MOBILE_USAGE_CYCLE_LIST:Ljava/lang/String; = null

.field static KEY_MOBILE_USAGE_CYCLE_START_DAY:Ljava/lang/String; = null

.field static KEY_WIFI_USAGE_CYCLE_LIST:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyPreferenceFragment"

.field public static final USAGE_TYPE:Ljava/lang/String; = "usage_type"


# instance fields
.field private mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

.field private mEnableData:Lcom/htc/preference/HtcSwitchPreference;

.field private mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mUsageCycleList:Lcom/htc/preference/HtcListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "enable_mobile_data"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_DATA:Ljava/lang/String;

    .line 32
    const-string v0, "enable_mobile_usage_limit"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_USAGE_LIMIT:Ljava/lang/String;

    .line 33
    const-string v0, "mobile_usage_cycle_list"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE_USAGE_CYCLE_LIST:Ljava/lang/String;

    .line 34
    const-string v0, "mobile_usage_cycle_start_day"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE_USAGE_CYCLE_START_DAY:Ljava/lang/String;

    .line 37
    const-string v0, "enable_mobile4g_data"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_DATA:Ljava/lang/String;

    .line 38
    const-string v0, "enable_mobile4g_usage_limit"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_USAGE_LIMIT:Ljava/lang/String;

    .line 39
    const-string v0, "mobile4g_usage_cycle_list"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE4G_USAGE_CYCLE_LIST:Ljava/lang/String;

    .line 40
    const-string v0, "mobile4g_usage_cycle_start_day"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE4G_USAGE_CYCLE_START_DAY:Ljava/lang/String;

    .line 43
    const-string v0, "wifi_usage_cycle_list"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_WIFI_USAGE_CYCLE_LIST:Ljava/lang/String;

    .line 46
    const-string v0, "ethernet_usage_cycle_list"

    sput-object v0, Lcom/htc/usage/MyPreferenceFragment;->KEY_ETHERNET_USAGE_CYCLE_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method private addOnDateSetListener()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "MyPreferenceFragment"

    const-string v1, "addOnPreferenceClickListener"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/CycleStartDayPreference;->setOnDateSetListener(Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;)V

    goto :goto_0
.end method

.method private addOnPreferenceChangeListener()V
    .locals 5

    .prologue
    .line 150
    const-string v2, "MyPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOnPreferenceChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 153
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 155
    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/htc/usage/MyPreferenceFragment;
    .locals 3
    .parameter "usageType"
    .parameter "cycleStartDay"

    .prologue
    .line 58
    new-instance v1, Lcom/htc/usage/MyPreferenceFragment;

    invoke-direct {v1}, Lcom/htc/usage/MyPreferenceFragment;-><init>()V

    .line 60
    .local v1, myPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "usage_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "cycle_start_day"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/htc/usage/MyPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method private setViewDimension(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mRootView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getPreferredCycle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    const-string v0, "MyPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredCycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsageCycleListPreference()Lcom/htc/preference/HtcPreference;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method public hideMobileGlobalPreferences(Z)V
    .locals 6
    .parameter "hide"

    .prologue
    const v5, 0x7f090003

    const/4 v4, -0x1

    .line 235
    const-string v1, "MyPreferenceFragment"

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

    .line 236
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 237
    .local v0, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    const-string v1, "MyPreferenceFragment"

    const-string v2, "Preference screen is null or not attach to Activity."

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 242
    :cond_1
    if-eqz p1, :cond_5

    .line 243
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/htc/usage/MyPreferenceFragment;->setViewDimension(II)V

    goto :goto_0

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    if-eqz v1, :cond_6

    .line 260
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_7

    .line 264
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 267
    :cond_7
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-eqz v1, :cond_8

    .line 268
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 271
    :cond_8
    const-string v1, "mobile"

    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "usage_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 272
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/htc/usage/MyPreferenceFragment;->setViewDimension(II)V

    goto :goto_0

    .line 276
    :cond_9
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/htc/usage/MyPreferenceFragment;->setViewDimension(II)V

    goto :goto_0
.end method

.method public isEnableDataChecked()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcSwitchPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isUsageLimitChecked()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v2, "MyPreferenceFragment"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "usage_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, usageType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cycle_start_day"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, cycleStartDay:I
    const-string v2, "MyPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Usage type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->addPreferencesFromResource(I)V

    .line 79
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcSwitchPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    .line 80
    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 81
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_USAGE_LIMIT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 83
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    .line 85
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE_USAGE_CYCLE_START_DAY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/usage/widget/CycleStartDayPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    .line 88
    :cond_0
    const-string v2, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->addPreferencesFromResource(I)V

    .line 90
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_WIFI_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    .line 91
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    const-string v2, "ethernet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->addPreferencesFromResource(I)V

    .line 95
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_ETHERNET_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    .line 96
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_DATA:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcSwitchPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    .line 100
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_USAGE_LIMIT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 102
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE4G_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    .line 104
    iget-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v2, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE4G_USAGE_CYCLE_START_DAY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/usage/MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/usage/widget/CycleStartDayPreference;

    iput-object v2, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/htc/usage/MyPreferenceFragment;->addOnPreferenceChangeListener()V

    .line 109
    invoke-direct {p0}, Lcom/htc/usage/MyPreferenceFragment;->addOnDateSetListener()V

    .line 110
    invoke-virtual {p0, v0}, Lcom/htc/usage/MyPreferenceFragment;->setCycleStartDaySummary(I)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mRootView:Landroid/view/View;

    .line 117
    const-string v0, "mobile"

    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "usage_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/htc/usage/MyPreferenceFragment;->setViewDimension(II)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/htc/usage/MyPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/htc/usage/MyPreferenceFragment;->setViewDimension(II)V

    goto :goto_0
.end method

.method public setChangeCycleStartDayEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    invoke-virtual {v0, p1}, Lcom/htc/usage/widget/CycleStartDayPreference;->setEnabled(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public setCycleEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "mCycleEntries"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setCycleEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "mCycleEntryValues"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setCycleStartDaySetListener(Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 158
    const-string v0, "MyPreferenceFragment"

    const-string v1, "setCycleStartDaySetListener"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/htc/usage/MyPreferenceFragment;->mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 160
    invoke-direct {p0}, Lcom/htc/usage/MyPreferenceFragment;->addOnDateSetListener()V

    .line 161
    return-void
.end method

.method public setCycleStartDaySummary(I)V
    .locals 3
    .parameter "startDay"

    .prologue
    .line 215
    const-string v0, "MyPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCycleStartDaySummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    invoke-virtual {v0, p1}, Lcom/htc/usage/widget/CycleStartDayPreference;->setCycleStartDay(I)V

    .line 218
    iget-object v1, p0, Lcom/htc/usage/MyPreferenceFragment;->mCycleStartDay:Lcom/htc/usage/widget/CycleStartDayPreference;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/usage/widget/CycleStartDayPreference;->setEnabled(Z)V

    .line 220
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCycleSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public setEnableData(Z)V
    .locals 1
    .parameter "changeable"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcSwitchPreference;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method public setEnableDataChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 191
    return-void
.end method

.method public setEnableMobileDataChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableData:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 140
    const-string v0, "MyPreferenceFragment"

    const-string v1, "setOnPreferenceChangeListener"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/htc/usage/MyPreferenceFragment;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/htc/usage/MyPreferenceFragment;->addOnPreferenceChangeListener()V

    goto :goto_0
.end method

.method public setPreferredCycle(Ljava/lang/String;)V
    .locals 1
    .parameter "entryValue"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mUsageCycleList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setUsageLimitChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setUsageLimitEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/MyPreferenceFragment;->mEnableUsageLimit:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
