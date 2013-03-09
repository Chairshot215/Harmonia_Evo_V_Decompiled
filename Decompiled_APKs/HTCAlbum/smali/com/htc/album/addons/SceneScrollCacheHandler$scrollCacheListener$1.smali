.class Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->onAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

.field final synthetic val$newCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    iput-object p2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->val$newCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->this$1:Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    iget-object v0, v0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;->val$newCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    #calls: Lcom/htc/album/addons/SceneScrollCacheHandler;->onCacheAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$100(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 95
    return-void
.end method
