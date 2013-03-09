.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/EditPlaylistActivity;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$500(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/EditPlaylistActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method
