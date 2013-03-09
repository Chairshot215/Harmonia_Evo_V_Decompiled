.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field final synthetic val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click button, audioId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "audioid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;->val$tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    return-void
.end method
