.class public Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;
.super Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;
.source "SlideAnimatorsFactory_Kabaeva.java"


# instance fields
.field public final DEBUG_REPLOG:Ljava/lang/String;

.field public final KENBUMS_FACE_ARRAY:Ljava/lang/String;

.field public final KENBUMS_FULL_HEIGHT:Ljava/lang/String;

.field public final KENBUMS_FULL_WIDTH:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field public kenbums:Lcom/htc/album/addons/slideshow/KenBums;

.field public final mDefaultScale:F

.field public final mVisionScaleRating:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;-><init>()V

    .line 15
    const-class v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    .line 16
    const-string v0, "KA>>> Animator "

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->DEBUG_REPLOG:Ljava/lang/String;

    .line 18
    const-string v0, "KenMums_face_array"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FACE_ARRAY:Ljava/lang/String;

    .line 19
    const-string v0, "kenBums_photo_width"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FULL_WIDTH:Ljava/lang/String;

    .line 20
    const-string v0, "kenBums_photo_height"

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->KENBUMS_FULL_HEIGHT:Ljava/lang/String;

    .line 22
    const v0, 0x3fa66666

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->mVisionScaleRating:F

    .line 23
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->mDefaultScale:F

    .line 25
    new-instance v0, Lcom/htc/album/addons/slideshow/KenBums;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/KenBums;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    .line 30
    return-void
.end method


# virtual methods
.method public createSlideAnimator(IIIILandroid/os/Bundle;)Lcom/htc/sunny2/slideshow/SlideAnimator;
    .locals 30
    .parameter "itemIndex"
    .parameter "sunnyImageTexture"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "extraInfo"

    .prologue
    .line 37
    const/16 v19, 0x1

    .line 40
    .local v19, isRunKenBums:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v5, mFaceArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/addons/slideshow/KenBums$Face;>;"
    const-string v2, "KenMums_face_array"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 42
    const-string v2, "kenBums_photo_width"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 43
    .local v21, nPhotoFullWidth:I
    const-string v2, "kenBums_photo_height"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 45
    .local v20, nPhotoFullHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step0. Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Face: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PhotoFullWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PhotoFullHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ViewW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ViewH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move/from16 v0, p3

    int-to-float v2, v0

    const v3, 0x3fa66666

    mul-float v23, v2, v3

    .line 51
    .local v23, nTargetWidth:F
    move/from16 v0, p4

    int-to-float v2, v0

    const v3, 0x3fa66666

    mul-float v22, v2, v3

    .line 52
    .local v22, nTargetHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    move/from16 v0, v23

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/album/addons/slideshow/KenBums;->findFitScreenSize(IIII)Landroid/graphics/Rect;

    move-result-object v28

    .line 53
    .local v28, rectFitScreen:Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 54
    .local v14, fBasicPhotoWidth:F
    const/4 v13, 0x0

    .line 55
    .local v13, fBasicPhotoHeight:F
    if-eqz v28, :cond_0

    .line 57
    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v14, v2

    .line 58
    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v13, v2

    .line 69
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step1. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v19, :cond_1

    if-eqz v5, :cond_1

    .line 77
    move/from16 v0, v21

    int-to-float v2, v0

    div-float v29, v14, v2

    .line 79
    .local v29, translateRating:F
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 82
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/addons/slideshow/KenBums$Face;

    .line 83
    .local v17, faceOri:Lcom/htc/album/addons/slideshow/KenBums$Face;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    .line 84
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    .line 85
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    mul-float v2, v2, v29

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    .line 79
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 63
    .end local v17           #faceOri:Lcom/htc/album/addons/slideshow/KenBums$Face;
    .end local v18           #i:I
    .end local v29           #translateRating:F
    :cond_0
    const/16 v19, 0x0

    .line 64
    move/from16 v0, v21

    int-to-float v14, v0

    .line 65
    move/from16 v0, v20

    int-to-float v13, v0

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactor_Kabaeva][createSlideAnimator]: Photo small than View Rect !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v9, RectStart:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .local v8, RectEnd:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 94
    .local v11, bFaceDetect:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    float-to-int v3, v14

    float-to-int v4, v13

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/addons/slideshow/KenBums;->analyzePhoto(IILjava/util/ArrayList;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 100
    :goto_2
    if-eqz v19, :cond_4

    if-eqz v11, :cond_4

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getStartRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getEndRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 105
    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    .line 107
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: getStartRect or getEndRect NG !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #RectStart:Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .restart local v9       #RectStart:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    .end local v8           #RectEnd:Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .restart local v8       #RectEnd:Landroid/graphics/Rect;
    const/16 v19, 0x0

    .line 122
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator KenBums Step2. Start Rect: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "End Rect: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v27, Landroid/graphics/Point;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 127
    .local v27, pointStart:Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 130
    .local v25, pointEnd:Landroid/graphics/Point;
    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v13, v2

    float-to-int v2, v2

    move-object/from16 v0, v27

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 131
    move-object/from16 v0, v25

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v13, v2

    float-to-int v2, v2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 135
    new-instance v26, Landroid/graphics/Point;

    const/high16 v2, 0x4000

    div-float v2, v14, v2

    float-to-int v2, v2

    const/high16 v3, 0x4000

    div-float v3, v13, v3

    float-to-int v3, v3

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 136
    .local v26, pointPhotoMid:Landroid/graphics/Point;
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 137
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 142
    move/from16 v0, v21

    int-to-float v2, v0

    div-float v16, v14, v2

    .line 143
    .local v16, fScaleRating:F
    const-string v2, "SlideAnimator_PanAndZoom"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;

    move-result-object v10

    .line 145
    .local v10, animator:Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;
    if-eqz v19, :cond_6

    .line 147
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v14, v13}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->init(IIFF)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->kenbums:Lcom/htc/album/addons/slideshow/KenBums;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/KenBums;->getScale()F

    move-result v15

    .line 151
    .local v15, fSRating:F
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1, v15}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->initKenBums(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    .line 162
    .end local v15           #fSRating:F
    :goto_4
    return-object v10

    .line 95
    .end local v10           #animator:Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;
    .end local v16           #fScaleRating:F
    .end local v25           #pointEnd:Landroid/graphics/Point;
    .end local v26           #pointPhotoMid:Landroid/graphics/Point;
    .end local v27           #pointStart:Landroid/graphics/Point;
    :catch_0
    move-exception v12

    .line 96
    .local v12, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: Run kenbums.analyzePhoto NG !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 115
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> Animator [HTCAlbum][SlideAnimatorsFactors_Kabaeva][createSlideAnimator]: kenbums.analyzePhoto NG !!"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 157
    .restart local v10       #animator:Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;
    .restart local v16       #fScaleRating:F
    .restart local v25       #pointEnd:Landroid/graphics/Point;
    .restart local v26       #pointPhotoMid:Landroid/graphics/Point;
    .restart local v27       #pointStart:Landroid/graphics/Point;
    :cond_6
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 158
    .local v24, pointA:Landroid/graphics/Point;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v14, v13}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->init(IIFF)Z

    .line 159
    const/high16 v2, 0x4000

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->initKenBums(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    goto :goto_4
.end method
