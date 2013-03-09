.class Lcom/htc/music/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListView:Lcom/htc/widget/HtcListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;Lcom/htc/widget/HtcListView;I[Ljava/lang/String;[I)V
    .locals 6

    iput-object p1, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mLoading:Z

    iput-object p3, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;

    iget v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v10, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v9, v10}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v10, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v10, v10, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v9, v8, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    iget v9, v9, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    iget v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v9, "<unknown>"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    iget-object v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v9, v9

    if-ge v9, v3, :cond_1

    new-array v9, v3, [C

    iput-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    :cond_1
    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v8, v3, v9, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-static {v9, v8, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v9, v7, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcListItemRadioButton;

    iget-object v10, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    iget-wide v10, v10, Lcom/htc/music/MusicPicker;->mSelectedId:J

    cmp-long v10, v1, v10

    if-nez v10, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    return-void

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v9, "<unknown>"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    iput-object p1, v2, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->updateConfirmButtons()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPicker;->showEmptyView(I)V

    :goto_0
    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2, v1}, Lcom/htc/music/MusicPicker;->makeListShown(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->hideEmptyErrorView()V

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    iget v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v3, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    iget v3, v3, Lcom/htc/music/MusicPicker;->mSortMode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    iget v2, v2, Lcom/htc/music/MusicPicker;->mSortMode:I

    iput v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    new-instance v2, Lcom/htc/music/widget/MusicAlphabetIndexer;

    const-string v3, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v2, p1, v0, v3}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    invoke-virtual {v2}, Lcom/htc/music/MusicPicker;->showDatabaseError()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/MusicPicker$TrackListAdapter;)V

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f0800a7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v2, v1, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Lcom/htc/widget/HtcListItemRadioButton;

    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->this$0:Lcom/htc/music/MusicPicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MusicPicker$TrackListAdapter;->mLoading:Z

    return-void
.end method
