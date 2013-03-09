.class final enum Ljava/util/concurrent/TimeUnit$1;
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

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public toDays(J)J
    .locals 2

    const-wide v0, 0x4e94914f0000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 2

    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 2

    const-wide v0, 0xdf8475800L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 0

    return-wide p1
.end method

.method public toSeconds(J)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    div-long v0, p1, v0

    return-wide v0
.end method
