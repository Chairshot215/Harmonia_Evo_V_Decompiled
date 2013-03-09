.class public Lcom/htc/android/worldclock/Timers$TimerData;
.super Ljava/lang/Object;
.source "Timers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerData"
.end annotation


# instance fields
.field state:I

.field timeExpired:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    return-void
.end method
