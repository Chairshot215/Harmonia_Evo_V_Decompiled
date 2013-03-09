.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;
.super Ljava/lang/Object;
.source "LocalPhotoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyDataChangeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$1800(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$NotifyDataChangeRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1512
    return-void
.end method
