.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3501
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3505
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->resetAdjust3DBtn()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3506
    return-void
.end method
