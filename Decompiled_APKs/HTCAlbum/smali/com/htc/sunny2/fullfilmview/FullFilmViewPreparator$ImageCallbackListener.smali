.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1705
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;II)V
    .locals 12
    .parameter "decoder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1709
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_0

    .line 1738
    :goto_0
    return-void

    .line 1711
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v7, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v7

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static {v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1712
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v7, v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v7, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v7

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static {v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1713
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1716
    if-lt p2, p3, :cond_1

    .line 1717
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v7, v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {p1, v6, v7}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 1719
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v7, v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {p1, v6, v7}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 1722
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1723
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0xfa

    if-le v6, v7, :cond_5

    const/4 v5, 0x1

    .line 1724
    .local v5, sourceWidthHeightOverPanoramaThreshold:Z
    :goto_1
    if-le p2, p3, :cond_6

    mul-int/lit8 v6, p3, 0x4

    if-le p2, v6, :cond_6

    const/4 v4, 0x1

    .line 1725
    .local v4, sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :goto_2
    if-le p3, p2, :cond_7

    mul-int/lit8 v6, p2, 0x4

    if-le p3, v6, :cond_7

    const/4 v3, 0x1

    .line 1726
    .local v3, sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :goto_3
    if-nez v4, :cond_3

    if-eqz v3, :cond_8

    :cond_3
    const/4 v2, 0x1

    .line 1728
    .local v2, sourceAspectRatioOverPanoramaThreshold:Z
    :goto_4
    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 1729
    const/high16 v6, 0x4580

    int-to-float v7, p2

    div-float/2addr v6, v7

    const/high16 v7, 0x4580

    int-to-float v8, p3

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1730
    .local v1, scaleRatioLimitDueToTexture:F
    const-wide/high16 v6, 0x4150

    int-to-double v8, p3

    int-to-double v10, p2

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1731
    .local v0, scaleRatio:F
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    int-to-float v7, p2

    mul-float/2addr v7, v0

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4580

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1732
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    int-to-float v7, p3

    mul-float/2addr v7, v0

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4580

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1736
    .end local v0           #scaleRatio:F
    .end local v1           #scaleRatioLimitDueToTexture:F
    .end local v2           #sourceAspectRatioOverPanoramaThreshold:Z
    .end local v3           #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    .end local v4           #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    .end local v5           #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v7, v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    invoke-virtual {p1, v6, v7}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto/16 :goto_0

    .line 1723
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1724
    .restart local v5       #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1725
    .restart local v4       #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 1726
    .restart local v3       #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_4
.end method
