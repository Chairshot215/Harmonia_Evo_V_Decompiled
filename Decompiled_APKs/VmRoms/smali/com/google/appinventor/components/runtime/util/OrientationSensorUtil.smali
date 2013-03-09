.class public Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mod(FF)F
    .locals 3

    rem-float v0, p0, p1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-float/2addr v0, p1

    goto :goto_0
.end method

.method public static normalizeAzimuth(F)F
    .locals 1

    const/high16 v0, 0x43b4

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result v0

    return v0
.end method

.method public static normalizePitch(F)F
    .locals 3

    const/high16 v2, 0x4334

    add-float v0, p0, v2

    const/high16 v1, 0x43b4

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result v0

    sub-float/2addr v0, v2

    return v0
.end method

.method public static normalizeRoll(F)F
    .locals 3

    const/high16 v2, 0x4334

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, -0x3ccc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, -0x3d4c

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x42b4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-float v0, v2, v0

    const/high16 v1, 0x4387

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x43b4

    sub-float/2addr v0, v1

    goto :goto_0
.end method
