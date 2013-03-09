.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$500(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    check-cast p1, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    return-void
.end method
