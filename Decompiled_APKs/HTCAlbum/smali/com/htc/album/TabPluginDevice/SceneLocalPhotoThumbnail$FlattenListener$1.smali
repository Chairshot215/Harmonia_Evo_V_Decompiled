.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->onFlattenEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

.field final synthetic val$nMode:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->val$nMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1256
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1259
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eq v3, v2, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1264
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    if-le v3, v2, :cond_2

    .line 1266
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    goto :goto_0

    .line 1268
    :cond_2
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->val$nMode:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->val$nMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->val$nMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1271
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    goto :goto_0
.end method
