.class Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
.super Ljava/lang/Object;
.source "AndroidTileOverlayRenderer.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidPainter"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final linePaint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final polygonPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field private final vertexPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->vertexPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawPendingLine()V
    .locals 3

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private ensureCanvas()V
    .locals 3

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method private setColor(ILandroid/graphics/Paint;)V
    .locals 2

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v0, v1, 0xff

    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public addLineSegment([I[IZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    aget v1, p2, v3

    int-to-float v1, v1

    aget v2, p2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    aget v1, p1, v3

    int-to-float v1, v1

    aget v2, p1, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public endLine()V
    .locals 0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->drawPendingLine()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public paintEllipse(IIIIIII)V
    .locals 5

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p7, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public paintPolygon([[JIII)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v5, p1, v0

    aget-wide v5, v5, v9

    invoke-static {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v5

    int-to-float v5, v5

    aget-object v6, p1, v0

    aget-wide v6, v6, v9

    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v5, p1, v0

    array-length v4, v5

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, p1, v0

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    move-result v5

    int-to-float v5, v5

    aget-object v6, p1, v0

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    if-ne p4, v8, :cond_3

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_2
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eq p2, v8, :cond_2

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->polygonPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2
.end method

.method public setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V
    .locals 0

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->canvas:Landroid/graphics/Canvas;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    return-void
.end method

.method public startLine(III)V
    .locals 2

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->ensureCanvas()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->access$100()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setColor(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0
.end method
