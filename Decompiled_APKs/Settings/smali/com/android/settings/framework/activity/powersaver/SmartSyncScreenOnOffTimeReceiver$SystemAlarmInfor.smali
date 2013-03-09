.class final Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
.super Ljava/lang/Object;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemAlarmInfor"
.end annotation


# instance fields
.field alarm_alarmtime:J

.field alarm_dayofweek:I

.field alarm_enable:I

.field alarm_hour:I

.field alarm_minutes:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;-><init>()V

    return-void
.end method
