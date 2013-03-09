.class public Lcom/htc/album/addons/slideshow/KenBums;
.super Ljava/lang/Object;
.source "KenBums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/KenBums$Face;
    }
.end annotation


# instance fields
.field private final DEBUG_PRELOG:Ljava/lang/String;

.field private final OBVERSE:I

.field private final PHOTO_LANDSCAPE:I

.field private final PHOTO_PROTRAIT:I

.field private final REVERSE:I

.field private final TAGLOG:Ljava/lang/String;

.field private final ZOOM_IN:I

.field private final ZOOM_OUT:I

.field private mEyeRangRaing:F

.field private mFaceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxScaleRating:F

.field private mMaxTranslateDistance:F

.field private mMaxZoomTranslateDistance:F

.field private mOutptScale:F

.field private mPhotoHeight:I

.field private mPhotoState:I

.field private mPhotoWidth:I

.field private mPointEnd:Landroid/graphics/PointF;

.field private mPointStart:Landroid/graphics/PointF;

.field private mPreDirection:I

.field private mPreDirectionRegion:I

.field private mPreZoom:I

.field private mRandom:Ljava/util/Random;

.field private mRandomSplit:I

.field private mRectEnd:Landroid/graphics/RectF;

.field private mRectFace:Landroid/graphics/RectF;

.field private mRectPhoto:Landroid/graphics/RectF;

.field private mRectStart:Landroid/graphics/RectF;

.field private mRectVision:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "KenBums"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->TAGLOG:Ljava/lang/String;

    .line 23
    const-string v0, "[HTCAlbum][KenBums] "

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->DEBUG_PRELOG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->PHOTO_PROTRAIT:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->PHOTO_LANDSCAPE:I

    .line 27
    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->OBVERSE:I

    .line 28
    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->REVERSE:I

    .line 29
    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->ZOOM_OUT:I

    .line 30
    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->ZOOM_IN:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    .line 34
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mEyeRangRaing:F

    .line 35
    const v0, 0x3e19999a

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    .line 36
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxTranslateDistance:F

    .line 37
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxZoomTranslateDistance:F

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    .line 61
    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    .line 71
    const-string v0, "KenBums"

    const-string v1, "[HTCAlbum][KenBums] [KenBums][KenBums]:  KenBums()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    .line 80
    return-void
.end method


