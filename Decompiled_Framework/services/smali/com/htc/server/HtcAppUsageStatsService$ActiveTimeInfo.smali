.class final Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;
.super Ljava/lang/Object;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveTimeInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field cnt_tag:Z

.field isActivityGroup:Z

.field packageName:Ljava/lang/String;

.field pid:I

.field resumeTime:J

.field final synthetic this$0:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method private constructor <init>(Lcom/htc/server/HtcAppUsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcAppUsageStatsService;Lcom/htc/server/HtcAppUsageStatsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;-><init>(Lcom/htc/server/HtcAppUsageStatsService;)V

    return-void
.end method
