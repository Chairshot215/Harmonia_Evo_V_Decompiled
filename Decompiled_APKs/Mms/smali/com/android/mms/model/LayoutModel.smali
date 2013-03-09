.class public Lcom/android/mms/model/LayoutModel;
.super Lcom/android/mms/model/Model;
.source "LayoutModel.java"


# static fields
.field public static final DEFAULT_LAYOUT_TYPE:I = 0x0

.field public static final IMAGE_REGION_ID:Ljava/lang/String; = "Image"

.field public static final LAYOUT_BOTTOM_TEXT:I = 0x0

.field public static final LAYOUT_LEFT_TEXT:I = 0x2

.field public static final LAYOUT_RIGHT_TEXT:I = 0x3

.field public static final LAYOUT_TOP_TEXT:I = 0x1

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "LayoutModel"

.field public static final TEXT_REGION_ID:Ljava/lang/String; = "Text"


# instance fields
.field private mBottom:I

.field private mImageRegion:Lcom/android/mms/model/RegionModel;

.field private mIsLandScape:Z

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

.field private mLayoutType:I

.field private mNonStdRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRight:I

.field private mRootLayout:Lcom/android/mms/model/RegionModel;

.field private mTextRegion:Lcom/android/mms/model/RegionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 53
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 55
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 56
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 57
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 59
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->detectOrientation()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/RegionModel;Ljava/util/List;)V
    .locals 6
    .parameter "rootLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/RegionModel;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 43
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 63
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 64
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 68
    .local v1, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, rId:Ljava/lang/String;
    const-string v3, "Image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 71
    :cond_0
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "LayoutModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found non-standard region: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1           #r:Lcom/android/mms/model/RegionModel;
    .end local v2           #rId:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->detectOrientation()V

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    .line 83
    return-void
.end method

.method private adaptRegion(Lcom/android/mms/model/RegionModel;FF)Lcom/android/mms/model/RegionModel;
    .locals 8
    .parameter "origRegion"
    .parameter "ratioX"
    .parameter "ratioY"

    .prologue
    .line 590
    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    return-object v0
.end method

.method private createDefaultImageRegion()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 97
    return-void
.end method

.method private createDefaultRootLayout()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 88
    return-void
.end method

.method private createDefaultTextRegion()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 107
    return-void
.end method

.method private isNeedMapNonStdRegion()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v4

    .line 119
    :cond_1
    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v5, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, bFirstExist:Z
    const/4 v1, 0x0

    .line 128
    .local v1, bSecondExist:Z
    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/RegionModel;

    .line 129
    .local v3, rgnNonStd:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "first"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bottom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 132
    :cond_3
    const/4 v0, 0x1

    .line 140
    :cond_4
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 141
    const/4 v4, 0x1

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "second"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Top"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private mapNonStdImageRegion()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/RegionModel;

    .line 154
    .local v7, rgnNonStd:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    :cond_3
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mapNonStdTextRegion()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/RegionModel;

    .line 172
    .local v7, rgnNonStd:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "second"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    :cond_3
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rotate()Lcom/android/mms/model/LayoutModel;
    .locals 12

    .prologue
    .line 601
    iget-object v9, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v9}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v8

    .line 602
    .local v8, rootLayoutWidth:I
    iget-object v9, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v9}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    .line 604
    .local v7, rootLayoutHeight:I
    const-string v9, "LayoutModel"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 605
    const-string v9, "LayoutModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rotate("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/List;

    move-result-object v6

    .line 609
    .local v6, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/RegionModel;

    .line 610
    .local v5, region:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    .line 611
    .local v2, origLeft:I
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    .line 612
    .local v3, origTop:I
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    .line 613
    .local v4, origWidth:I
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v1

    .line 615
    .local v1, origHeight:I
    invoke-virtual {v5, v3}, Lcom/android/mms/model/RegionModel;->setLeft(I)V

    .line 616
    sub-int v9, v8, v2

    sub-int/2addr v9, v4

    invoke-virtual {v5, v9}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 617
    invoke-virtual {v5, v1}, Lcom/android/mms/model/RegionModel;->setWidth(I)V

    .line 618
    invoke-virtual {v5, v4}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    goto :goto_0

    .line 621
    .end local v1           #origHeight:I
    .end local v2           #origLeft:I
    .end local v3           #origTop:I
    .end local v4           #origWidth:I
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    iget-object v9, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v9, v7}, Lcom/android/mms/model/RegionModel;->setWidth(I)V

    .line 622
    iget-object v9, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v9, v8}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 624
    return-object p0
.end method