# virtual methods
.method public analyzePhoto(IILjava/util/ArrayList;II)Z
    .locals 9
    .parameter "nPhotoW"
    .parameter "nPhotoH"
    .parameter
    .parameter "nVisionWidth"
    .parameter "nVisionHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, arrayFace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/addons/slideshow/KenBums$Face;>;"
    if-nez p3, :cond_0

    const/4 v4, 0x0

    .line 221
    :goto_0
    return v4

    .line 88
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    .line 89
    iput-object p3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    .line 90
    iput p1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    .line 91
    iput p2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    .line 92
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    .line 94
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    .line 95
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, p4

    int-to-float v8, p5

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    .line 97
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: arrayFace Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Photo: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Vision: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->calculateFaceRect()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 103
    const-string v4, "KenBums"

    const-string v5, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Face Detection !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x2

    .line 109
    .local v0, FaceCase:I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 113
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRectForFace(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    .line 114
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 92
    .end local v0           #FaceCase:I
    :cond_1
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 116
    .restart local v0       #FaceCase:I
    :cond_2
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    .line 118
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomZoomPoint_Portrait(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 120
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    add-float v1, v4, v5

    .line 122
    .local v1, fScaleRating:F
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    .line 123
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxTranslateDistance:F

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->findPointByDistance(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    .line 125
    :cond_3
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v1}, Lcom/htc/album/addons/slideshow/KenBums;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    .line 126
    .local v2, rectScaleVision:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    .line 128
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 131
    :cond_5
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 133
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 134
    .local v3, tempRect:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 135
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 137
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    .line 142
    .end local v3           #tempRect:Landroid/graphics/RectF;
    :goto_2
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom Scale Rating W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 140
    :cond_6
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    goto/16 :goto_2

    .line 150
    .end local v1           #fScaleRating:F
    .end local v2           #rectScaleVision:Landroid/graphics/RectF;
    :cond_7
    const/4 v4, 0x2

    if-ne v0, v4, :cond_10

    .line 154
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomPoint_FaceRect()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 156
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    add-float v1, v4, v5

    .line 158
    .restart local v1       #fScaleRating:F
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    .line 160
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v1}, Lcom/htc/album/addons/slideshow/KenBums;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    .line 161
    .restart local v2       #rectScaleVision:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    .line 163
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_9

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 166
    :cond_9
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 168
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 169
    .restart local v3       #tempRect:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 172
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    .line 177
    .end local v3           #tempRect:Landroid/graphics/RectF;
    :goto_3
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 Scale Rating W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 175
    :cond_a
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    goto/16 :goto_3

    .line 187
    .end local v0           #FaceCase:I
    .end local v1           #fScaleRating:F
    .end local v2           #rectScaleVision:Landroid/graphics/RectF;
    :cond_b
    const-string v4, "KenBums"

    const-string v5, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  No Face Detection !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomPoint_Portrait()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 193
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    .line 194
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    .line 196
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_d

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 200
    :cond_d
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    if-nez v4, :cond_e

    .line 202
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 203
    .restart local v3       #tempRect:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 204
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 206
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    .line 213
    .end local v3           #tempRect:Landroid/graphics/RectF;
    :goto_4
    const-string v5, "KenBums"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom Infor mPreDirection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    if-nez v4, :cond_f

    const-string v4, "OBVERSE"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Pan Only mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Pan Only mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 210
    :cond_e
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    goto/16 :goto_4

    .line 213
    :cond_f
    const-string v4, "REVERSE"

    goto/16 :goto_5

    .line 221
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public calculateFaceRect()Z
    .locals 15

    .prologue
    .line 226
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 228
    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: No Face!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v12, 0x0

    .line 270
    :goto_0
    return v12

    .line 232
    :cond_1
    const v9, 0x461c3c00

    .line 233
    .local v9, fTop:F
    const/4 v2, 0x0

    .line 234
    .local v2, fBottom:F
    const v3, 0x461c3c00

    .line 235
    .local v3, fLeft:F
    const/4 v4, 0x0

    .line 239
    .local v4, fRight:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 241
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/addons/slideshow/KenBums$Face;

    .line 242
    .local v10, getFace:Lcom/htc/album/addons/slideshow/KenBums$Face;
    invoke-virtual {v10}, Lcom/htc/album/addons/slideshow/KenBums$Face;->eyesDistance()F

    move-result v0

    .line 243
    .local v0, eyesDist:F
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 244
    .local v1, eyesMP:Landroid/graphics/PointF;
    invoke-virtual {v10, v1}, Lcom/htc/album/addons/slideshow/KenBums$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 246
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mEyeRangRaing:F

    mul-float/2addr v0, v12

    .line 248
    iget v12, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v12, v0

    .line 249
    .local v8, fTempTop:F
    iget v12, v1, Landroid/graphics/PointF;->y:F

    add-float v5, v12, v0

    .line 250
    .local v5, fTempBottom:F
    iget v12, v1, Landroid/graphics/PointF;->x:F

    sub-float v6, v12, v0

    .line 251
    .local v6, fTempLeft:F
    iget v12, v1, Landroid/graphics/PointF;->x:F

    add-float v7, v12, v0

    .line 253
    .local v7, fTempRight:F
    cmpg-float v12, v8, v9

    if-gez v12, :cond_2

    move v9, v8

    .line 254
    :cond_2
    cmpl-float v12, v5, v2

    if-lez v12, :cond_3

    move v2, v5

    .line 255
    :cond_3
    cmpg-float v12, v6, v3

    if-gez v12, :cond_4

    move v3, v6

    .line 256
    :cond_4
    cmpl-float v12, v7, v4

    if-lez v12, :cond_5

    move v4, v7

    .line 258
    :cond_5
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 262
    .end local v0           #eyesDist:F
    .end local v1           #eyesMP:Landroid/graphics/PointF;
    .end local v5           #fTempBottom:F
    .end local v6           #fTempLeft:F
    .end local v7           #fTempRight:F
    .end local v8           #fTempTop:F
    .end local v10           #getFace:Lcom/htc/album/addons/slideshow/KenBums$Face;
    :cond_6
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    .line 263
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_7

    const/4 v3, 0x0

    .end local v3           #fLeft:F
    :cond_7
    float-to-int v13, v3

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 264
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    const/4 v13, 0x0

    cmpg-float v13, v9, v13

    if-gez v13, :cond_8

    const/4 v9, 0x0

    .end local v9           #fTop:F
    :cond_8
    float-to-int v13, v9

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->top:F

    .line 265
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-lez v13, :cond_9

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v4, v13

    .end local v4           #fRight:F
    :cond_9
    float-to-int v13, v4

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->right:F

    .line 266
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v13, v13

    cmpl-float v13, v2, v13

    if-lez v13, :cond_a

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v2, v13

    .end local v2           #fBottom:F
    :cond_a
    float-to-int v13, v2

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    .line 268
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: FaceRect: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public findFitScreenSize(IIII)Landroid/graphics/Rect;
    .locals 15
    .parameter "nScreenWidth"
    .parameter "mScreenHeight"
    .parameter "nPhotoWidth"
    .parameter "nPhotoHeight"

    .prologue
    .line 679
    const/high16 v9, 0x4000

    .line 680
    .local v9, mMaxRating:F
    move/from16 v0, p3

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    const/4 v8, 0x1

    .line 681
    .local v8, isPhotoWidthOverScreen:Z
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    const/4 v7, 0x1

    .line 683
    .local v7, isPhotoHeightOverScreen:Z
    :goto_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 686
    .local v10, rectResult:Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 688
    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 689
    .local v6, fRatingW:F
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v4, v11, v12

    .line 690
    .local v4, fRatingH:F
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 695
    .local v5, fRatingScale:F
    move/from16 v0, p3

    int-to-float v11, v0

    mul-float v3, v11, v5

    .line 696
    .local v3, fNewWidth:F
    move/from16 v0, p4

    int-to-float v11, v0

    mul-float v2, v11, v5

    .line 698
    .local v2, fNewHeight:F
    const/4 v11, 0x0

    const/4 v12, 0x0

    float-to-int v13, v3

    float-to-int v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    .end local v2           #fNewHeight:F
    .end local v3           #fNewWidth:F
    .end local v4           #fRatingH:F
    .end local v5           #fRatingScale:F
    .end local v6           #fRatingW:F
    .end local v10           #rectResult:Landroid/graphics/Rect;
    :goto_2
    return-object v10

    .line 680
    .end local v7           #isPhotoHeightOverScreen:Z
    .end local v8           #isPhotoWidthOverScreen:Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 681
    .restart local v8       #isPhotoWidthOverScreen:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 701
    .restart local v7       #isPhotoHeightOverScreen:Z
    .restart local v10       #rectResult:Landroid/graphics/Rect;
    :cond_2
    if-nez v8, :cond_3

    if-eqz v7, :cond_4

    .line 703
    :cond_3
    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 704
    .restart local v6       #fRatingW:F
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v4, v11, v12

    .line 705
    .restart local v4       #fRatingH:F
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 710
    .restart local v5       #fRatingScale:F
    move/from16 v0, p3

    int-to-float v11, v0

    mul-float v3, v11, v5

    .line 711
    .restart local v3       #fNewWidth:F
    move/from16 v0, p4

    int-to-float v11, v0

    mul-float v2, v11, v5

    .line 713
    .restart local v2       #fNewHeight:F
    const/4 v11, 0x0

    const/4 v12, 0x0

    float-to-int v13, v3

    float-to-int v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 718
    .end local v2           #fNewHeight:F
    .end local v3           #fNewWidth:F
    .end local v4           #fRatingH:F
    .end local v5           #fRatingScale:F
    .end local v6           #fRatingW:F
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public findPointByDistance(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7
    .parameter "fDistanceTarget"
    .parameter "pointStart"
    .parameter "pointEnd"

    .prologue
    const/4 v6, 0x0

    .line 586
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    cmpl-float v2, p1, v6

    if-nez v2, :cond_1

    .line 601
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 588
    .restart local p3
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 590
    .local v1, pointTarget:Landroid/graphics/PointF;
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 592
    .local v0, fDistance:F
    const-string v2, "KenBums"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][KenBums] [KenBums][findPointByDistance]: fDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    cmpl-float v2, p1, v6

    if-eqz v2, :cond_0

    .line 596
    iget v2, p2, Landroid/graphics/PointF;->x:F

    div-float v3, p1, v0

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 597
    iget v2, p2, Landroid/graphics/PointF;->y:F

    div-float v3, p1, v0

    iget v4, p3, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 599
    const-string v2, "KenBums"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][KenBums] [KenBums][findPointByDistance]: pointTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v1

    .line 601
    goto :goto_0
