.class public Lcom/htc/dockmode/widget/FlipRes;
.super Ljava/lang/Object;
.source "FlipRes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlipClock_res()[I
    .locals 2

    .prologue
    .line 8
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 13
    .local v0, resId:[I
    return-object v0

    .line 8
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static FlipClock_resAmPm()[I
    .locals 2

    .prologue
    .line 17
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 18
    .local v0, resId:[I
    return-object v0

    .line 17
    nop

    :array_0
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data
.end method
