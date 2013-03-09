.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->onSelectedIndexChanged(Lcom/htc/photowidget3d/widget/FusionListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

.field final synthetic val$listView:Lcom/htc/photowidget3d/widget/FusionListView;

.field final synthetic val$selectedIndex:I

.field final synthetic val$visibileBegin:I

.field final synthetic val$visibileEnd:I


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;ILcom/htc/photowidget3d/widget/FusionListView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iput p2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$selectedIndex:I

    iput-object p3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$listView:Lcom/htc/photowidget3d/widget/FusionListView;

    iput p4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$visibileBegin:I

    iput p5, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$visibileEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 518
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$selectedIndex:I

    #setter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$802(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)I

    .line 519
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)I

    move-result v2

    add-int/lit8 v0, v2, -0x5

    .line 520
    .local v0, begin:I
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I
    invoke-static {v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)I

    move-result v2

    add-int/lit8 v1, v2, 0x5

    .line 521
    .local v1, end:I
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v2, v0, v1}, Lcom/htc/photowidget3d/image/ImageProvider;->setVisibleRange(II)V

    .line 522
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onSelectedIndexChanged] mSelectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;

    iget-object v4, v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mSelectedIndex:I
    invoke-static {v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", FirstVisibileIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$listView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v4}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n visibileBegin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$visibileBegin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibileEnd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;->val$visibileEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method
