.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;
.super Ljava/lang/Object;
.source "MapBiller.java"


# instance fields
.field private lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

.field private previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-void
.end method

.method private static isBillingRequiredForSatellite()Z
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 2

    invoke-virtual {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;->billingPointSent(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    :cond_0
    return-void
.end method

.method private static sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V

    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .locals 17

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v8

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->isBillingRequiredForSatellite()Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v14

    if-eq v13, v14, :cond_3

    :cond_2
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v13, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getHeight()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    div-int/lit8 v7, v11, 0x2

    div-int/lit8 v6, v10, 0x2

    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v11, :cond_4

    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v10, :cond_7

    :cond_4
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v9

    :cond_5
    :goto_1
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v13, v14, :cond_6

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v13

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v9, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v14, v7

    if-ge v13, v14, :cond_b

    move v4, v11

    :cond_8
    :goto_2
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    neg-int v14, v6

    if-ge v13, v14, :cond_c

    move v5, v10

    :cond_9
    :goto_3
    if-nez v5, :cond_a

    if-eqz v4, :cond_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v14

    invoke-virtual {v13, v4, v5, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v9

    goto :goto_1

    :cond_b
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    if-le v13, v7, :cond_8

    neg-int v4, v11

    goto :goto_2

    :cond_c
    iget v13, v12, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    if-le v13, v6, :cond_9

    neg-int v5, v10

    goto :goto_3
.end method
