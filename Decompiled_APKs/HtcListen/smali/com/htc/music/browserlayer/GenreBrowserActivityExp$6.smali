.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 11

    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v6

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v8, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "[GenreBrowserActivityExp]"

    const-string v9, "info is null in mOnChildClickListener"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v3, v9, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget v2, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v9, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v3, v0, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    iget-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-nez v7, :cond_6

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v9, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v3, v9, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
