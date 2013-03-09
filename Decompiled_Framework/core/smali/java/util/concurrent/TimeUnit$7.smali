.class final enum Ljava/util/concurrent/TimeUnit$7;
.super Ljava/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V

    return-void
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 0

    return-wide p1
.end method

.method public toHours(J)J
    .locals 6

    const-wide/16 v2, 0x18

    const-wide v4, 0x555555555555555L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 6

    const-wide v2, 0x141dd76000L

    const-wide/32 v4, 0x65ce7f7

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 6

    const-wide/32 v2, 0x5265c00

    const-wide v4, 0x18daea1d7fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 6

    const-wide/16 v2, 0x5a0

    const-wide v4, 0x16c16c16c16c16L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 6

    const-wide v2, 0x4e94914f0000L

    const-wide/32 v4, 0x1a0ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 6

    const-wide/32 v2, 0x15180

    const-wide v4, 0x611722833944L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
