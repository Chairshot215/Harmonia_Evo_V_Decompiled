.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
.super Ljava/lang/Object;
.source "MapTile.java"


# static fields
.field private static final CJPG_HEADER:[B

.field protected static final LAYER_DATA_HEADER:[B

.field private static loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static textSize:I

.field private static final unicolorTiles:Ljava/util/Hashtable;


# instance fields
.field private baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private completePaintCount:I

.field private data:[B

.field private firstPaintTime:J

.field private hasScaledImage:Z

.field private imageVersion:I

.field private isBaseMapImageRecyclable:Z

.field private isMapImageRecyclable:Z

.field private isPreCached:Z

.field private final isTemp:Z

.field private lastAccessTime:J

.field private lastPaintTime:J

.field private layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private requested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x43t
        0x4at
        0x50t
        0x47t
    .end array-data

    :array_1
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    invoke-direct {p0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    return-void
.end method

.method private static createTempImages()V
    .locals 4

    const/16 v3, 0x100

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v1

    :try_start_0
    const-string v0, "/loading_tile_android.png"

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-interface {v1, v3, v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static equalBytes([BI[B)Z
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p2

    add-int/2addr v3, p1

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private extractLayerTileAndImageData()[B
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    invoke-static {v2, v1, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    array-length v2, v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v4, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/ConversionUtil;->byteArrayToInt([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x4

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    invoke-direct {v2, v6, v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v4

    new-array v0, v5, [B

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v5, v4, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gez v3, :cond_0

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    :cond_0
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_INFO_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    new-array v4, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v5, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-virtual {v1, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    const-string v2, "IOException reading layer data"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([B)[B

    move-result-object v0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 14

    const/16 v13, 0x100

    const/4 v12, 0x0

    array-length v10, p0

    const/4 v11, 0x3

    if-ge v10, v11, :cond_1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    aget-byte v10, p0, v12

    and-int/lit16 v8, v10, 0xff

    const/4 v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    const/4 v10, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v0, v10, 0xff

    shl-int/lit8 v10, v8, 0x10

    shl-int/lit8 v11, v5, 0x8

    or-int/2addr v10, v11

    or-int v1, v10, v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    invoke-virtual {v10, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v6, :cond_0

    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v3

    invoke-interface {v3, v13, v13, v12}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v7

    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    invoke-interface {v4, v12, v12, v13, v13}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    goto :goto_0
.end method

.method private static getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 3

    const/16 v2, 0x100

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/no_tile_256.png"

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    return-object v0

    :catch_0
    move-exception v0

    invoke-interface {v1, v2, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(II)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createTempImages()V

    :cond_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    goto :goto_0
.end method

.method public static getTextSize()I
    .locals 1

    sget v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    return v0
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    new-array v0, v1, [B

    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-direct {v3, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V

    return-object v3
.end method

.method private setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    :cond_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    return-void
.end method

.method private setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    :cond_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    return-void
.end method

.method public static setTextSize(I)V
    .locals 0

    sput p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    return-void
.end method

.method private static verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .locals 3

    const/16 v1, 0x100

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong image size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized compact()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized createImage()V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->extractLayerTileAndImageData()[B

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    invoke-static {v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eq v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    goto :goto_0

    :cond_5
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v1

    invoke-interface {v3, v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCompletePaintCount()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstPaintTime()J
    .locals 2

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    return-wide v0
.end method

.method public getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 2

    const-wide/high16 v0, -0x8000

    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    const-wide/high16 v3, -0x8000

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    :try_start_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v3

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createImage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v3, :cond_4

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v2

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    :cond_2
    return-object v2

    :cond_3
    :try_start_3
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getImageVersion()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    return v0
.end method

.method public getIsPreCached()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isPreCached:Z

    return v0
.end method

.method public getLastAccessTime()J
    .locals 2

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public getRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRenderedImage()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScaledImage()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeScaledImage()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    :cond_0
    return-void
.end method

.method public restoreBaseImage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    return-void
.end method

.method public declared-synchronized setData([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tile already complete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V
    .locals 0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    return-void
.end method

.method public setImageVersion(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    :cond_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    return-void
.end method

.method public final setLastAccessTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    return-void
.end method

.method public setPaint(JJ)V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    :cond_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    :cond_1
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    :cond_2
    return-void
.end method

.method public setRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "B?"

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
