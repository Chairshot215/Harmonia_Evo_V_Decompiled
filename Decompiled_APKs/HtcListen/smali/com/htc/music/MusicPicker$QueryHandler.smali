.class final Lcom/htc/music/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, p3

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget v2, v2, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    #calls: Lcom/htc/music/MusicPicker;->getUnknownArtist()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/MusicPicker;->access$000(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v5, [Landroid/database/Cursor;

    aput-object p3, v2, v4

    aput-object v1, v2, v6

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v2, v2, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v2, v2, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    #calls: Lcom/htc/music/MusicPicker;->setSelectedItemPosition(Landroid/database/Cursor;)V
    invoke-static {v2, v0}, Lcom/htc/music/MusicPicker;->access$200(Lcom/htc/music/MusicPicker;Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v2, v2, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget-object v3, v3, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget-boolean v2, v2, Lcom/htc/music/MusicPicker;->mListHasFocus:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iput-boolean v4, v2, Lcom/htc/music/MusicPicker;->mListHasFocus:Z

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    iget v2, v2, Lcom/htc/music/MusicPicker;->mSortMode:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPicker$QueryHandler;->this$0:Lcom/htc/music/MusicPicker;

    #calls: Lcom/htc/music/MusicPicker;->getUnknownAlbum()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/MusicPicker;->access$100(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v5, [Landroid/database/Cursor;

    aput-object p3, v2, v4

    aput-object v1, v2, v6

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
