.class public Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;
.super Landroid/widget/CursorAdapter;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RosterListAdapterInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;
    }
.end annotation


# instance fields
.field private mForceLoadRunnable:Ljava/lang/Runnable;

.field private mNeedForceLoad:Z

.field private mScrollState:I

.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/RosterListAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$200(Lcom/google/android/talk/RosterListAdapter;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, contact:Ljava/lang/String;
    const/4 v14, 0x0

    .line 97
    .local v14, focus:Z
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$400(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mAccountId:J
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v14, 0x1

    .line 100
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setActivated(Z)V

    move-object/from16 v1, p1

    .line 104
    check-cast v1, Lcom/google/android/talk/RosterListItem;

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mAccountId:J
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$500(Lcom/google/android/talk/RosterListAdapter;)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->isScrolling()Z

    move-result v5

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$700(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$800(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v8

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$900(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v9

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$1000(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v10

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$300(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v11

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mSuppressVideoButton:Z
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter;->access$1100(Lcom/google/android/talk/RosterListAdapter;)Z

    move-result v12

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/talk/RosterListItem;->bind(Landroid/database/Cursor;JZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;ZZ)V

    .line 115
    return-void

    .line 98
    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 79
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 120
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 123
    const/4 v1, -0x1

    .line 125
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1200(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/talk/RosterListItem;->getItemViewType(Lcom/google/android/talk/TalkApp;Landroid/database/Cursor;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x4

    return v0
.end method

.method public hasActiveChats()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    const-string v4, "is_active"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, isActiveColumn:I
    const-string v4, "subscriptionType"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, subscriptionTypeColumn:I
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    :sswitch_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 206
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mForceLoadRunnable:Ljava/lang/Runnable;

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/talk/RosterListAdapter;->access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;-><init>(Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;Lcom/google/android/talk/RosterListAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 84
    return-void
.end method

.method public final isScrolling()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .line 90
    .local v0, view:Lcom/google/android/talk/RosterListItem;
    return-object v0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 212
    const v1, 0x7f100075

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, rosterListItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 214
    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .end local v0           #rosterListItem:Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/talk/RosterListItem;->onMovedToScrapHeap()V

    .line 216
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 153
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    .line 162
    .local v0, oldState:I
    iput p2, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mScrollState:I

    .line 166
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    if-eqz v1, :cond_1

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    .line 169
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setNeedForceLoad(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->mNeedForceLoad:Z

    .line 149
    return-void
.end method
