.class public Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;,
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;,
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;
    }
.end annotation


# static fields
.field private static converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->resetConverter()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetConverter()V
    .locals 2

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    return-void
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
