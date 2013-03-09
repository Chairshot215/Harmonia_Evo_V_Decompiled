.class public Lcom/htc/android/worldclock/Alarms$AlarmData;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Alarms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmData"
.end annotation


# instance fields
.field enabled:I

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 342
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmData;->enabled:I

    .line 344
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/worldclock/Alarms$AlarmData;->time:J

    return-void
.end method
