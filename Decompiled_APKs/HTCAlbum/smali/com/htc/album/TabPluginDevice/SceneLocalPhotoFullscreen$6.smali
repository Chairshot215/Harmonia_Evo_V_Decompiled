.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

.field final synthetic val$bForce:Z

.field final synthetic val$bIsShow:Z


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput-boolean p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->val$bIsShow:Z

    iput-boolean p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->val$bForce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->val$bIsShow:Z

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;->val$bForce:Z

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doShowDrmFileNameBar(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    .line 885
    return-void
.end method