.end method

.method public getEndPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getEndRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 651
    const-string v0, "KenBums"

    const-string v1, "[KenBums][getScale]: getScale NG ! mRectEnd==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    .line 655
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/KenBums;->transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaceRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRandomPoint_FaceRect()Z
    .locals 15

    .prologue
    .line 476
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    .line 477
    .local v11, pointStart:Landroid/graphics/PointF;
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 479
    .local v10, pointEnd:Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 480
    .local v3, nMainDirection:I
    const/4 v9, 0x0

    .line 481
    .local v9, nSubDirection:I
    const/4 v2, 0x1

    .line 483
    .local v2, nFacePhotoStatus:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    .line 485
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v3, v12

    .line 486
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v9, v12

    .line 496
    :goto_0
    div-int/lit8 v0, v3, 0x2

    .line 497
    .local v0, fRandomH:I
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v1, v9, v12

    .line 499
    .local v1, fRandomW:I
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 501
    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: fRandomH or fRandomW is 0 !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v12, 0x0

    .line 552
    :goto_1
    return v12

    .line 490
    .end local v0           #fRandomH:I
    .end local v1           #fRandomW:I
    :cond_1
    const/4 v2, 0x2

    .line 491
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v3, v12

    .line 492
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v9, v12

    goto :goto_0

    .line 505
    .restart local v0       #fRandomH:I
    .restart local v1       #fRandomW:I
    :cond_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v8, v12, -0x1

    .line 506
    .local v8, nRanRange:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 517
    .local v7, nRanIndexStart:I
    sub-int v6, v8, v7

    .line 518
    .local v6, nRanIndexEnd:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v7, v1

    add-int v4, v12, v13

    .line 519
    .local v4, nPointX:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 521
    .local v5, nPointY:I
    const/4 v12, 0x1

    if-ne v2, v12, :cond_3

    .line 522
    new-instance v11, Landroid/graphics/PointF;

    .end local v11           #pointStart:Landroid/graphics/PointF;
    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 526
    .restart local v11       #pointStart:Landroid/graphics/PointF;
    :goto_2
    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->x:F

    .line 527
    iget v12, v11, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->y:F

    .line 529
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v6, v1

    add-int v4, v12, v13

    .line 530
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v5, v12, v0

    .line 532
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 533
    new-instance v10, Landroid/graphics/PointF;

    .end local v10           #pointEnd:Landroid/graphics/PointF;
    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 537
    .restart local v10       #pointEnd:Landroid/graphics/PointF;
    :goto_3
    iget v12, v10, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    iput v12, v10, Landroid/graphics/PointF;->x:F

    .line 538
    iget v12, v10, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iput v12, v10, Landroid/graphics/PointF;->y:F

    .line 540
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: Random Information: nRanIndexStart: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: Random Information: nRanIndexEnd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: pointStart:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pointEnd:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    .line 547
    iput-object v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    .line 552
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 524
    :cond_3
    new-instance v11, Landroid/graphics/PointF;

    .end local v11           #pointStart:Landroid/graphics/PointF;
    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v11       #pointStart:Landroid/graphics/PointF;
    goto/16 :goto_2

    .line 535
    :cond_4
    new-instance v10, Landroid/graphics/PointF;

    .end local v10           #pointEnd:Landroid/graphics/PointF;
    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v10       #pointEnd:Landroid/graphics/PointF;
    goto/16 :goto_3
