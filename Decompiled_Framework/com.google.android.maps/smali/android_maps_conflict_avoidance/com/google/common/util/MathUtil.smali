.class public final Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final sinArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;->sinArray:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x4t
        0x9t
        0xdt
        0x11t
        0x16t
        0x1at
        0x1et
        0x23t
        0x27t
        0x2bt
        0x30t
        0x34t
        0x38t
        0x3ct
        0x41t
        0x45t
        0x49t
        0x4dt
        0x51t
        0x56t
        0x5at
        0x5et
        0x62t
        0x66t
        0x6at
        0x6et
        0x71t
        0x75t
        0x79t
        0x7dt
        0x81t
        0x84t
        0x88t
        0x8ct
        0x8ft
        0x93t
        0x96t
        0x9at
        0x9dt
        0xa1t
        0xa4t
        0xa7t
        0xaat
        0xaet
        0xb1t
        0xb4t
        0xb7t
        0xbat
        0xbdt
        0xc0t
        0xc2t
        0xc5t
        0xc8t
        0xcat
        0xcdt
        0xcft
        0xd2t
        0xd4t
        0xd6t
        0xd9t
        0xdbt
        0xddt
        0xdft
        0xe1t
        0xe3t
        0xe4t
        0xe6t
        0xe8t
        0xe9t
        0xebt
        0xect
        0xeet
        0xeft
        0xf0t
        0xf1t
        0xf3t
        0xf4t
        0xf5t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf8t
        0xf9t
        0xf9t
        0xf9t
        0xfat
        0xfat
        0xfat
        0xfat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ceiledDivision(II)I
    .locals 1

    if-ltz p0, :cond_0

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method
