.class Lcom/htc/album/TabPluginDevice/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$200(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 938
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$202(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-nez v2, :cond_1

    .line 949
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "no cropped image..."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_0

    .line 959
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v31

    .line 961
    .local v31, r:Landroid/graphics/Rect;
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v33

    .line 962
    .local v33, width:I
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 969
    .local v25, height:I
    const/16 v18, 0x0

    .line 970
    .local v18, degree:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v18

    .line 976
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$600(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 978
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Crop from source"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v31

    move/from16 v1, v18

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropFromSource(Landroid/graphics/Rect;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$700(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;I)V

    .line 982
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$600(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 984
    :cond_4
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropped from on screen, corp width "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", height "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v31

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropFromRawData(Landroid/graphics/Rect;)V
    invoke-static {v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$800(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V

    .line 987
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v31

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropCircle(Landroid/graphics/Rect;)V
    invoke-static {v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1000(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V

    .line 997
    .end local v18           #degree:I
    .end local v25           #height:I
    .end local v31           #r:Landroid/graphics/Rect;
    .end local v33           #width:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 999
    :cond_7
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "can not create cropped image, Crop image will be closed"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1008
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$600(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1200(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1013
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale bitmap to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1200(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->scaledCropBitmap()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1026
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1028
    :cond_a
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "can not transform rectangle to cropped image, Crop image will be closed"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1018
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropCenterCropBitmap()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1500(Lcom/htc/album/TabPluginDevice/CropImage;)V

    goto :goto_1

    .line 1033
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v27

    .line 1034
    .local v27, myExtras:Landroid/os/Bundle;
    if-eqz v27, :cond_e

    const-string v2, "data"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1600(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1036
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->sendBackCropResult()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1700(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1042
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1044
    const/16 v29, 0x0

    .line 1047
    .local v29, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    .line 1048
    .local v32, scheme:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v4, 0x7f05

    if-ne v2, v4, :cond_12

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-static {v2, v4}, Lcom/htc/lockscreen/HtcLSUtility;->setLockScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    .line 1064
    :goto_2
    if-eqz v29, :cond_10

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v6, 0x55

    move-object/from16 v0, v29

    invoke-virtual {v2, v4, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v4, Lcom/htc/album/TabPluginDevice/CropImage$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/TabPluginDevice/CropImage$1$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$1;)V

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1112
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1122
    :cond_10
    if-eqz v29, :cond_11

    .line 1126
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1134
    .end local v32           #scheme:Ljava/lang/String;
    :cond_11
    :goto_3
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 1135
    .local v23, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    .line 1136
    .restart local v32       #scheme:Ljava/lang/String;
    const-string v2, "filePath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1273
    .end local v23           #extras:Landroid/os/Bundle;
    .end local v29           #outputStream:Ljava/io/OutputStream;
    .end local v32           #scheme:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1057
    .restart local v29       #outputStream:Ljava/io/OutputStream;
    .restart local v32       #scheme:Ljava/lang/String;
    :cond_12
    :try_start_2
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    const-string v6, "://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v29           #outputStream:Ljava/io/OutputStream;
    .local v30, outputStream:Ljava/io/OutputStream;
    move-object/from16 v29, v30

    .end local v30           #outputStream:Ljava/io/OutputStream;
    .restart local v29       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 1062
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v29

    goto/16 :goto_2

    .line 1128
    :catch_0
    move-exception v21

    .line 1130
    .local v21, ex:Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1115
    .end local v21           #ex:Ljava/io/IOException;
    .end local v32           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v21

    .line 1117
    .restart local v21       #ex:Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1118
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got IOException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1122
    if-eqz v29, :cond_11

    .line 1126
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 1128
    :catch_2
    move-exception v21

    .line 1130
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1122
    .end local v21           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v29, :cond_14

    .line 1126
    :try_start_5
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1131
    :cond_14
    :goto_5
    throw v2

    .line 1128
    :catch_3
    move-exception v21

    .line 1130
    .restart local v21       #ex:Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1142
    .end local v21           #ex:Ljava/io/IOException;
    .end local v29           #outputStream:Ljava/io/OutputStream;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v4, 0x7f04

    if-ne v2, v4, :cond_17

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2200(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1146
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_16

    .line 1149
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1161
    :goto_6
    :try_start_8
    monitor-exit v4

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 1151
    :catch_4
    move-exception v20

    .line 1152
    .local v20, e:Ljava/io/IOException;
    :try_start_9
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Failed to set wallpaper."

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V

    goto :goto_6

    .line 1158
    .end local v20           #e:Ljava/io/IOException;
    :cond_16
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Failed to set wallpaper NG."

    invoke-static {v2, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 1165
    :cond_17
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 1166
    .restart local v23       #extras:Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1169
    .local v3, tmpUri:Landroid/net/Uri;
    const/16 v26, 0x0

    .line 1170
    .local v26, imagePath:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "media"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1172
    const/4 v15, 0x0

    .line 1175
    .local v15, c:Landroid/database/Cursor;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1180
    if-eqz v15, :cond_18

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-result-object v26

    .line 1190
    :cond_18
    if-eqz v15, :cond_19

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1198
    .end local v15           #c:Landroid/database/Cursor;
    :cond_19
    :goto_7
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " map to file path "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    if-nez v26, :cond_1c

    .line 1200
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find abs file path for uri "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1182
    .restart local v15       #c:Landroid/database/Cursor;
    :catch_5
    move-exception v21

    .line 1184
    .local v21, ex:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1190
    if-eqz v15, :cond_19

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .end local v21           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v15, :cond_1a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v2

    .line 1195
    .end local v15           #c:Landroid/database/Cursor;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_7

    .line 1204
    :cond_1c
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v28, oldPath:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v19, directory:Ljava/io/File;
    const/16 v34, 0x0

    .line 1209
    .local v34, x:I
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1210
    .local v24, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, "."

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1214
    :cond_1d
    add-int/lit8 v34, v34, 0x1

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1218
    .local v17, candidate:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v22

    .line 1219
    .local v22, exists:Z
    if-nez v22, :cond_1d

    .line 1225
    :try_start_c
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "-"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ".jpg"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/htc/opensense2/album/util/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1240
    .local v5, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 1247
    .local v11, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v9, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v4 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;

    move-result-object v16

    .line 1258
    .local v16, cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;->get()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_4

    .line 1265
    .end local v5           #newUri:Landroid/net/Uri;
    .end local v11           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #cancelable:Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    :catch_6
    move-exception v21

    .line 1267
    .restart local v21       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1268
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method
