.class Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;
.super Ljava/lang/Object;
.source "LocalThumbnailBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    invoke-virtual {v0, p2, p3}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V

    .line 49
    return-void
.end method
