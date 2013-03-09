.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getGroupSeclectList()[I

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "failed to get list item"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getChildSeclectList()[I

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "selectedlist"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v4, v5, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-static {v4, v3}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3
.end method
