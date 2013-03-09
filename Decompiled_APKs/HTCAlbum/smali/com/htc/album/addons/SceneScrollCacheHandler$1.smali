.class Lcom/htc/album/addons/SceneScrollCacheHandler$1;
.super Landroid/os/Handler;
.source "SceneScrollCacheHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$1;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$1;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method
