.class Lcom/htc/home/personalize/catechooser/CategoryChooser$3;
.super Ljava/lang/Object;
.source "CategoryChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/catechooser/CategoryChooser;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/catechooser/CategoryChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 385
    iget-object v10, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    iget-object v11, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->categories:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$700(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Ljava/util/List;

    move-result-object v11

    #calls: Lcom/htc/home/personalize/catechooser/CategoryChooser;->collectDuplicateCategoryIconURL(Ljava/util/List;)Ljava/util/Map;
    invoke-static {v10, v11}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$800(Lcom/htc/home/personalize/catechooser/CategoryChooser;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 386
    .local v0, categoryIconURLMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 387
    .local v9, urlSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 388
    .local v8, strUrl:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$400()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Download url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v7, 0x0

    .line 391
    .local v7, strTmpFilePath:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 392
    .local v6, strTargetUri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 393
    const/4 v10, 0x0

    const/4 v11, -0x1

    iget-object v12, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$900(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v6, v10, v11, v12}, Lcom/htc/home/personalize/abstractresource/HttpDownloader;->download(Ljava/net/URI;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 401
    .end local v6           #strTargetUri:Ljava/net/URI;
    :cond_1
    :goto_1
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 402
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 403
    .local v4, iconPathSet:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 404
    .local v5, strIconPath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$400()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copy icon to path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_2

    .line 395
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iconPathSet:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #strIconPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-static {}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$400()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare: URISyntaxException url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #iconPathSet:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v10, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v10}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$600(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 409
    iget-object v10, p0, Lcom/htc/home/personalize/catechooser/CategoryChooser$3;->this$0:Lcom/htc/home/personalize/catechooser/CategoryChooser;

    #getter for: Lcom/htc/home/personalize/catechooser/CategoryChooser;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;
    invoke-static {v10}, Lcom/htc/home/personalize/catechooser/CategoryChooser;->access$600(Lcom/htc/home/personalize/catechooser/CategoryChooser;)Lcom/htc/home/personalize/olrespicker/UIHandler;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/htc/home/personalize/olrespicker/UIHandler;->handleNotifyDataSetChanged(I)V

    goto/16 :goto_0

    .line 413
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iconPathSet:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #strTmpFilePath:Ljava/lang/String;
    .end local v8           #strUrl:Ljava/lang/String;
    :cond_3
    return-void
.end method
