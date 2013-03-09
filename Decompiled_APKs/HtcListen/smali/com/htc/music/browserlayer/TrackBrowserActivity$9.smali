.class Lcom/htc/music/browserlayer/TrackBrowserActivity$9;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v13, v13, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getAutoRequery()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    instance-of v13, v13, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_9

    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, p1, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v7, p1, 0x1

    :goto_0
    move/from16 v0, p2

    if-gt v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, p1, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v7, p1, -0x1

    :goto_1
    move/from16 v0, p2

    if-lt v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x1

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z

    :goto_2
    return-void

    :cond_a
    :try_start_0
    const-string v13, "external"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "_id=?"

    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    const-string v14, "play_order"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v13, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v7, p1, 0x1

    :goto_3
    move/from16 v0, p2

    if-gt v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v13, "play_order"

    add-int/lit8 v14, v7, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v13, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v7, p1, -0x1

    :goto_4
    move/from16 v0, p2

    if-lt v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v13, "play_order"

    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string v13, "TrackBrowserActivity"

    const-string v14, "Failed to drop item."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
