.class Lcom/android/mms/ui/MessageSearch$QueryHandler;
.super Lcom/android/mms/util/MmsAsyncQueryHandler;
.source "MessageSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSearch;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageSearch;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    .line 529
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncQueryHandler;-><init>()V

    .line 530
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 534
    if-nez p3, :cond_1

    .line 535
    const-string v0, "MessageSearch"

    const-string v1, "onQueryComplete cursor null>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageSearch;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-static {p3}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->clearText:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$800(Lcom/android/mms/ui/MessageSearch;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 549
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 550
    invoke-static {p3}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 556
    const-string v0, "MessageSearch"

    const-string v1, "clear 2>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 562
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 563
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 566
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$QueryHandler;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 569
    :cond_7
    const-string v0, "MessageSearch"

    const-string v1, "complete, adpater null>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
