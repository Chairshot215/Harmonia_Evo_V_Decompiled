.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.source "AndroidTileOverlayRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
    }
.end annotation


# static fields
.field private static final WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

.field private static final bgPaint:Landroid/graphics/Paint;


# instance fields
.field private final painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

.field private final trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;-><init>()V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .locals 1

    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/PathEffect;
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method private static paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method protected generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 12

    const/16 v4, 0x100

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v8

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-virtual {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->setup(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-virtual {v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v0, v8, v7, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v10

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v2

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v3

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
