.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;
.super Landroid/os/Handler;
.source "PhotoEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 749
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    .line 750
    .local v15, what:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->isError()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 751
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    const-string v18, "handler: PhotoEffects has error finish PhotoEnhancer"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    .line 915
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 755
    :cond_1
    packed-switch v15, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 758
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 759
    .local v16, which:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 761
    .local v8, id:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;

    move-result-object v17

    aget-object v17, v17, v8

    if-eqz v17, :cond_2

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;

    move-result-object v17

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    aput-object v17, v18, v8

    .line 772
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 774
    .local v14, v:Landroid/view/View;
    if-eqz v14, :cond_3

    .line 775
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;

    .line 776
    .local v6, holder:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    if-eqz v6, :cond_3

    .line 777
    iget v0, v6, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_3

    .line 781
    iget-object v0, v6, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static/range {v18 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;

    move-result-object v18

    aget-object v18, v18, v8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 772
    .end local v6           #holder:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter$ViewHolder;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 787
    .end local v7           #i:I
    .end local v14           #v:Landroid/view/View;
    :cond_4
    if-nez v16, :cond_0

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v8, :cond_5

    .line 790
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    const-string v18, "handler_success: Preview : Previous preset, skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 794
    :cond_5
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    const-string v18, "handler_success: Preview"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3702(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v17

    new-instance v18, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;
    invoke-static/range {v20 .. v20}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 811
    .end local v8           #id:I
    .end local v16           #which:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1510(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 819
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 822
    .local v12, split:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 825
    .local v11, resultFolder:Ljava/lang/String;
    :try_start_0
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    aget-object v11, v12, v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 826
    const/4 v5, 0x0

    .line 829
    .local v5, fullFolderPath:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "/mnt/sdcard"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0044

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 834
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b00d4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    .end local v5           #fullFolderPath:Ljava/lang/String;
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #resultFolder:Ljava/lang/String;
    .end local v12           #split:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_9

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 879
    :goto_3
    new-instance v10, Landroid/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 880
    .local v10, ms:Landroid/media/MediaScanner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "external"

    const-string v19, "image/jpeg"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 881
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->handler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 837
    .end local v10           #ms:Landroid/media/MediaScanner;
    .end local v13           #uri:Landroid/net/Uri;
    .restart local v5       #fullFolderPath:Ljava/lang/String;
    .restart local v11       #resultFolder:Ljava/lang/String;
    .restart local v12       #split:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 839
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][PhotoEnhancer][Handler][handleMessage]can\'t get fullFolderPath, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 842
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #fullFolderPath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 844
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][PhotoEnhancer][Handler][handleMessage]dstFilePath= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", resultFolder is null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 849
    .end local v3           #e:Ljava/lang/Exception;
    .end local v11           #resultFolder:Ljava/lang/String;
    .end local v12           #split:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "can not show toast because dstFilePath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 856
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 887
    :pswitch_5
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Return new image uri and finish PhotoEnhancer"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v4, extras:Landroid/os/Bundle;
    const-string v17, "filePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->setResult(ILandroid/content/Intent;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    goto/16 :goto_0

    .line 903
    .end local v4           #extras:Landroid/os/Bundle;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b00c9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v18

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static/range {v17 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4102(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 908
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "Export Image In All Preset..."

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v18

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static/range {v17 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$4102(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 912
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    move-object/from16 v17, v0

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V
    invoke-static/range {v17 .. v17}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    goto/16 :goto_0

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
