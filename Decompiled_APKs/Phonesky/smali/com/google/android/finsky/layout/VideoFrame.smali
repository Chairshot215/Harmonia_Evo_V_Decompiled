.class public Lcom/google/android/finsky/layout/VideoFrame;
.super Landroid/widget/FrameLayout;
.source "VideoFrame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public configureFilmOverlay(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 16
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 35
    const v1, 0x7f080225

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 36
    .local v15, previewImage:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    const v1, 0x7f080228

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 39
    .local v14, previewFlatOverlay:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v1, 0x7f080226

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewStub;

    .line 43
    .local v12, overlayStub:Landroid/view/ViewStub;
    invoke-virtual {v12}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    .line 45
    .local v9, overlay:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/VideoFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020109

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    .local v7, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 48
    const v1, 0x7f08022a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 49
    .local v10, overlayLeft:Landroid/view/View;
    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const v1, 0x7f08022b

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 51
    .local v11, overlayRight:Landroid/view/View;
    invoke-virtual {v11, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const v1, 0x7f080229

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 56
    .local v13, overlayThumbnail:Landroid/widget/ImageView;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    .local v5, width:I
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .local v6, height:I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 62
    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v1, 0x1

    invoke-direct {v4, v13, v1}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v8

    .line 65
    .local v8, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    .end local v8           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_0
    return-void
.end method

.method public configurePreviewWithFlatOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    const/4 v4, 0x0

    .line 72
    const v3, 0x7f080225

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 73
    .local v2, previewImage:Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    const v3, 0x7f080227

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, previewFilmOverlay:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 77
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    const v3, 0x7f080228

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/VideoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, previewFlatOverlay:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method
