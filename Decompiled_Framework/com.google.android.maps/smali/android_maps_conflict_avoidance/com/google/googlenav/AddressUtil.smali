.class public Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p2, p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
