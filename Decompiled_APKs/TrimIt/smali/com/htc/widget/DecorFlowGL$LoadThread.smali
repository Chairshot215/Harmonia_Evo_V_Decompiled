.class public Lcom/htc/widget/DecorFlowGL$LoadThread;
.super Ljava/lang/Thread;
.source "DecorFlowGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlowGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DecorFlowGL;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DecorFlowGL;I)V
    .locals 2
    .parameter
    .parameter "threadindex"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorFlowGL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 757
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 774
    const/16 v14, 0xa

    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    .line 778
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 779
    .local v9, polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    const/4 v11, 0x0

    .line 780
    .local v11, polltexo:Lcom/htc/widget/DecorFlowGL$Texture;
    const/4 v12, 0x0

    .line 784
    .local v12, position:Ljava/lang/Integer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$000(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    .line 786
    const/4 v7, 0x1

    .line 787
    .local v7, loadflag:Z
    const/4 v8, 0x0

    .local v8, loop:I
    :goto_1
    const/16 v14, 0xb

    if-ge v8, v14, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$100(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowTexture;

    move-result-object v14

    iget-object v14, v14, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v14, v14, v8

    if-nez v14, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->centeridx:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$200(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    add-int/lit8 v15, v15, -0x5

    add-int/2addr v15, v8

    if-ne v14, v15, :cond_9

    .line 790
    const/4 v7, 0x0

    .line 794
    :cond_1
    if-eqz v7, :cond_0

    .line 797
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->centeridx:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$200(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40f0

    sub-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    .line 798
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->centeridx:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$200(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4184

    add-float v15, v15, v16

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8

    .line 800
    new-instance v10, Lcom/htc/widget/DecorFlowGL$Texture;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-direct {v10, v14}, Lcom/htc/widget/DecorFlowGL$Texture;-><init>(Lcom/htc/widget/DecorFlowGL;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 801
    .end local v9           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .local v10, polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    const/4 v14, -0x1

    :try_start_1
    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    .line 802
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v15

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 806
    const/4 v8, 0x0

    :goto_2
    const/16 v14, 0xb

    if-ge v8, v14, :cond_2

    .line 807
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    aget-object v14, v14, v8

    iget-boolean v14, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    if-nez v14, :cond_a

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    aget-object v14, v14, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 810
    iput v8, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    .line 813
    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 815
    :try_start_3
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 816
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    move-object v11, v0

    if-eqz v11, :cond_3

    .line 817
    iget v14, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    .line 819
    :cond_3
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    .line 821
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static/range {v16 .. v16}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 824
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->baseadapter:Landroid/widget/BaseAdapter;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$700(Lcom/htc/widget/DecorFlowGL;)Landroid/widget/BaseAdapter;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .local v13, view:Landroid/view/View;
    instance-of v14, v13, Landroid/widget/ImageView;

    if-eqz v14, :cond_d

    .line 825
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_b

    .line 827
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 828
    .local v4, drawablewidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 830
    .local v3, drawableheight:I
    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    .line 831
    int-to-float v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v14

    if-le v4, v14, :cond_5

    .line 835
    const/high16 v14, 0x3f80

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    .line 836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v4

    .line 839
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v14

    if-le v3, v14, :cond_6

    .line 841
    const/high16 v14, 0x3f80

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v3

    .line 845
    :cond_6
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 846
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v14

    if-nez v14, :cond_7

    .line 851
    const/4 v11, 0x0

    .line 852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    move-object v11, v0

    if-eqz v11, :cond_7

    .line 853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 856
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 858
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-virtual {v14}, Lcom/htc/widget/DecorFlowGL;->getRenderMode()I

    move-result v14

    if-nez v14, :cond_d

    .line 859
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v10

    .line 886
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawableheight:I
    .end local v4           #drawablewidth:I
    .end local v7           #loadflag:Z
    .end local v8           #loop:I
    .end local v10           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v9       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :cond_8
    :goto_3
    const/4 v12, 0x0

    .line 887
    const/4 v9, 0x0

    .line 888
    const/4 v11, 0x0

    .line 890
    const/4 v13, 0x0

    .line 891
    .restart local v13       #view:Landroid/view/View;
    const/4 v1, 0x0

    .line 892
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 787
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v13           #view:Landroid/view/View;
    .restart local v7       #loadflag:Z
    .restart local v8       #loop:I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 806
    .end local v9           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v10       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 813
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 871
    :catch_0
    move-exception v5

    move-object v9, v10

    .line 873
    .end local v7           #loadflag:Z
    .end local v8           #loop:I
    .end local v10           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .local v5, exceptio:Ljava/lang/OutOfMemoryError;
    .restart local v9       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :goto_4
    const-string v14, "DecorFlowGL"

    const-string v15, "outOfMemoryError"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 863
    .end local v5           #exceptio:Ljava/lang/OutOfMemoryError;
    .end local v9           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #loadflag:Z
    .restart local v8       #loop:I
    .restart local v10       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :cond_b
    if-eqz v10, :cond_d

    :try_start_6
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d

    .line 864
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    move-object v9, v10

    .end local v10           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v9       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    goto :goto_3

    .line 868
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v10       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :cond_c
    const-string v14, "DecorFlowGL"

    const-string v15, "findBitmap"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_d
    move-object v9, v10

    .end local v10           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v9       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    goto :goto_3

    .line 875
    .end local v7           #loadflag:Z
    .end local v8           #loop:I
    :catch_1
    move-exception v6

    .line 877
    .local v6, exception:Ljava/lang/Exception;
    :goto_5
    if-eqz v11, :cond_e

    iget v14, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    .line 878
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 880
    :cond_e
    if-eqz v9, :cond_f

    iget v14, v9, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_f

    .line 881
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v9, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 883
    :cond_f
    const-string v14, "DecorFlowGL"

    const-string v15, "threadRun"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 875
    .end local v6           #exception:Ljava/lang/Exception;
    .end local v9           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v7       #loadflag:Z
    .restart local v8       #loop:I
    .restart local v10       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    :catch_2
    move-exception v6

    move-object v9, v10

    .end local v10           #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v9       #polltexn:Lcom/htc/widget/DecorFlowGL$Texture;
    goto :goto_5

    .line 871
    .end local v7           #loadflag:Z
    .end local v8           #loop:I
    :catch_3
    move-exception v5

    goto :goto_4
.end method
