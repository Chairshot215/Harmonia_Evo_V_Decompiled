.class public Lcom/htc/android/fieldtrial/GPSInfoUtils;
.super Ljava/lang/Object;
.source "GPSInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/fieldtrial/GPSInfoUtils$TimeJulFromSecs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getHeading(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Val"

    .prologue
    .line 36
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v1, v2

    .line 37
    .local v1, wVal:F
    const/4 v0, 0x0

    .line 39
    .local v0, fVal:F
    const v2, 0x40360aa6

    div-float v0, v1, v2

    .line 40
    const-string v2, "%.2f deg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLatitude(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "Val"

    .prologue
    .line 17
    const/16 v4, 0x10

    invoke-static {p0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 18
    .local v2, lVal:J
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    .local v1, iVal:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 21
    .local v0, fVal:F
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x48360b61

    div-float v0, v4, v5

    .line 22
    const-string v4, "%.8f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getLongtitude(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "Val"

    .prologue
    .line 26
    const/16 v4, 0x10

    invoke-static {p0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 27
    .local v2, lValue:J
    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    .local v1, iVal:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 30
    .local v0, fVal:F
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x48360b61

    div-float v0, v4, v5

    .line 32
    const-string v4, "%.8f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getVelocity(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "Val"

    .prologue
    .line 6
    const/16 v5, 0x10

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 7
    .local v1, lVal:J
    long-to-int v4, v1

    .line 8
    .local v4, value:I
    const/4 v3, 0x0

    .line 9
    .local v3, val:Ljava/lang/String;
    const/4 v0, 0x0

    .line 10
    .local v0, fVal:F
    mul-int/lit8 v4, v4, 0x19

    .line 11
    int-to-float v5, v4

    const/high16 v6, 0x42c8

    div-float v0, v5, v6

    .line 12
    const-string v5, "%.3f m/sec"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    return-object v3
.end method
