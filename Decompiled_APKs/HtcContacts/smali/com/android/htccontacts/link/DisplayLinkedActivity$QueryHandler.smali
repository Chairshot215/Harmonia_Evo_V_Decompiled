.class public Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DisplayLinkedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field public loadChildComplete:Z

.field public loadParentComplete:Z

.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/link/DisplayLinkedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 671
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    .line 672
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 667
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->loadParentComplete:Z

    .line 668
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->loadChildComplete:Z

    .line 673
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p2

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 674
    iput-object p2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 675
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 679
    const-string v3, "DisplayLinkedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----------onQueryComplete: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;

    .line 684
    .local v0, activity:Lcom/android/htccontacts/link/DisplayLinkedActivity;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 685
    if-nez p1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #setter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$202(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 687
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 688
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 689
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$400(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v3

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$500(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 690
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$400(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v3

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnChild(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$600(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 691
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 714
    :cond_0
    :goto_1
    return-void

    .line 679
    .end local v0           #activity:Lcom/android/htccontacts/link/DisplayLinkedActivity;
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .line 694
    .restart local v0       #activity:Lcom/android/htccontacts/link/DisplayLinkedActivity;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 695
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->queryGroupRawAfterSearch(Landroid/database/Cursor;)V
    invoke-static {v1, p3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$800(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/database/Cursor;)V

    goto :goto_1

    .line 696
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #setter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$202(Lcom/android/htccontacts/link/DisplayLinkedActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 698
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 699
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplayLinkedListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/link/DisplayLinkedListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 700
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$400(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v4

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v3, v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$500(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 701
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mRemovedRawIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$400(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/database/Cursor;

    move-result-object v4

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncOnChild(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v3, v4}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$600(Lcom/android/htccontacts/link/DisplayLinkedActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 702
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$700(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/link/DisplayLinkedListWrapperAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 705
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$900(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_1

    .line 709
    :cond_5
    if-eqz p3, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    iget-object v1, v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method
