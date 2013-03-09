.class public final Landroid_maps_conflict_avoidance/com/google/map/Zoom;
.super Ljava/lang/Object;
.source "Zoom.java"


# static fields
.field private static minZoomLevel:I

.field private static final zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# instance fields
.field private final equatorPixels:I

.field private final zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x16

    const/4 v2, 0x1

    sput v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    new-array v2, v5, [Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    const/16 v0, 0x100

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v5, :cond_0

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    add-int/lit8 v3, v1, -0x1

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {v4, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;-><init>(II)V

    aput-object v4, v2, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    return-void
.end method

.method public static getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    if-lt p0, v1, :cond_0

    const/16 v1, 0x16

    if-gt p0, v1, :cond_0

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    add-int/lit8 v2, p0, -0x1

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method


# virtual methods
.method public changePixelsToTargetZoomlevel(II)I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    if-ge v0, p2, :cond_0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    sub-int v0, p2, v0

    shl-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    sub-int/2addr v0, p2

    shr-int v0, p1, v0

    goto :goto_0
.end method

.method public getEquatorPixels()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    return v0
.end method

.method public getNextHigherZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsForDistance(I)I
    .locals 4

    int-to-long v0, p1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x26382e0

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    return v0
.end method

.method public getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 2

    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    div-int/2addr v0, v1

    return v0
.end method

.method public isMoreZoomedIn(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
