.class public Lcom/android/systemui/statusbar/phone/TrackingPatternView;
.super Landroid/view/View;
.source "TrackingPatternView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mTexture:Landroid/graphics/Bitmap;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020221

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTextureWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTextureHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTextureWidth:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TrackingPatternView;->mTextureHeight:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v2, v8, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v7, v3

    goto :goto_1

    :cond_0
    add-int/2addr v6, v4

    goto :goto_0

    :cond_1
    return-void
.end method
