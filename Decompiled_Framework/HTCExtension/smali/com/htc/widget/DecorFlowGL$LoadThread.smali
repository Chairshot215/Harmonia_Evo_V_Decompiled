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

    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

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

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    const/16 v14, 0xa

    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

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

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    const/16 v14, 0xb

    if-ge v8, v14, :cond_1

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

    const/4 v7, 0x0

    :cond_1
    if-eqz v7, :cond_0

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

    new-instance v10, Lcom/htc/widget/DecorFlowGL$Texture;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-direct {v10, v14}, Lcom/htc/widget/DecorFlowGL$Texture;-><init>(Lcom/htc/widget/DecorFlowGL;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, -0x1

    :try_start_1
    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v15

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    :goto_2
    const/16 v14, 0xb

    if-ge v8, v14, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    aget-object v14, v14, v8

    iget-boolean v14, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    aget-object v14, v14, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    iput v8, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

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

    iget v14, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    :cond_3
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

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

    instance-of v14, v13, Landroid/widget/ImageView;

    if-eqz v14, :cond_d

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v15}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v14

    if-le v4, v14, :cond_5

    const/high16 v14, 0x3f80

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->xresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$500(Lcom/htc/widget/DecorFlowGL;)I

    move-result v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v14

    if-le v3, v14, :cond_6

    const/high16 v14, 0x3f80

    iput v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->yresolution:I
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$600(Lcom/htc/widget/DecorFlowGL;)I

    move-result v3

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

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v14

    if-nez v14, :cond_7

    const/4 v11, 0x0

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

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-virtual {v14}, Lcom/htc/widget/DecorFlowGL;->getRenderMode()I

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v10

    :cond_8
    :goto_3
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

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

    :catch_0
    move-exception v5

    move-object v9, v10

    :goto_4
    const-string v14, "DecorFlowGL"

    const-string v15, "outOfMemoryError"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_d

    :try_start_6
    iget v14, v10, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d

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

    goto :goto_3

    :cond_c
    const-string v14, "DecorFlowGL"

    const-string v15, "findBitmap"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_d
    move-object v9, v10

    goto :goto_3

    :catch_1
    move-exception v6

    :goto_5
    if-eqz v11, :cond_e

    iget v14, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v11, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    :cond_e
    if-eqz v9, :cond_f

    iget v14, v9, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/DecorFlowGL$LoadThread;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    invoke-static {v14}, Lcom/htc/widget/DecorFlowGL;->access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    move-result-object v14

    iget v15, v9, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    :cond_f
    const-string v14, "DecorFlowGL"

    const-string v15, "threadRun"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v6

    move-object v9, v10

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_4
.end method
