.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 10

    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info == null in onChildClick, position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    iget v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v8, 0x0

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v1, v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v1, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v8, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget v8, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
