.class public Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils;
.super Ljava/lang/Object;
.source "GPSInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/fieldtrial/dmcmd/GPSInfoUtils$TimeJulFromSecs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getHeading(I)Ljava/lang/String;
    .locals 5
    .parameter "wVal"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, fVal:F
    int-to-float v1, p1

    const v2, 0x40360aa6

    div-float v0, v1, v2

    .line 32
    const-string v1, "%.2f deg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLatitude(I)Ljava/lang/String;
    .locals 5
    .parameter "iVal"

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, fVal:F
    int-to-float v1, p1

    const v2, 0x48360b61

    div-float v0, v1, v2

    .line 18
    const-string v1, "%.8f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLongtitude(I)Ljava/lang/String;
    .locals 5
    .parameter "iVal"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, fVal:F
    int-to-float v1, p1

    const v2, 0x48360b61

    div-float v0, v1, v2

    .line 25
    const-string v1, "%.8f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVelocity(I)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 6
    const/4 v1, 0x0

    .line 7
    .local v1, val:Ljava/lang/String;
    const/4 v0, 0x0

    .line 8
    .local v0, fVal:F
    mul-int/lit8 p1, p1, 0x19

    .line 9
    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 10
    const-string v2, "%0.3f m/sec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    return-object v1
.end method
