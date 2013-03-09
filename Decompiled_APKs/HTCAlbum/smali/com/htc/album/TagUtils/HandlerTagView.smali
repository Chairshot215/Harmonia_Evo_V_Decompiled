.class public Lcom/htc/album/TagUtils/HandlerTagView;
.super Ljava/lang/Object;
.source "HandlerTagView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandlerTagView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mPhotoH:I

.field private mPhotoW:I

.field private mPhotoX:I

.field private mPhotoY:I

.field private mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 28
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 29
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 30
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 31
    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return-void
.end method

.method public static doImageDecode(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "photoInfo"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v1

    .line 97
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 40
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const-string v12, "window"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 41
    .local v4, display:Landroid/view/Display;
    if-nez v4, :cond_2

    move-object v2, v1

    .line 42
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 44
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 45
    .local v8, nScreenW:I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 48
    .local v7, nScreenH:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v11

    .line 49
    .local v11, scalado:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v6

    .line 50
    .local v6, handle:I
    if-nez v6, :cond_3

    move-object v2, v1

    .line 51
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 53
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v11, v6, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 54
    const/4 v12, 0x1

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 55
    const/4 v12, 0x1

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_4
    const/4 v9, 0x0

    .line 62
    .local v9, nValue:I
    if-eqz v0, :cond_8

    const-string v12, "media"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v9

    .line 90
    :cond_5
    :goto_1
    if-nez v9, :cond_7

    .line 92
    :cond_6
    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v12

    if-eqz v12, :cond_6

    .line 95
    :cond_7
    invoke-virtual {v11, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 97
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 68
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 69
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 72
    .local v10, pfdInput:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    const-string v13, "r"

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 73
    if-eqz v10, :cond_5

    .line 76
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 80
    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v5

    .line 86
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "HandlerTagView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][HandlerTagView][getViewBitmap]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :try_start_3
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public getPhotoViewHeight()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    return v0
.end method

.method public getPhotoViewWidth()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    return v0
.end method

.method public getPhotoViewX()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    return v0
.end method

.method public getPhotoViewY()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return v0
.end method

.method public getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iget v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    iget v3, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    .line 282
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    return-object v0
.end method

.method public prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z
    .locals 16
    .parameter "context"
    .parameter "photoInfo"
    .parameter "touchListener"

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, bResult:Z
    const-string v13, "HandlerTagView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][LocalTagView][prepareTaggableView] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 274
    .end local v2           #bResult:Z
    :cond_0
    :goto_0
    return v2

    .line 189
    .restart local v2       #bResult:Z
    :cond_1
    const-string v13, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 190
    .local v4, display:Landroid/view/Display;
    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 194
    .local v8, nScreenW:I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 197
    .local v7, nScreenH:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v12

    .line 198
    .local v12, scalado:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v6

    .line 199
    .local v6, handle:I
    if-nez v6, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v12, v6, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 202
    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 203
    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, authority:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_3
    const/4 v9, 0x0

    .line 210
    .local v9, nValue:I
    if-eqz v1, :cond_7

    const-string v13, "media"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v9

    .line 238
    :cond_4
    :goto_1
    if-nez v9, :cond_6

    .line 240
    :cond_5
    const-wide/16 v13, 0x7d0

    invoke-virtual {v12, v6, v13, v14}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v13

    if-eqz v13, :cond_5

    .line 243
    :cond_6
    invoke-virtual {v12, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_8

    .line 247
    const-string v13, "HandlerTagView"

    const-string v14, "[HTCAlbum][LocalTagView][prepareTaggableView]: bitmap decode NG !!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 217
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 220
    .local v11, pfdInput:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v13

    const-string v14, "r"

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 221
    if-eqz v11, :cond_4

    .line 224
    :try_start_1
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v6, v13, v14}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 228
    :try_start_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v5

    .line 234
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "HandlerTagView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decode tag view "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :try_start_3
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 252
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v11           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v10, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xf

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    const/16 v13, 0xe

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v13, v8, v13

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 269
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v13, v7, v13

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 271
    const-string v13, "HandlerTagView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo dimen : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v13, "HandlerTagView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo Padding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    :cond_0
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    :cond_1
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    return-void
.end method

.method public setBitmapToView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/view/View$OnTouchListener;)V
    .locals 6
    .parameter "context"
    .parameter "bitmap"
    .parameter "touchListener"

    .prologue
    .line 114
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    :cond_0
    iput-object p2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 122
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1

    .line 142
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 126
    .local v2, nScreenW:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 129
    .local v1, nScreenH:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v3, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    .line 136
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    .line 138
    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 139
    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 141
    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPhotoViewX(I)V
    .locals 0
    .parameter "nX"

    .prologue
    .line 165
    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    .line 166
    return-void
.end method

.method public setPhotoViewY(I)V
    .locals 0
    .parameter "nY"

    .prologue
    .line 173
    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    .line 174
    return-void
.end method

.method public setTaggableView(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "imageView"

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 107
    :cond_0
    iput-object v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 108
    iput-object p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void
.end method
