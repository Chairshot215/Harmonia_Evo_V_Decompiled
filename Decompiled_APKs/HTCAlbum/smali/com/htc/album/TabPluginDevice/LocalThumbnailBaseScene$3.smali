.class Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;
.super Ljava/lang/Object;
.source "LocalThumbnailBaseScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$view:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$view:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "LocalThumbnailBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyDataSetChanged] Start to wait: view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$view:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$view:Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$view:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 347
    :cond_0
    const-string v0, "LocalThumbnailBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyDataSetChanged] Start to release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->releaseListDataCache()V

    .line 351
    :cond_1
    return-void
.end method
