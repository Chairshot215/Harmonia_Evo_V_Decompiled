.class public Lcom/htc/android/rosie/widget/WidgetHelper;
.super Ljava/lang/Object;
.source "WidgetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTiltAngleToFrame(FII)F
    .locals 2

    if-le p2, p1, :cond_0

    int-to-float v0, p1

    sub-int v1, p2, p1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method