.end method

.method public getRandomPoint_Portrait()Z
    .locals 15

    .prologue
    .line 402
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    .line 403
    .local v11, pointStart:Landroid/graphics/PointF;
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 405
    .local v10, pointEnd:Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 406
    .local v3, nMainDirection:I
    const/4 v9, 0x0

    .line 408
    .local v9, nSubDirection:I
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 410
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    .line 411
    iget v9, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    .line 420
    :goto_0
    div-int/lit8 v1, v3, 0x2

    .line 421
    .local v1, fRandomH:I
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v2, v9, v12

    .line 423
    .local v2, fRandomW:I
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 425
    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: fRandomH or fRandomW is 0 !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v12, 0x0

    .line 469
    :goto_1
    return v12

    .line 415
    .end local v1           #fRandomH:I
    .end local v2           #fRandomW:I
    :cond_1
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    .line 416
    iget v9, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    goto :goto_0

    .line 429
    .restart local v1       #fRandomH:I
    .restart local v2       #fRandomW:I
    :cond_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v8, v12, -0x1

    .line 430
    .local v8, nRanRange:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 433
    .local v7, nRanIndexStart:I
    const/4 v0, 0x0

    .line 434
    .local v0, count:I
    :goto_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    if-eq v7, v12, :cond_3

    const/16 v12, 0xa

    if-ge v0, v12, :cond_4

    .line 436
    :cond_3
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    :cond_4
    sub-int v6, v8, v7

    .line 441
    .local v6, nRanIndexEnd:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v7, v2

    add-int v4, v12, v13

    .line 442
    .local v4, nPointX:I
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 444
    .local v5, nPointY:I
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 445
    new-instance v11, Landroid/graphics/PointF;

    .end local v11           #pointStart:Landroid/graphics/PointF;
    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 449
    .restart local v11       #pointStart:Landroid/graphics/PointF;
    :goto_3
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v6, v2

    add-int v4, v12, v13

    .line 450
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v5, v12, v1

    .line 452
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 453
    new-instance v10, Landroid/graphics/PointF;

    .end local v10           #pointEnd:Landroid/graphics/PointF;
    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 457
    .restart local v10       #pointEnd:Landroid/graphics/PointF;
    :goto_4
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: Random Information: nRanIndexStart: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: Random Information: nRanIndexEnd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: pointStart:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pointEnd:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    .line 464
    iput-object v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    .line 467
    iput v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    .line 469
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 447
    :cond_5
    new-instance v11, Landroid/graphics/PointF;

    .end local v11           #pointStart:Landroid/graphics/PointF;
    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v11       #pointStart:Landroid/graphics/PointF;
    goto/16 :goto_3

    .line 455
    :cond_6
    new-instance v10, Landroid/graphics/PointF;

    .end local v10           #pointEnd:Landroid/graphics/PointF;
    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v10       #pointEnd:Landroid/graphics/PointF;
    goto/16 :goto_4
