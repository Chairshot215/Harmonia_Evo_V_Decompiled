.class Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;
.super Ljava/lang/Object;
.source "SceneDlnaGridview.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    const/16 v1, 0x139c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onPostMessage(ILjava/lang/Object;I)V

    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 54
    return-void
.end method
