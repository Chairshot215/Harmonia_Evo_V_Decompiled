.class Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->finished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1385
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1387
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][ThreeDFlattenManager][FlattenThread][finished]resultDataPath is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1392
    .local v4, split:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1395
    .local v3, resultFolder:Ljava/lang/String;
    :try_start_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-object v3, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1396
    const/4 v1, 0x0

    .line 1399
    .local v1, fullFolderPath:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v7, v7, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1400
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1402
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v3

    .line 1404
    :cond_1
    const/4 v2, 0x0

    .line 1405
    .local v2, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 1407
    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2300(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1413
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1415
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1417
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][FlattenThread][finished]can\'t get fullFolderPath, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v7, v7, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1420
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fullFolderPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1422
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][FlattenThread][finished]resultDataPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v7, v7, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resultFolder is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1409
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fullFolderPath:Ljava/lang/String;
    .restart local v2       #message:Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 1411
    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v5, v5, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2400(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto/16 :goto_1
.end method