.end method

.method public getRandomZoomPoint_Portrait(Landroid/graphics/PointF;)Z
    .locals 14
    .parameter "pointStart"

    .prologue
    .line 358
    if-nez p1, :cond_0

    const/4 v11, 0x0

    .line 397
    :goto_0
    return v11

    .line 360
    :cond_0
    const/4 v3, 0x0

    .line 361
    .local v3, nMainDirection:I
    const/4 v10, 0x0

    .line 363
    .local v10, nSubDirection:I
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 365
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    .line 366
    iget v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    .line 374
    :goto_1
    iget v11, p1, Landroid/graphics/PointF;->y:F

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    const/4 v4, 0x0

    .line 375
    .local v4, nPart:I
    :goto_2
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v11, v10, v11

    int-to-float v0, v11

    .line 377
    .local v0, fInterval:F
    div-int/lit8 v1, v3, 0x2

    .line 378
    .local v1, fRandomH:I
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v2, v10, v11

    .line 380
    .local v2, fRandomW:I
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v9, v11, -0x1

    .line 381
    .local v9, nRanRange:I
    iget v11, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v0

    float-to-int v8, v11

    .line 382
    .local v8, nRanIndexStart:I
    sub-int v7, v9, v8

    .line 384
    .local v7, nRanIndexEnd:I
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    mul-int v12, v7, v2

    add-int v5, v11, v12

    .line 385
    .local v5, nPointX:I
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v11, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    rsub-int/lit8 v12, v4, 0x1

    mul-int/2addr v12, v1

    add-int v6, v11, v12

    .line 387
    .local v6, nPointY:I
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 388
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    .line 392
    :goto_3
    const-string v11, "KenBums"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomZoomPoint_Portrait]: nPart: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "nRanIndexStart: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , nRanIndexEnd: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v11, "KenBums"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomZoomPoint_Portrait]: mPointStart:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mPointEnd:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 370
    .end local v0           #fInterval:F
    .end local v1           #fRandomH:I
    .end local v2           #fRandomW:I
    .end local v4           #nPart:I
    .end local v5           #nPointX:I
    .end local v6           #nPointY:I
    .end local v7           #nRanIndexEnd:I
    .end local v8           #nRanIndexStart:I
    .end local v9           #nRanRange:I
    :cond_1
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    .line 371
    iget v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    goto/16 :goto_1

    .line 374
    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 390
    .restart local v0       #fInterval:F
    .restart local v1       #fRandomH:I
    .restart local v2       #fRandomW:I
    .restart local v4       #nPart:I
    .restart local v5       #nPointX:I
    .restart local v6       #nPointY:I
    .restart local v7       #nRanIndexEnd:I
    .restart local v8       #nRanIndexStart:I
    .restart local v9       #nRanRange:I
    :cond_3
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v6

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    goto/16 :goto_3
.end method

