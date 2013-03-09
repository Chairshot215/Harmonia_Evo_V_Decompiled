.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable$1;
.super Ljava/lang/Object;
.source "LocalPhotoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable$1;->this$1:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1508
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mMainView.invalidate()"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method
