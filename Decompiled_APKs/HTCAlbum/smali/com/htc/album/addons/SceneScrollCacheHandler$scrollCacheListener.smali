.class public Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "scrollCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 3
    .parameter "nCacheType"

    .prologue
    .line 87
    move-object v0, p1

    .line 88
    .local v0, newCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    #getter for: Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$200(Lcom/htc/album/addons/SceneScrollCacheHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener$1;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public onCacheUpdated(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "nCacheType"

    .prologue
    .line 102
    return-void
.end method

.method public onDetached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "nCacheType"

    .prologue
    .line 107
    return-void
.end method

.method public onHide(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "nCacheType"

    .prologue
    .line 117
    return-void
.end method

.method public onShow(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "nCacheType"

    .prologue
    .line 112
    return-void
.end method
