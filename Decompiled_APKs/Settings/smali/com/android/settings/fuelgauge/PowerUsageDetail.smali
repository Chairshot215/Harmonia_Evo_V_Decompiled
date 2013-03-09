.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$2;,
        Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_FORCE_STOP:I = 0x7

.field public static final ACTION_LOCATION_SETTINGS:I = 0x6

.field public static final ACTION_REPORT:I = 0x8

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_REPORT_CHECKIN_DETAILS:Ljava/lang/String; = "report_checkin_details"

.field public static final EXTRA_REPORT_DETAILS:Ljava/lang/String; = "report_details"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xect 0xbt 0xct 0x7ft
        0xedt 0xbt 0xct 0x7ft
        0xebt 0xbt 0xct 0x7ft
        0xf1t 0xbt 0xct 0x7ft
        0xf3t 0xbt 0xct 0x7ft
        0xeft 0xbt 0xct 0x7ft
        0xf6t 0xbt 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 452
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 421
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 422
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040057

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 423
    .local v2, item:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 424
    const v5, 0x7f08007d

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 425
    .local v0, actionButton:Landroid/widget/Button;
    const v5, 0x7f0800ed

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 426
    .local v4, summaryView:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    :goto_0
    return-void

    .line 464
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 464
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 470
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 473
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 474
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 477
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 470
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 21

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 165
    .local v4, args:Landroid/os/Bundle;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 166
    const-string v17, "percent"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 167
    .local v12, percentage:I
    const-string v17, "gauge"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 168
    .local v7, gaugeValue:I
    const-string v17, "since"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 169
    const-string v17, "uid"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 170
    const-string v17, "drainType"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 171
    const-string v17, "noCoverage"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 172
    const-string v17, "iconPackage"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, iconPackage:Ljava/lang/String;
    const-string v17, "iconId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 174
    .local v9, iconId:I
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 176
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 177
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v3, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x1020010

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 193
    .local v15, summary:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    const-string v17, "types"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 197
    const-string v17, "values"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x1020016

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x1020014

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 203
    .local v16, text1:Landroid/widget/TextView;
    const v17, 0x7f0c0d37

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0800f0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f08018b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f08018c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x102000d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    .line 211
    .local v14, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v14, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x1020006

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 214
    .local v8, icon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0800f1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0800f2

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 224
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v5, dividerImage:Landroid/widget/ImageView;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v11, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const v17, 0x2080700

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f08009b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    const/16 v18, 0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f0c0ae4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x10403b0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "send_action_app_error"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 245
    .local v6, enabled:I
    if-eqz v6, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 248
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    .end local v6           #enabled:I
    :goto_3
    return-void

    .line 184
    .end local v5           #dividerImage:Landroid/widget/ImageView;
    .end local v8           #icon:Landroid/widget/ImageView;
    .end local v11           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #progress:Landroid/widget/ProgressBar;
    .end local v15           #summary:Landroid/widget/TextView;
    .end local v16           #text1:Landroid/widget/TextView;
    :cond_3
    if-eqz v9, :cond_0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 255
    .restart local v5       #dividerImage:Landroid/widget/ImageView;
    .restart local v6       #enabled:I
    .restart local v8       #icon:Landroid/widget/ImageView;
    .restart local v11       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14       #progress:Landroid/widget/ProgressBar;
    .restart local v15       #summary:Landroid/widget/TextView;
    .restart local v16       #text1:Landroid/widget/TextView;
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 260
    .end local v6           #enabled:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 252
    .restart local v6       #enabled:I
    :catch_0
    move-exception v17

    goto :goto_1

    .line 181
    .end local v5           #dividerImage:Landroid/widget/ImageView;
    .end local v6           #enabled:I
    .end local v8           #icon:Landroid/widget/ImageView;
    .end local v11           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #progress:Landroid/widget/ProgressBar;
    .end local v15           #summary:Landroid/widget/TextView;
    .end local v16           #text1:Landroid/widget/TextView;
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .parameter "action"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 281
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    packed-switch p1, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 283
    :pswitch_0
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0996

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 287
    :pswitch_1
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0907

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 291
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c08b6

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 295
    :pswitch_3
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0842

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 302
    :pswitch_5
    const-class v1, Lcom/android/settings/UeVersionLocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0867

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 306
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 309
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 10
    .parameter "uid"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 362
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, packages:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 365
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 367
    :goto_0
    if-eqz v3, :cond_4

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 368
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    move v1, v7

    .line 370
    .local v1, isSystem:Z
    :cond_0
    const/4 v5, 0x1

    .line 371
    .local v5, removeHeader:Z
    sget-object v6, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 414
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 415
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 417
    :cond_2
    return-void

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    :cond_3
    move-object v3, v6

    .line 365
    goto :goto_0

    :cond_4
    move-object v0, v6

    .line 367
    goto :goto_1

    .line 374
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #isSystem:Z
    .restart local v5       #removeHeader:Z
    :pswitch_0
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 375
    const v6, 0x7f0c0be6

    const v7, 0x7f0c0bf7

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 377
    const/4 v5, 0x0

    .line 381
    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_1

    .line 382
    const v6, 0x7f0c0867

    const v7, 0x7f0c0bf8

    const/4 v8, 0x6

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 384
    const/4 v5, 0x0

    goto :goto_2

    .line 388
    :pswitch_1
    const v6, 0x7f0c09c2

    const v8, 0x7f0c0bf0

    invoke-direct {p0, v6, v8, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 391
    const/4 v5, 0x0

    .line 392
    goto :goto_2

    .line 394
    :pswitch_2
    const v6, 0x7f0c0907

    const v7, 0x7f0c0bf2

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 397
    const/4 v5, 0x0

    .line 398
    goto :goto_2

    .line 400
    :pswitch_3
    const v6, 0x7f0c08b6

    const v7, 0x7f0c0bf4

    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 403
    const/4 v5, 0x0

    .line 404
    goto :goto_2

    .line 406
    :pswitch_4
    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 407
    const v6, 0x7f0c0842

    const v7, 0x7f0c0bee

    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 410
    const/4 v5, 0x0

    goto :goto_2

    .line 366
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    :catch_0
    move-exception v8

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 14

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 316
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v9, :cond_2

    .line 317
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 319
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v9, v9, v1

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_0

    .line 317
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_0
    if-eqz v1, :cond_1

    .line 323
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, dividerImage:Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    const v9, 0x2080700

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 330
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    .end local v0           #dividerImage:Landroid/widget/ImageView;
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v9, v9, v1

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 335
    .local v7, value:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 347
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v1

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v7

    .line 349
    :goto_3
    const v9, 0x7f040058

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 351
    .local v3, item:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    const v9, 0x7f0800ee

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 353
    .local v5, labelView:Landroid/widget/TextView;
    const v9, 0x7f0800ef

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 354
    .local v8, valueView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    .end local v3           #item:Landroid/view/ViewGroup;
    .end local v5           #labelView:Landroid/widget/TextView;
    .end local v8           #valueView:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v1

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatBytes(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v7

    .line 339
    goto :goto_3

    .line 341
    :pswitch_2
    const-string v9, "%d%%"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 342
    goto :goto_3

    .line 344
    :pswitch_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 358
    .end local v1           #i:I
    .end local v4           #label:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    return-void

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0bdc
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 12
    .parameter "uid"

    .prologue
    .line 515
    const/4 v10, 0x1

    if-ge p1, v10, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0800f5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 520
    .local v7, packagesParent:Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 523
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 525
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 526
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 532
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 534
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v10, v10, v2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 535
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 537
    .local v5, label:Ljava/lang/CharSequence;
    if-eqz v5, :cond_4

    .line 538
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 545
    :cond_4
    if-eqz v2, :cond_5

    .line 546
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 547
    .local v1, dividerImage:Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 550
    .local v8, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    const v10, 0x2080700

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 553
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 556
    .end local v1           #dividerImage:Landroid/widget/ImageView;
    .end local v8           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    const v10, 0x7f04005a

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 558
    .local v4, item:Landroid/view/ViewGroup;
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    const v10, 0x7f0800ee

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 560
    .local v6, labelView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v4           #item:Landroid/view/ViewGroup;
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v6           #labelView:Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 4

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 450
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 446
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 434
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0800f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 512
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 492
    .local v2, report:Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 493
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 494
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 495
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 497
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 500
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 501
    .local v1, batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 502
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 503
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 504
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 505
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 507
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, result:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 510
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 271
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 275
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0adb

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 266
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 146
    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 147
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 148
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 154
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 156
    return-void
.end method
