.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;
.super Ljava/lang/Object;
.source "AndroidTrafficPainter.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPath"
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public lineTo(II)V
    .locals 3

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    shr-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    shr-int/lit8 v2, p2, 0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public moveTo(II)V
    .locals 3

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    shr-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    shr-int/lit8 v2, p2, 0x8

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method
