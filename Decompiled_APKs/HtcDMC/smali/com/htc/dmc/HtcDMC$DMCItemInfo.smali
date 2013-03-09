.class Lcom/htc/dmc/HtcDMC$DMCItemInfo;
.super Ljava/lang/Object;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCItemInfo"
.end annotation


# instance fields
.field public lCount:J

.field public lCurrentIndex:J

.field public szAlbum:Ljava/lang/String;

.field public szArtist:Ljava/lang/String;

.field public szDate:Ljava/lang/String;

.field public szThumbPath:Ljava/lang/String;

.field public szTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;-><init>(Lcom/htc/dmc/HtcDMC;)V

    return-void
.end method


# virtual methods
.method public computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 292
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 293
    .local v4, w:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 295
    .local v3, h:I
    div-int v2, v4, p2

    .line 296
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 297
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 312
    :goto_0
    return v5

    .line 302
    :cond_0
    if-le v0, v5, :cond_1

    .line 303
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 304
    add-int/lit8 v0, v0, -0x1

    .line 307
    :cond_1
    if-le v0, v5, :cond_2

    .line 308
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 309
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 312
    goto :goto_0
.end method

.method protected getDLNAThumb(Ljava/lang/String;)V
    .locals 12
    .parameter "filepath"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    .line 317
    :cond_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 318
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v9, 0x1

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$902(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 322
    :goto_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v9}, Lcom/htc/dmc/HtcDMC;->access$900(Lcom/htc/dmc/HtcDMC;)Z

    move-result v9

    #calls: Lcom/htc/dmc/HtcDMC;->RelayoutThumb(Z)V
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$1000(Lcom/htc/dmc/HtcDMC;Z)V

    .line 324
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_1

    .line 327
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 427
    :cond_1
    :goto_1
    return-void

    .line 320
    :cond_2
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v9, 0x0

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$902(Lcom/htc/dmc/HtcDMC;Z)Z

    goto :goto_0

    .line 330
    :pswitch_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, 0x7f020005

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 333
    :pswitch_1
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, 0x7f020003

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 336
    :pswitch_2
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, 0x7f020004

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 343
    :cond_3
    const/4 v2, 0x0

    .line 346
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v8}, Lcom/htc/dmc/HtcDMC;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://dlna/images"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_4

    .line 350
    const-string v8, "[HtcDMC]"

    const-string v9, "[GetThumb]: No provider..."

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 358
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb] Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 362
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v6, 0x0

    .line 364
    .local v6, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 366
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 367
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 368
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 373
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image dimension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v4, 0x0

    .line 378
    .local v4, nDecodeSize:I
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_7

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_7

    .line 380
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v9, 0x0

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$902(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 381
    const/16 v4, 0x12c

    .line 392
    :goto_2
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v9}, Lcom/htc/dmc/HtcDMC;->access$900(Lcom/htc/dmc/HtcDMC;)Z

    move-result v9

    #calls: Lcom/htc/dmc/HtcDMC;->RelayoutThumb(Z)V
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$1000(Lcom/htc/dmc/HtcDMC;Z)V

    .line 394
    invoke-virtual {p0, v5, v4}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 395
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 396
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 397
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 404
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 426
    const/4 v2, 0x0

    .line 427
    goto/16 :goto_1

    .line 385
    .restart local v4       #nDecodeSize:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_7
    :try_start_1
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v9, 0x1

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$902(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 386
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 387
    const/16 v4, 0x258

    goto :goto_2

    .line 389
    :cond_8
    const/16 v4, 0x400

    goto/16 :goto_2

    .line 418
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 419
    .local v3, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: thumb failed (using default):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected loadInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 213
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v2, "DMCItemInfo"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, infPref:Landroid/content/SharedPreferences;
    const-string v1, "szTitle"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 215
    const-string v1, "szArtist"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 216
    const-string v1, "szAlbum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 217
    const-string v1, "szDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 218
    const-string v1, "szThumbPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 219
    const-string v1, "lCount"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    .line 220
    const-string v1, "lCurrentIndex"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    .line 221
    return-void
.end method

.method protected refreshAlbumArt()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 263
    const-string v2, "[HtcDMC]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshAlbumArt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->getDLNAThumb(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 275
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 276
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArt:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$700(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/dmc/BitmapUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f020023

    invoke-static {v1, v2, v3}, Lcom/htc/dmc/BitmapUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, reflection:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 283
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mImgAlbumArtReflect:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected refreshInfo()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v1}, Lcom/htc/dmc/HtcDMC;->getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 229
    .local v0, dts:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$200(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    .end local v0           #dts:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtTrackName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szAlbum:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$200(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szArtist:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$200(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szDate:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 256
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtAlbumName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$200(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected refreshListIndex()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 430
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshListIndex cur mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v10}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 432
    :cond_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v9, ""

    #setter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$1102(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    :goto_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 440
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V
    invoke-static {v8, v7, v7}, Lcom/htc/dmc/HtcDMC;->access$1200(Lcom/htc/dmc/HtcDMC;ZZ)V

    .line 444
    :try_start_0
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v8

    if-nez v8, :cond_6

    .line 445
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 447
    .local v3, nCurIndexID:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 492
    .end local v3           #nCurIndexID:I
    :cond_1
    :goto_1
    return-void

    .line 434
    :cond_2
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/dmc/HtcDMC;->access$1102(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 449
    .restart local v3       #nCurIndexID:I
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, szCurIndexID:Ljava/lang/String;
    const-string v8, "[HtcDMC]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ML curContent(indexid):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1600(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v6, :cond_5

    move v1, v0

    .line 454
    .local v1, bCteChanged:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 455
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/htc/dmc/HtcDMC;->access$1602(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurIndex:I
    invoke-static {v7, v8}, Lcom/htc/dmc/HtcDMC;->access$1702(Lcom/htc/dmc/HtcDMC;I)I

    .line 458
    :cond_4
    if-eqz v1, :cond_1

    .line 459
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->SavePref()Z
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$1800(Lcom/htc/dmc/HtcDMC;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 484
    .end local v1           #bCteChanged:Z
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/NullPointerException;
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$2000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 486
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v3       #nCurIndexID:I
    .restart local v6       #szCurIndexID:Ljava/lang/String;
    :cond_5
    move v1, v7

    .line 453
    goto :goto_2

    .line 460
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 461
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, szCurContentID:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, szCurContainerID:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 471
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1600(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v5, :cond_a

    move v1, v0

    .line 472
    .restart local v1       #bCteChanged:Z
    :goto_3
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/dmc/HtcDMC;->access$1900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v4, :cond_b

    .line 474
    .local v0, bCtaChanged:Z
    :goto_4
    const-string v7, "[HtcDMC]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v7, "[HtcDMC]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-eqz v1, :cond_7

    .line 478
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurContentID:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/htc/dmc/HtcDMC;->access$1602(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    :cond_7
    if-eqz v0, :cond_8

    .line 480
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurContainerID:Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/htc/dmc/HtcDMC;->access$1902(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_1

    .line 482
    :cond_9
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->SavePref()Z
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$1800(Lcom/htc/dmc/HtcDMC;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 487
    .end local v0           #bCtaChanged:Z
    .end local v1           #bCteChanged:Z
    .end local v4           #szCurContainerID:Ljava/lang/String;
    .end local v5           #szCurContentID:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 489
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v4       #szCurContainerID:Ljava/lang/String;
    .restart local v5       #szCurContentID:Ljava/lang/String;
    :cond_a
    move v1, v7

    .line 471
    goto :goto_3

    .restart local v1       #bCteChanged:Z
    :cond_b
    move v0, v7

    .line 472
    goto :goto_4
.end method

.method protected saveInfo()V
    .locals 5

    .prologue
    .line 199
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v2, "DMCItemInfo"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, infPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szTitle"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szArtist"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szArtist:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szAlbum"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szAlbum:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szDate"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szDate:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szThumbPath"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lCount"

    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lCurrentIndex"

    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    return-void
.end method