.method private validateLayouts()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v2, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->isNeedMapNonStdRegion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->mapNonStdImageRegion()Z

    .line 193
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->mapNonStdTextRegion()Z

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v2, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v2, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    if-nez v2, :cond_7

    .line 206
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 210
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportOverlapRelayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-ne v0, v1, :cond_6

    .line 214
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 217
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageRegion.setTop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 272
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v1

    .line 206
    goto :goto_0

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 226
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageRegion.setLeft("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setLeft(I)V

    goto :goto_1

    .line 233
    :cond_7
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-nez v1, :cond_a

    .line 234
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x3

    :cond_8
    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 239
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportOverlapRelayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-nez v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 246
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextRegion.setTop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    goto/16 :goto_1

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 255
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextRegion.setLeft("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setLeft(I)V

    goto/16 :goto_1

    .line 264
    :cond_a
    const-string v1, "LayoutModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect layout: mTextRegion.getLeft() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mTextRegion.getTop() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mImageRegion.getLeft() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mImageRegion.getTop() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    goto/16 :goto_1
.end method


# virtual methods
.method public adaptTo(IIZZ)Lcom/android/mms/model/LayoutModel;
    .locals 25
    .parameter "width"
    .parameter "height"
    .parameter "useImageRgn"
    .parameter "useTextRgn"

    .prologue
    .line 487
    const-string v10, "LayoutModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adapt "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/LayoutModel;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to root<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", use_image_region="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", use_text_region="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 492
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Illegal display size."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 496
    :cond_1
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v10}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v11}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_2

    const/16 v20, 0x1

    .line 503
    .local v20, isLandScapeDisplay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/mms/model/LayoutModel;->mIsLandScape:Z

    xor-int v10, v10, v20

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v10

    if-nez v10, :cond_3

    .line 505
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/model/LayoutModel;->mIsLandScape:Z

    .line 507
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/model/LayoutModel;->adaptTo(IIZZ)Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-direct {v10}, Lcom/android/mms/model/LayoutModel;->rotate()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    .line 586
    :goto_1
    return-object v10

    .line 497
    .end local v20           #isLandScapeDisplay:Z
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 510
    .restart local v20       #isLandScapeDisplay:Z
    :cond_3
    new-instance v5, Lcom/android/mms/model/RegionModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 511
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v18, adptRegions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    move/from16 v0, p1

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/model/LayoutModel;->mRight:I

    int-to-float v11, v11

    div-float v23, v10, v11

    .line 513
    .local v23, ratioX:F
    move/from16 v0, p2

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/model/LayoutModel;->mBottom:I

    int-to-float v11, v11

    div-float v24, v10, v11

    .line 515
    .local v24, ratioY:F
    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    .line 516
    new-instance v6, Lcom/android/mms/model/RegionModel;

    const-string v7, "Image"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v10}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v11}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v13

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v6 .. v13}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 519
    .local v6, imageRegion:Lcom/android/mms/model/RegionModel;
    new-instance v7, Lcom/android/mms/model/RegionModel;

    const-string v8, "Text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 520
    .local v7, textRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 524
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/RegionModel;

    .line 526
    .local v21, origRegion:Lcom/android/mms/model/RegionModel;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "first"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 530
    :cond_4
    new-instance v8, Lcom/android/mms/model/RegionModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v15

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 533
    .local v8, mNonStdImageRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 534
    .end local v8           #mNonStdImageRegion:Lcom/android/mms/model/RegionModel;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "second"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 538
    :cond_6
    new-instance v9, Lcom/android/mms/model/RegionModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 540
    .local v9, mNonStdTextRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 542
    .end local v9           #mNonStdTextRegion:Lcom/android/mms/model/RegionModel;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/model/LayoutModel;->adaptRegion(Lcom/android/mms/model/RegionModel;FF)Lcom/android/mms/model/RegionModel;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 547
    .end local v6           #imageRegion:Lcom/android/mms/model/RegionModel;
    .end local v7           #textRegion:Lcom/android/mms/model/RegionModel;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #origRegion:Lcom/android/mms/model/RegionModel;
    :cond_8
    if-nez p3, :cond_d

    if-eqz p4, :cond_d

    .line 548
    new-instance v7, Lcom/android/mms/model/RegionModel;

    const-string v11, "Text"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v10}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v10}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v17

    move-object v10, v7

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-direct/range {v10 .. v17}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 551
    .restart local v7       #textRegion:Lcom/android/mms/model/RegionModel;
    new-instance v6, Lcom/android/mms/model/RegionModel;

    const-string v11, "Image"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 552
    .restart local v6       #imageRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_e

    .line 556
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/RegionModel;

    .line 558
    .restart local v21       #origRegion:Lcom/android/mms/model/RegionModel;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "second"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 562
    :cond_9
    new-instance v9, Lcom/android/mms/model/RegionModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v16

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v9 .. v16}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 565
    .restart local v9       #mNonStdTextRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 566
    .end local v9           #mNonStdTextRegion:Lcom/android/mms/model/RegionModel;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "first"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 570
    :cond_b
    new-instance v8, Lcom/android/mms/model/RegionModel;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 572
    .restart local v8       #mNonStdImageRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 574
    .end local v8           #mNonStdImageRegion:Lcom/android/mms/model/RegionModel;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/model/LayoutModel;->adaptRegion(Lcom/android/mms/model/RegionModel;FF)Lcom/android/mms/model/RegionModel;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 580
    .end local v6           #imageRegion:Lcom/android/mms/model/RegionModel;
    .end local v7           #textRegion:Lcom/android/mms/model/RegionModel;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #origRegion:Lcom/android/mms/model/RegionModel;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/List;

    move-result-object v22

    .line 581
    .local v22, origRegions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/RegionModel;

    .line 582
    .restart local v21       #origRegion:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/model/LayoutModel;->adaptRegion(Lcom/android/mms/model/RegionModel;FF)Lcom/android/mms/model/RegionModel;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 586
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #origRegion:Lcom/android/mms/model/RegionModel;
    .end local v22           #origRegions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    :cond_e
    new-instance v10, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v18

    invoke-direct {v10, v5, v0}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public changeTo(I)V
    .locals 4
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_1

    .line 396
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 399
    :cond_1
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-eq v0, p1, :cond_2

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 420
    const-string v0, "LayoutModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 403
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 404
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 405
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 406
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 407
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 414
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 415
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 416
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 425
    :cond_2
    const-string v0, "LayoutModel"

    const-string v1, "Skip changing layout."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public detectOrientation()V
    .locals 9

    .prologue
    .line 278
    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v7, :cond_1

    .line 279
    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v8}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v8

    add-int v6, v7, v8

    .line 280
    .local v6, txtRgnRight:I
    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v8}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v8

    add-int v2, v7, v8

    .line 282
    .local v2, imgRgnRight:I
    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    if-ge v7, v2, :cond_0

    iget-object v7, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v7}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    if-lt v7, v6, :cond_2

    :cond_0
    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/mms/model/LayoutModel;->mIsLandScape:Z

    .line 286
    .end local v2           #imgRgnRight:I
    .end local v6           #txtRgnRight:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/List;

    move-result-object v4

    .line 287
    .local v4, rgns:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    const/4 v5, 0x0

    .local v5, right:I
    const/4 v0, 0x0

    .line 288
    .local v0, bottom:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/RegionModel;

    .line 289
    .local v3, rgn:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 290
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 282
    .end local v0           #bottom:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #rgn:Lcom/android/mms/model/RegionModel;
    .end local v4           #rgns:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    .end local v5           #right:I
    .restart local v2       #imgRgnRight:I
    .restart local v6       #txtRgnRight:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 293
    .end local v2           #imgRgnRight:I
    .end local v6           #txtRgnRight:I
    .restart local v0       #bottom:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #rgns:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    .restart local v5       #right:I
    :cond_3
    iput v5, p0, Lcom/android/mms/model/LayoutModel;->mRight:I

    .line 294
    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mBottom:I

    .line 295
    return-void