.method public getScale()F
    .locals 4

    .prologue
    const/high16 v0, 0x3f80

    .line 660
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    .line 662
    :cond_0
    const-string v1, "KenBums"

    const-string v2, "[KenBums][getScale]: getScale NG ! mFaceArray==null || mRectEnd==null || mRectStart==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_1
    :goto_0
    return v0

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    .line 671
    .local v0, scaleRating:F
    const-string v1, "KenBums"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Output ScaleRating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStartPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 640
    const-string v0, "KenBums"

    const-string v1, "[KenBums][getScale]: getScale NG ! mRectStart==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/KenBums;->transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "source"
    .parameter "nCropW"
    .parameter "nCropH"

    .prologue
    .line 725
    if-nez p1, :cond_0

    const/4 v13, 0x0

    .line 758
    :goto_0
    return-object v13

    .line 727
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 728
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 729
    .local v4, originalWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 731
    .local v5, orginalHeight:I
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v4

    div-float v12, v1, v2

    .line 732
    .local v12, fRatingW:F
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v10, v1, v2

    .line 733
    .local v10, fRatingH:F
    const/4 v11, 0x0

    .line 734
    .local v11, fRatingScale:F
    cmpg-float v1, v12, v10

    if-gez v1, :cond_4

    .line 735
    move v11, v10

    .line 739
    :goto_1
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 741
    const-string v1, "KenBums"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] resize() fRating : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v13, 0x0

    .line 744
    .local v13, output:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 746
    .local v8, count:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 748
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 752
    :goto_2
    if-nez v13, :cond_2

    const/4 v1, 0x3

    if-le v8, v1, :cond_1

    .line 753
    :cond_2
    invoke-virtual {p1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 756
    :cond_3
    const-string v2, "KenBums"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] cropCenter(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v13, :cond_5

    const-string v1, "Fail !!!"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    .end local v8           #count:I
    .end local v13           #output:Landroid/graphics/Bitmap;
    :cond_4
    move v11, v12

    goto :goto_1

    .line 749
    .restart local v8       #count:I
    .restart local v13       #output:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 750
    .local v9, ex:Ljava/lang/OutOfMemoryError;
    const-string v1, "KenBums"

    const-string v2, "[HTCAlbum][KenBums] resize() createBitmap Fail !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 756
    .end local v9           #ex:Ljava/lang/OutOfMemoryError;
    :cond_5
    const-string v1, "Success !!!"

    goto :goto_3
.end method

.method public reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9
    .parameter "pointTaret"
    .parameter "rectTaret"
    .parameter "rectPhoto"

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 306
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: pointTaret not in rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-object v4

    .line 312
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 314
    :cond_1
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: rectTaret is bigger than rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v5, v8

    .line 319
    .local v3, fTempWidth:F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v2, v5, v8

    .line 321
    .local v2, fTempHeight:F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 322
    .local v4, rectTemp:Landroid/graphics/RectF;
    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, fOffsetX:F
    const/4 v1, 0x0

    .line 335
    .local v1, fOffsetY:F
    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 336
    :cond_3
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 337
    :cond_4
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v5, v6

    .line 338
    :cond_5
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v6

    .line 340
    :cond_6
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 345
    const-string v5, "KenBums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][KenBums] [KenBums][reworkRect]: reworkRect: ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public reworkRectForFace(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7
    .parameter "rectFace"
    .parameter "rectTaret"
    .parameter "rectPhoto"

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: pointTaret not in rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-object v4

    .line 281
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 283
    :cond_1
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: rectTaret is bigger than rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float v0, v4, v5

    .line 288
    .local v0, fOffsetX:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float v1, v4, v5

    .line 290
    .local v1, fOffsetY:F
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 291
    .local v3, rectTemp:Landroid/graphics/RectF;
    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 293
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRectForFace]: new reworkRect: ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 300
    .local v2, pointTarget:Landroid/graphics/PointF;
    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 8
    .parameter "rectSrc"
    .parameter "scaleRating"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 557
    if-eqz p1, :cond_0

    cmpl-float v5, p2, v6

    if-nez v5, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 581
    :goto_0
    return-object v1

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v2, v5, p2

    .line 560
    .local v2, newWidth:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v0, v5, p2

    .line 562
    .local v0, newHeight:F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 564
    .local v1, newRect:Landroid/graphics/RectF;
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 580
    :goto_1
    const-string v5, "KenBums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][KenBums] [KenBums][scaleRect]: Scale Rect - Width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , Height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v2, v5

    div-float v4, v5, v7

    .line 572
    .local v4, offsetW:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v0, v5

    div-float v3, v5, v7

    .line 574
    .local v3, offsetH:F
    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 575
    iget v5, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/RectF;->top:F

    .line 576
    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 577
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method public transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6
    .parameter "rectf"

    .prologue
    .line 606
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 615
    :goto_0
    return-object v4

    .line 608
    :cond_0
    iget v5, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v5

    .line 609
    .local v1, nLeft:I
    iget v5, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v5

    .line 610
    .local v3, nTop:I
    iget v5, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v5

    .line 611
    .local v2, nRight:I
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v5

    .line 613
    .local v0, nBottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 615
    .local v4, rectNew:Landroid/graphics/Rect;
    goto :goto_0
.end method
