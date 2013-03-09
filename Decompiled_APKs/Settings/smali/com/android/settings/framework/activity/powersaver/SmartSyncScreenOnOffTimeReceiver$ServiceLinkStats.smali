.class final Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
.super Ljava/lang/Object;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceLinkStats"
.end annotation


# instance fields
.field autosync_on:I

.field datalink_on:I

.field locationservice_on:I

.field time:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>()V

    return-void
.end method
