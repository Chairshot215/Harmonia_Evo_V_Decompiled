.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final EVENT_STOP_LOW_BATTERY_TONE:I = 0x32

.field private static final HTC_DEBUG:Z = false

.field private static final SHOW_BATTERY_WARNINGS_IN_CALL:Z = true

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32


# instance fields
.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryLevelTextView2:Landroid/widget/TextView;

.field private mBatteryShowLowOnEndCall:Z

.field mBatteryStatus:I

.field private mBatteryView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

.field mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field mLowBatteryReminderLevels:[I

.field private final mLowBatteryWarningLevel:I

.field private final mLowBatteryWarningLevel2:I

.field private mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlugType:I

.field private mPluggedBatteryLevel:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mshowLowChargingWarning:Z

.field private mshowLowChargingWarning2:Z

.field private otherAppsContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$StatusBarHandler;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel2:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->otherAppsContext:Landroid/content/Context;

    return-void
.end method

.method private PowerSaverOn(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "case"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PowerSaverOn] getCase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_1
    return-void
.end method

.method private PowerSaverOnWarning(I)V
    .locals 30

    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning]"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x7b

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v26, "powersaver_dataconnection"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v26, "PowerUI"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "powersaver_dataconnection:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    const v12, 0x7f0800c7

    :goto_0
    const v11, 0x20c022a

    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v27, 0x1b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x28

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x7b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x7b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x7d

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    :cond_1
    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    :cond_2
    const-string v26, "PowerUI"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PowerSaverOnWarning, show (actual "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "%)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning]  mBatteryLevelTextView != null "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v27, "3.5"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI;->startLowBatteryTone()V

    return-void

    :cond_4
    const v12, 0x7f0800c8

    goto/16 :goto_0

    :cond_5
    const v12, 0x20c0227

    goto/16 :goto_0

    :cond_6
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const v12, 0x20c0229

    const v11, 0x20c022b

    goto/16 :goto_1

    :cond_7
    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    const v12, 0x20c0228

    const v11, 0x20c022b

    goto/16 :goto_1

    :cond_8
    const-string v26, "PowerUI"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PowerSaverOnWarning, show (actual "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "% + 1%)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    :cond_9
    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning]  mBatteryLevelTextView == null "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f030008

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    const v26, 0x7f0e0025

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v27, "3.5"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning]  case 1 "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v26, "powersaver_backgrounddata"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v23, Lcom/android/systemui/power/PowerSaverOperation;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/power/PowerSaverOperation;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/power/PowerSaverOperation;->getSysWifi(Landroid/content/Context;)Z

    move-result v15

    invoke-static {}, Lcom/android/systemui/power/PowerSaverOperation;->getSysBluetooth()Z

    move-result v7

    const-string v26, "powersaver_screen_brightness"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v26, "powersaver_screen_timeout"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning] get set value"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v3, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x1080027

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x104000a

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x20c022c

    new-instance v27, Lcom/android/systemui/power/PowerUI$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    sget-short v26, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v27, 0x7b

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const v26, 0x7f0800c9

    new-instance v27, Lcom/android/systemui/power/PowerUI$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    :cond_b
    const v26, 0x7f0e0003

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x7d3

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    if-nez v7, :cond_c

    const v26, 0x7f0e0026

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v26, 0x7f0200b4

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    if-nez v15, :cond_d

    const v26, 0x7f0e0027

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    const v26, 0x7f0200c3

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    if-eqz v13, :cond_e

    const v26, 0x7f0e0028

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    const v26, 0x7f0200b5

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    if-eqz v14, :cond_f

    const v26, 0x7f0e0029

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v26, 0x7f0200b7

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    if-eqz v6, :cond_10

    const v26, 0x7f0e002a

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    const v26, 0x7f0200c2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    const v26, 0x20200b2

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_11

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_11
    const v26, 0x20200b6

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_12

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_12
    const v26, 0x20200b4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_13

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_13
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_3

    :cond_14
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_15

    const/16 v26, 0x3

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    :cond_15
    const-string v26, "PowerUI"

    const-string v27, "[PowerSaverOnWarning]  case 2 or 3"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v3, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x1080027

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x104000a

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x20c022d

    new-instance v27, Lcom/android/systemui/power/PowerUI$9;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v26, 0x20c022c

    new-instance v27, Lcom/android/systemui/power/PowerUI$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x7d3

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    const v26, 0x20200b2

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_16

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_16
    const v26, 0x20200b6

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_17

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_17
    const v26, 0x20200b4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_18

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setSingleLine(Z)V

    :cond_18
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->PowerSaverOn(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning2()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onUnsupportedCharger(Landroid/content/Intent;)V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    :try_start_0
    const-string v2, "com.android.settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "onBatteryLow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "Before SHOW_LOW_BATTERY_WARNING"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_1
    return-void
.end method

.method private onUnsupportedCharger(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showOverVoltageWarning()V

    return-void
.end method

.method private showLowChargingWarning()V
    .locals 12

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x7f08007b

    invoke-virtual {v1, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x20c01a5

    invoke-virtual {v1, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v3

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v9}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "PowerUI"

    const-string v10, "updateLowChargingWarningDialogSkin()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v6, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skinpackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x20200a6

    invoke-virtual {v3, v9}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x20200b2

    invoke-virtual {v3, v9}, Lcom/htc/dialog/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "default"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "default skin"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v9, "PowerUI"

    const-string v10, "not default"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v8, :cond_4

    const-string v9, "popup_top_bright"

    const-string v10, "drawable"

    invoke-virtual {v7, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    if-eqz v5, :cond_0

    const-string v9, "dlg_popup_bottom_center"

    const-string v10, "drawable"

    invoke-virtual {v7, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private showLowChargingWarning2()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    return-void
.end method

.method private showOverVoltageWarning()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x20c01a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    :cond_0
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    return-void

    :catch_0
    move-exception v2

    const-string v4, "PowerUI"

    const-string v5, "String charger_not_supported not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLowBatteryTone()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/16 v6, 0x32

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v3, :cond_1

    const/16 v1, 0x19

    const/16 v2, 0x50

    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-ne v3, v4, :cond_0

    const/16 v1, 0x19

    const/16 v2, 0x50

    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2
.end method

.method private stopLowBatteryTone()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method private final updateCallState(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v2, :cond_2

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_6
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    goto :goto_1
.end method


# virtual methods
.method dismissInvalidChargerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mLowBatteryDialog2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method showInvalidChargerDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method showLowBatteryWarning()V
    .locals 14

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f080010

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showLowBatteryWarning(), levelText = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "power_sounds_enabled"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const-string v9, "low_battery_sound"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v9, 0x5

    invoke-virtual {v5, v9}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void

    :cond_1
    const-string v9, "PowerUI"

    const-string v10, "mBatteryLevelTextView2 == null, prepare alter dialog - please connect charger"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v10, 0x7f03

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0002

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x7f08000e

    invoke-virtual {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x1080027

    invoke-virtual {v0, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x5880

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_2

    const v9, 0x7f080012

    new-instance v10, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v10, p0, v3}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v9}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_0
.end method

.method public start()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.content.intent.action.BATTERY_WARNING_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.powersaversetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
