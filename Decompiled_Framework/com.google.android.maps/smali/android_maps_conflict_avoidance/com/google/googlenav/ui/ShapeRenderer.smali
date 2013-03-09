.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;
.super Ljava/lang/Object;
.source "ShapeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    }
.end annotation


# instance fields
.field private pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private polyBoundaryPixelXY:[[[J

.field private final shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;


# direct methods
.method private static getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v0, v2, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    aput-object v2, v0, v3

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v2

    new-array v0, v2, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v1, 0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I
    .locals 1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getPixelXYOnScreen(II[J)[J
    .locals 5

    array-length v2, p2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v2

    sub-int/2addr v2, p0

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getX(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getXY(II)J
    .locals 7

    const/16 v6, 0x20

    int-to-long v4, p0

    shl-long v0, v4, v6

    int-to-long v4, p1

    shl-long/2addr v4, v6

    ushr-long v2, v4, v6

    or-long v4, v0, v2

    return-wide v4
.end method

.method public static getY(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method protected static isInRange([I)Z
    .locals 5

    const/16 v4, 0xfa0

    const/16 v3, -0xfa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v2, v4, :cond_0

    aget v2, p0, v1

    if-lt v2, v3, :cond_0

    aget v2, p0, v0

    if-gt v2, v4, :cond_0

    aget v2, p0, v0

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static makeInRange(IIII[I)V
    .locals 8

    const/16 v7, 0xfa0

    const/16 v6, -0xfa0

    sub-int v1, p0, p2

    sub-int v0, p1, p3

    if-gt p0, v7, :cond_0

    if-ge p0, v6, :cond_1

    :cond_0
    if-lez p0, :cond_4

    const/16 p0, 0xfa0

    :goto_0
    sub-int v2, p0, p2

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int p1, p3, v2

    :cond_1
    if-gt p1, v7, :cond_2

    if-ge p1, v6, :cond_3

    :cond_2
    add-int p1, v0, p3

    if-lez p1, :cond_5

    const/16 p1, 0xfa0

    :goto_1
    sub-int v2, p1, p3

    int-to-long v2, v2

    int-to-long v4, v1

    mul-long/2addr v2, v4

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int p0, p2, v2

    :cond_3
    const/4 v2, 0x0

    aput p0, p4, v2

    const/4 v2, 0x1

    aput p1, p4, v2

    return-void

    :cond_4
    const/16 p0, -0xfa0

    goto :goto_0

    :cond_5
    const/16 p1, -0xfa0

    goto :goto_1
.end method

.method private static outcode(IIII)I
    .locals 2

    const/4 v0, 0x0

    if-gez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    if-gez p3, :cond_3

    const/4 v0, 0x2

    :cond_0
    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_1
    if-le p2, p0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    if-le p3, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v13, v13

    new-array v13, v13, [[[J

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v13, v13

    if-ge v7, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v13, v13, v7

    instance-of v13, v13, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    if-nez v13, :cond_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v10, v13, v7

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    new-array v14, v5, [[J

    aput-object v14, v13, v7

    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v4, v3, v2

    array-length v13, v4

    new-array v8, v13, [J

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v14, v15}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v14

    const/4 v15, 0x0

    aget-object v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v15

    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v14

    aput-wide v14, v8, v13

    const/4 v6, 0x1

    :goto_2
    array-length v13, v4

    if-ge v6, v13, :cond_6

    aget-object v13, v4, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v11

    aget-object v13, v4, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v12

    add-int/lit8 v13, v9, -0x1

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v13

    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_4

    add-int/lit8 v13, v9, -0x1

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v13

    sub-int v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_4

    array-length v13, v4

    add-int/lit8 v13, v13, -0x1

    if-ne v6, v13, :cond_5

    :cond_4
    invoke-static {v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    move-result-wide v13

    aput-wide v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v13, v13, v7

    new-array v14, v9, [J

    aput-object v14, v13, v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v14, v14, v7

    aget-object v14, v14, v2

    const/4 v15, 0x0

    invoke-static {v8, v13, v14, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 13

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getCenter()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v10

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseWidth()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v5

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseHeight()I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v6

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    sub-int v3, v2, p2

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    sub-int v4, v2, p3

    div-int/lit8 v2, v5, 0x2

    sub-int v2, v3, v2

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v4, v7

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v12

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v4

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v11

    and-int v2, v12, v11

    if-nez v2, :cond_0

    invoke-interface/range {p6 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v7

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    move-result v8

    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    move-result v9

    move-object v2, p1

    invoke-interface/range {v2 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintEllipse(IIIIIII)V

    goto :goto_0
.end method

.method private renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 15

    const/4 v11, 0x2

    new-array v9, v11, [I

    const/4 v11, 0x2

    new-array v10, v11, [I

    const/4 v11, 0x2

    new-array v7, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, p6, v12

    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v12

    sub-int v12, v12, p2

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-wide v12, p6, v12

    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v12

    sub-int v12, v12, p3

    aput v12, v10, v11

    const/4 v11, 0x0

    aget v11, v10, v11

    const/4 v12, 0x1

    aget v12, v10, v12

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v4

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p6

    array-length v11, v0

    if-ge v2, v11, :cond_6

    const/4 v11, 0x0

    aget-wide v12, p6, v2

    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v12

    sub-int v12, v12, p2

    aput v12, v9, v11

    const/4 v11, 0x1

    aget-wide v13, p6, v2

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v13

    sub-int v13, v13, p3

    aput v13, v9, v11

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v6

    and-int v11, v4, v6

    if-nez v11, :cond_5

    if-nez v5, :cond_0

    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    move-result v11

    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v12

    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineStyle()I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->startLine(III)V

    const/4 v5, 0x1

    :cond_0
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    const/4 v13, 0x0

    aget v13, v10, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-static {v11, v12, v13, v14, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    :cond_1
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    aget v11, v10, v11

    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v9, v13

    const/4 v14, 0x1

    aget v14, v9, v14

    invoke-static {v11, v12, v13, v14, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    :cond_2
    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v10, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    :goto_1
    if-nez v3, :cond_4

    const/4 v8, 0x1

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v9, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v9, v12

    aput v12, v10, v11

    move v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v10, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->endLine()V

    :cond_7
    return-void
.end method

.method private renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 10

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    move-result v0

    new-array v1, v0, [[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p6, v8

    invoke-static {p2, p3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v8

    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v4

    move v2, v4

    const/4 v3, 0x1

    :goto_0
    const/4 v7, 0x0

    aget-object v7, v1, v7

    array-length v7, v7

    if-ge v3, v7, :cond_0

    const/4 v7, 0x0

    aget-object v7, v1, v7

    aget-wide v7, v7, v3

    invoke-static {v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    aget-wide v8, v8, v3

    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v8

    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    move-result v5

    and-int v7, v4, v5

    if-nez v7, :cond_2

    const/4 v6, 0x1

    :cond_0
    const/16 v7, 0xf

    if-ne v2, v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v7, p6, v3

    invoke-static {p2, p3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    move-result-object v7

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    or-int/2addr v2, v5

    move v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    move-result v7

    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v8

    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getFillColor()I

    move-result v9

    invoke-interface {p1, v1, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintPolygon([[JIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getImageVersion()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->getId()I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 12

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    const/4 v11, 0x0

    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    array-length v1, v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v1, v1, v11

    instance-of v1, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v7, v1, v11

    check-cast v7, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v8, v1, v11

    check-cast v8, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    aget-object v1, v1, v11

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isFilled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v7, v1, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v1, v1, v11

    array-length v1, v1

    if-ge v10, v1, :cond_2

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    aget-object v1, v1, v11

    aget-object v7, v1, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method
