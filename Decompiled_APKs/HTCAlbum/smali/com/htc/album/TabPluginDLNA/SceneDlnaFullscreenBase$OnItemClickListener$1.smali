.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

.field final synthetic val$nIndex:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    iput p2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;->val$nIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 498
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener.1;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;->val$nIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onItemSelected(I)V

    .line 499
    return-void
.end method