.end method

.method public findAvailableRegion(Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/RegionModel;
    .locals 5
    .parameter "r"

    .prologue
    .line 363
    const-string v2, "LayoutModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAvailableRegion, Region = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 375
    :goto_0
    return-object v1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 370
    .local v1, rm:Lcom/android/mms/model/RegionModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    .end local v1           #rm:Lcom/android/mms/model/RegionModel;
    :cond_3
    move-object v1, p1

    .line 375
    goto :goto_0
.end method

.method public findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;
    .locals 5
    .parameter "rId"

    .prologue
    .line 339
    const-string v2, "Image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 353
    :goto_0
    return-object v1

    .line 341
    :cond_0
    const-string v2, "Text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 345
    .local v1, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 351
    .end local v1           #r:Lcom/android/mms/model/RegionModel;
    :cond_3
    const-string v2, "LayoutModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRegions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->hasNonStdRegions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    :cond_2
    return-object v0
.end method

.method public getRootLayout()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public hasNonStdRegions()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 448
    :cond_2
    return-void
.end method

.method public removeNonStdRegions()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 652
    :cond_0
    return-void
.end method

.method public setImageRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .parameter "imageRegion"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 311
    return-void
.end method

.method public setRootLayout(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .parameter "rootLayout"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 303
    return-void
.end method

.method public setTextRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 0
    .parameter "textRegion"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x3e

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{root<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p0}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/List;

    move-result-object v2

    .line 636
    .local v2, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 637
    .local v1, region:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    .end local v1           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 479
    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 464
    :cond_2
    return-void
.end method
