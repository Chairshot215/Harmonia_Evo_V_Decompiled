.class final Lcom/htc/music/MusicPluginManager$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private deleteOldestFiles(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v2, v6

    const/16 v8, 0x64

    if-le v2, v8, :cond_0

    add-int/lit8 v0, v2, -0x64

    if-lez v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;

    invoke-direct {v8, p0}, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;-><init>(Lcom/htc/music/MusicPluginManager$NonUiHandler;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string v8, "[MusicPluginManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v5, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "[MusicPluginManager]"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "[MusicPluginManager]"

    const-string v2, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->removeMessages(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->deleteOldestFiles(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
