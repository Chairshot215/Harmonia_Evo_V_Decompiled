.class public final Lcom/android/camera/widget/PanoramaTrackingView;
.super Landroid/view/View;
.source "PanoramaTrackingView.java"


# instance fields
.field private m_DeltaX:F

.field private m_DeltaY:F

.field private m_PanoramaDirection:I

.field private m_TrackingBoxPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v13, 0x4170

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getHeight()I

    move-result v7

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    mul-int/lit8 v4, v9, 0x2

    if-le v8, v4, :cond_0

    if-le v7, v4, :cond_0

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    int-to-float v10, v8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v1, v9, v10

    if-ge v1, v8, :cond_0

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    const/high16 v9, 0x3f80

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v3, v9, v10

    :goto_1
    if-ge v3, v7, :cond_0

    sub-int v9, v8, v4

    add-int v2, v1, v9

    if-lez v2, :cond_0

    sub-int v9, v7, v4

    add-int v0, v3, v9

    if-lez v0, :cond_0

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v3

    int-to-float v11, v2

    int-to-float v12, v0

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v9, 0x4040

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFlags(I)V

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e99999a

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3f733333

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    invoke-virtual {p1, v6, v13, v13, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/high16 v9, -0x4080

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v3, v9, v10

    goto :goto_1

    :cond_3
    const v9, -0xff0100

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_4
    const/high16 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method public setDeltaXY(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    iput p2, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method

.method public setPanoramaDirection(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method
