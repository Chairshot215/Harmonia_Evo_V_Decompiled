.class Lcom/google/android/talk/RosterListAdapter$4;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 443
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .line 444
    .local v0, rosterItem:Lcom/google/android/talk/RosterListItem;
    invoke-virtual {v0, v12}, Lcom/google/android/talk/RosterListItem;->setIsSelfItem(Z)V

    .line 445
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    .local v12, focus:Z
    :goto_0
    invoke-virtual {v0, v12}, Lcom/google/android/talk/RosterListItem;->setActivated(Z)V

    .line 448
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mAccountId:J
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/RosterListAdapter;->isScrolling()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;
    invoke-static {v5}, Lcom/google/android/talk/RosterListAdapter;->access$700(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z
    invoke-static {v7}, Lcom/google/android/talk/RosterListAdapter;->access$800(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v7

    iget-object v8, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z
    invoke-static {v8}, Lcom/google/android/talk/RosterListAdapter;->access$900(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z
    invoke-static {v10}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v10

    iget-object v11, p0, Lcom/google/android/talk/RosterListAdapter$4;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSuppressVideoButton:Z
    invoke-static {v11}, Lcom/google/android/talk/RosterListAdapter;->access$1100(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v11

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/talk/RosterListItem;->bind(Landroid/database/Cursor;JZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;ZZ)V

    .line 462
    .end local v12           #focus:Z
    :goto_1
    return-void

    :cond_0
    move v12, v6

    .line 446
    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/talk/RosterListItem;->bindEmpty()V

    goto :goto_1
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 441
    return-void
.end method
