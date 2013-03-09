.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Lcom/htc/preference/HtcPreference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIconButton:Lcom/htc/widget/HtcFooterButton;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 104
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 856
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .parameter "uSecNow"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 757
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 759
    .local v10, btPower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 760
    .local v9, btPingCount:I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0bd5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007a

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 765
    .local v8, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 816
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 817
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 818
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 820
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 821
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 822
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 749
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 751
    .local v6, idlePower:D
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0bd8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02008d

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 753
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, notAvailable:Lcom/htc/preference/HtcPreference;
    const v1, 0x7f0c0bbd

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 390
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 668
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 670
    .local v6, phoneOnPower:D
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0bd7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020097

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 672
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 696
    const-wide/16 v8, 0x0

    .line 697
    .local v8, power:D
    const/4 v10, 0x5

    .line 698
    .local v10, BINS:I
    const-wide/16 v5, 0x0

    .line 699
    .local v5, signalTimeMs:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 701
    .local v15, strengthTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 703
    add-long/2addr v5, v15

    .line 699
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 705
    .end local v15           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    .line 706
    .local v13, scanningTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0bd6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02007e

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v11

    .line 711
    .local v11, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 715
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 675
    const-wide/16 v8, 0x0

    .line 676
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 677
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 680
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 681
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 683
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 684
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 680
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 690
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0bd3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020084

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 693
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .parameter "uSecNow"

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    .line 733
    .local v11, onTimeMs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 736
    .local v5, runningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 737
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    const-wide/16 v5, 0x0

    .line 738
    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    .line 742
    .local v13, wifiPower:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0bd4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020098

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v10

    .line 744
    .local v10, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 719
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 721
    .local v1, wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 722
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 723
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 724
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 725
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 726
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 727
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .end local v1           #wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 769
    const-wide/32 v6, 0xf4240

    .line 770
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 771
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 773
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 775
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 777
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 779
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 780
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 784
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 785
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 786
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 787
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 790
    :goto_1
    return-wide v22

    .line 780
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 790
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 5

    .prologue
    .line 828
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 829
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 830
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 831
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 832
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 834
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v1

    .line 836
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 81

    .prologue
    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/hardware/SensorManager;

    .line 480
    .local v48, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v77, v0

    .line 481
    .local v77, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v53

    .line 482
    .local v53, speedSteps:I
    move/from16 v0, v53

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 483
    .local v38, powerCpuNormal:[D
    move/from16 v0, v53

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 484
    .local v20, cpuSpeedStepTimes:[J
    const/16 v35, 0x0

    .local v35, p:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v38, v35

    .line 484
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    .line 488
    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v65

    .line 489
    .local v65, uSecTime:J
    const-wide/16 v14, 0x0

    .line 490
    .local v14, appWakelockTime:J
    const/16 v34, 0x0

    .line 491
    .local v34, osApp:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v65

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v67

    .line 493
    .local v67, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v67 .. v67}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 494
    .local v13, NU:I
    const/16 v31, 0x0

    .local v31, iu:I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_14

    .line 495
    move-object/from16 v0, v67

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 496
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v36, 0x0

    .line 497
    .local v36, power:D
    const-wide/16 v28, 0x0

    .line 498
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 500
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v41

    .line 501
    .local v41, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 502
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 503
    .local v18, cpuFgTime:J
    const-wide/16 v75, 0x0

    .line 504
    .local v75, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 505
    .local v26, gpsTime:J
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 508
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 510
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Proc;

    .line 511
    .local v42, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v68

    .line 512
    .local v68, userTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v55

    .line 513
    .local v55, systemTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 514
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 515
    add-long v5, v68, v55

    const-wide/16 v9, 0xa

    mul-long v62, v5, v9

    .line 516
    .local v62, tmpCpuTime:J
    const/16 v64, 0x0

    .line 518
    .local v64, totalTimeAtSpeeds:I
    const/16 v54, 0x0

    .local v54, step:I
    :goto_3
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_2

    .line 519
    move-object/from16 v0, v42

    move/from16 v1, v54

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v54

    .line 520
    move/from16 v0, v64

    int-to-long v5, v0

    aget-wide v9, v20, v54

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v64, v0

    .line 518
    add-int/lit8 v54, v54, 0x1

    goto :goto_3

    .line 522
    :cond_2
    if-nez v64, :cond_3

    const/16 v64, 0x1

    .line 524
    :cond_3
    const-wide/16 v39, 0x0

    .line 525
    .local v39, processPower:D
    const/16 v54, 0x0

    :goto_4
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    .line 526
    aget-wide v5, v20, v54

    long-to-double v5, v5

    move/from16 v0, v64

    int-to-double v9, v0

    div-double v43, v5, v9

    .line 527
    .local v43, ratio:D
    move-wide/from16 v0, v62

    long-to-double v5, v0

    mul-double v5, v5, v43

    aget-wide v9, v38, v54

    mul-double/2addr v5, v9

    add-double v39, v39, v5

    .line 525
    add-int/lit8 v54, v54, 0x1

    goto :goto_4

    .line 529
    .end local v43           #ratio:D
    :cond_4
    add-long v21, v21, v62

    .line 530
    add-double v36, v36, v39

    .line 531
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 533
    :cond_5
    move-wide/from16 v28, v39

    .line 534
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 535
    :cond_6
    cmpg-double v5, v28, v39

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 537
    move-wide/from16 v28, v39

    .line 538
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 544
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v39           #processPower:D
    .end local v42           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v54           #step:I
    .end local v55           #systemTime:J
    .end local v62           #tmpCpuTime:J
    .end local v64           #totalTimeAtSpeeds:I
    .end local v68           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 548
    move-wide/from16 v21, v18

    .line 550
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v36, v36, v5

    .line 553
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v74

    .line 555
    .local v74, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v74 .. v74}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/util/Map$Entry;

    .line 556
    .local v73, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v73 .. v73}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 559
    .local v72, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 560
    .local v61, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v61, :cond_9

    .line 561
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v75, v75, v5

    goto :goto_5

    .line 564
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    .end local v72           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v73           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v75, v75, v5

    .line 565
    add-long v14, v14, v75

    .line 568
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 572
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v57

    .line 573
    .local v57, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v59

    .line 574
    .local v59, tcpBytesSent:J
    add-long v5, v57, v59

    long-to-double v5, v5

    mul-double v5, v5, v16

    add-double v36, v36, v5

    .line 577
    move-wide/from16 v0, v65

    move/from16 v2, v77

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v78, v5, v9

    .line 578
    .local v78, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v78

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 579
    move-wide/from16 v0, v78

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 583
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v49

    .line 585
    .local v49, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 586
    .local v47, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Sensor;

    .line 587
    .local v45, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v52

    .line 588
    .local v52, sensorType:I
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 589
    .restart local v61       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v50, v5, v9

    .line 590
    .local v50, sensorTime:J
    const-wide/16 v32, 0x0

    .line 591
    .local v32, multiplier:D
    packed-switch v52, :pswitch_data_0

    .line 597
    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v46

    .line 599
    .local v46, sensorData:Landroid/hardware/Sensor;
    if-eqz v46, :cond_b

    .line 600
    invoke-virtual/range {v46 .. v46}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v32, v0

    .line 607
    .end local v46           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v50

    long-to-double v5, v0

    mul-double v5, v5, v32

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 608
    goto :goto_6

    .line 593
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v32

    .line 594
    move-wide/from16 v26, v50

    .line 595
    goto :goto_7

    .line 613
    .end local v32           #multiplier:D
    .end local v45           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v47           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v50           #sensorTime:J
    .end local v52           #sensorType:I
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const-wide/16 v5, 0x0

    cmpl-double v5, v36, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 614
    :cond_d
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v80, 0x0

    aput-wide v36, v12, v80

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 617
    .local v4, app:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 618
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 619
    move-wide/from16 v0, v78

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 620
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 621
    move-wide/from16 v0, v75

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 622
    move-wide/from16 v0, v57

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 623
    move-wide/from16 v0, v59

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 624
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_f

    .line 625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 632
    move-object/from16 v34, v4

    .line 635
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_11

    .line 636
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 494
    :goto_9
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 626
    .restart local v4       #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_f
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_10

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 629
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 637
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_11
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_12

    .line 638
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 640
    :cond_12
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v36, v5

    if-lez v5, :cond_13

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 641
    :cond_13
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto :goto_9

    .line 649
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v36           #power:D
    .end local v41           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v49           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v57           #tcpBytesReceived:J
    .end local v59           #tcpBytesSent:J
    .end local v74           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v75           #wakelockTime:J
    .end local v78           #wifiRunningTimeMs:J
    :cond_14
    if-eqz v34, :cond_16

    .line 650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v70, v5, v9

    .line 652
    .local v70, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    sub-long v5, v14, v5

    sub-long v70, v70, v5

    .line 654
    const-wide/16 v5, 0x0

    cmp-long v5, v70, v5

    if-lez v5, :cond_16

    .line 655
    move-wide/from16 v0, v70

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v36, v5, v9

    .line 657
    .restart local v36       #power:D
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v70

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 658
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v36

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 659
    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v36

    aput-wide v9, v5, v6

    .line 660
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_15

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 661
    :cond_15
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 664
    .end local v36           #power:D
    .end local v70           #wakeTimeMillis:J
    :cond_16
    return-void

    .line 591
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 795
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 796
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 797
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 798
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 803
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 804
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 805
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 806
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 807
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 810
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 812
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 18

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v14, :cond_0

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 396
    :cond_0
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 397
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 398
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 399
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 400
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 409
    const/4 v13, 0x0

    .line 411
    .local v13, totalLevel:I
    const/4 v4, 0x0

    .line 412
    .local v4, maxLevel:I
    const/4 v6, 0x0

    .line 413
    .local v6, maxSipper:Lcom/android/settings/fuelgauge/BatterySipper;
    const/4 v5, 0x0

    .line 416
    .local v5, maxPerference:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Lcom/htc/preference/HtcPreference;

    const/4 v15, -0x2

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 418
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v14, v15}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 419
    .local v2, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v14, -0x1

    invoke-virtual {v2, v14}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v14, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v15, "screen.full"

    invoke-virtual {v14, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4024

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 475
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 431
    .local v12, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4014

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_2

    .line 432
    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4059

    mul-double v9, v14, v16

    .line 433
    .local v9, percentOfTotal:D
    const-wide/high16 v14, 0x3ff0

    cmpg-double v14, v9, v14

    if-ltz v14, :cond_2

    .line 434
    new-instance v11, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v11, v14, v15, v12}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 435
    .local v11, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    move-wide/from16 v16, v0

    div-double v7, v14, v16

    .line 436
    .local v7, percentOfMax:D
    iput-wide v9, v12, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 437
    iget-object v14, v12, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    .line 441
    int-to-double v14, v4

    cmpl-double v14, v9, v14

    if-lez v14, :cond_3

    .line 442
    double-to-int v4, v9

    .line 443
    move-object v6, v12

    .line 444
    move-object v5, v11

    .line 446
    :cond_3
    double-to-int v14, v9

    add-int/2addr v13, v14

    .line 448
    const v14, 0x7fffffff

    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v15

    double-to-int v15, v15

    sub-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 449
    invoke-virtual {v11, v9, v10, v9, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 450
    iget-object v14, v12, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v14, :cond_4

    .line 451
    iget-object v14, v12, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 453
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v14, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v14

    const/16 v15, 0xb

    if-le v14, v15, :cond_2

    .line 458
    .end local v7           #percentOfMax:D
    .end local v9           #percentOfTotal:D
    .end local v11           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v12           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_5
    if-eqz v5, :cond_6

    const/16 v14, 0x64

    if-eq v13, v14, :cond_6

    .line 460
    rsub-int/lit8 v14, v13, 0x64

    add-int/2addr v14, v4

    int-to-double v14, v14

    iput-wide v14, v6, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 461
    rsub-int/lit8 v14, v13, 0x64

    add-int/2addr v14, v4

    int-to-double v14, v14

    rsub-int/lit8 v16, v13, 0x64

    add-int v16, v16, v4

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 465
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v15

    .line 466
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v14, :cond_7

    .line 468
    new-instance v14, Ljava/lang/Thread;

    const-string v16, "BatteryUsage Icon Loader"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 472
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 474
    :cond_8
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 180
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 181
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 879
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 880
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 881
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->getPaddingLeft()I

    move-result v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFooterButton;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooterButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcFooterButton;->setPadding(IIII)V

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0c0bfd

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 885
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFooterButton;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooterButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcFooterButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    .line 138
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 144
    :cond_0
    const v2, 0x7f050022

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 145
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 147
    const-string v2, "app_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 148
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v3, "battery_status"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Lcom/htc/preference/HtcPreference;

    .line 149
    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 154
    .local v1, bar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, CustomView:Landroid/view/View;
    const v2, 0x7f080010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0c0bfd

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFooterButton;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFooterButton;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFooterButton;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/HtcFooterButton;->setPadding(IIII)V

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setTextSize(F)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablePadding(I)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v7, v7, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 176
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFooterButton;->getPaddingLeft()I

    move-result v3

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFooterButton;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mIconButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFooterButton;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/HtcFooterButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 359
    const/4 v1, 0x2

    const v2, 0x7f0c0bfd

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080993

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    .local v0, refresh:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 364
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onDestroy()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 208
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 382
    :goto_0
    return v0

    .line 370
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 371
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 375
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 373
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 378
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 379
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 195
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onPause()V

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 17
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 212
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v2, :cond_0

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 214
    .local v8, hist:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 215
    invoke-virtual {v8}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    .line 216
    .local v9, histData:[B
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v3, args:Landroid/os/Bundle;
    const-string v2, "stats"

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    .line 219
    .local v1, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v2, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0c0bce

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 221
    invoke-super/range {p0 .. p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    .line 349
    .end local v1           #pa:Lcom/htc/preference/HtcPreferenceActivity;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v8           #hist:Landroid/os/Parcel;
    .end local v9           #histData:[B
    :goto_0
    return v2

    .line 223
    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_1

    .line 224
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v10, p2

    .line 226
    check-cast v10, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 227
    .local v10, pgp:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v13

    .line 228
    .local v13, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 229
    .restart local v3       #args:Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "percent"

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v2, "gauge"

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v2, "duration"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    const-string v2, "iconPackage"

    iget-object v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "iconId"

    iget v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v2, "noCoverage"

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 238
    iget-object v2, v13, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "uid"

    iget-object v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    :cond_2
    const-string v2, "drainType"

    iget-object v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 245
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 335
    const/4 v2, 0x1

    new-array v14, v2, [I

    const/4 v2, 0x0

    const v4, 0x7f0c0be3

    aput v4, v14, v2

    .line 338
    .local v14, types:[I
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 343
    .local v16, values:[D
    :goto_1
    const-string v2, "types"

    invoke-virtual {v3, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 344
    const-string v2, "values"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    .line 346
    .restart local v1       #pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0c0bcf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 349
    invoke-super/range {p0 .. p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto/16 :goto_0

    .line 248
    .end local v1           #pa:Lcom/htc/preference/HtcPreferenceActivity;
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_0
    iget-object v15, v13, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 249
    .local v15, uid:Landroid/os/BatteryStats$Uid;
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_0

    .line 260
    .restart local v14       #types:[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x6

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x7

    const-wide/16 v4, 0x0

    aput-wide v4, v16, v2

    const/16 v2, 0x8

    const-wide/16 v4, 0x0

    aput-wide v4, v16, v2

    .line 272
    .restart local v16       #values:[D
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 273
    .local v12, result:Ljava/io/Writer;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 274
    .local v11, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v4, ""

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v2, v11, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 275
    const-string v2, "report_details"

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v12, Ljava/io/StringWriter;

    .end local v12           #result:Ljava/io/Writer;
    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 278
    .restart local v12       #result:Ljava/io/Writer;
    new-instance v11, Ljava/io/PrintWriter;

    .end local v11           #printWriter:Ljava/io/PrintWriter;
    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 279
    .restart local v11       #printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 280
    const-string v2, "report_checkin_details"

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    .end local v11           #printWriter:Ljava/io/PrintWriter;
    .end local v12           #result:Ljava/io/Writer;
    .end local v14           #types:[I
    .end local v15           #uid:Landroid/os/BatteryStats$Uid;
    .end local v16           #values:[D
    :pswitch_1
    const/4 v2, 0x2

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    .line 289
    .restart local v14       #types:[I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v4, v16, v2

    .line 294
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 297
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_2
    const/4 v2, 0x6

    new-array v14, v2, [I

    fill-array-data v14, :array_2

    .line 305
    .restart local v14       #types:[I
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 313
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 316
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_3
    const/4 v2, 0x6

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    .line 324
    .restart local v14       #types:[I
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 332
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 249
    :array_0
    .array-data 0x4
        0xd9t 0xbt 0xct 0x7ft
        0xdat 0xbt 0xct 0x7ft
        0xdbt 0xbt 0xct 0x7ft
        0xdct 0xbt 0xct 0x7ft
        0xddt 0xbt 0xct 0x7ft
        0xdft 0xbt 0xct 0x7ft
        0xe0t 0xbt 0xct 0x7ft
        0xe1t 0xbt 0xct 0x7ft
        0xe2t 0xbt 0xct 0x7ft
    .end array-data

    .line 285
    :array_1
    .array-data 0x4
        0xe3t 0xbt 0xct 0x7ft
        0xe4t 0xbt 0xct 0x7ft
    .end array-data

    .line 297
    :array_2
    .array-data 0x4
        0xddt 0xbt 0xct 0x7ft
        0xd9t 0xbt 0xct 0x7ft
        0xdat 0xbt 0xct 0x7ft
        0xdbt 0xbt 0xct 0x7ft
        0xdft 0xbt 0xct 0x7ft
        0xe0t 0xbt 0xct 0x7ft
    .end array-data

    .line 316
    :array_3
    .array-data 0x4
        0xe3t 0xbt 0xct 0x7ft
        0xd9t 0xbt 0xct 0x7ft
        0xdat 0xbt 0xct 0x7ft
        0xdbt 0xbt 0xct 0x7ft
        0xdft 0xbt 0xct 0x7ft
        0xe0t 0xbt 0xct 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 190
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 843
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 845
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 846
    monitor-exit v2

    return-void

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 849
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 849
    .end local v0           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
