.class Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
.super Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;
.source "ConversationHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationHeaderCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAdapter"
.end annotation


# instance fields
.field private mIsSearch:Z

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private final mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

.field private final mViewMode:Lcom/google/android/gm/ViewMode;

.field final synthetic this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "viewMode"
    .parameter "isSearch"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Z)V

    .line 249
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 250
    iput-object p5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    .line 251
    iput-object p6, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 252
    iput-boolean p7, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mIsSearch:Z

    .line 253
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 257
    instance-of v1, p1, Lcom/google/android/gm/CanvasConversationHeaderView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 259
    check-cast v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    .line 260
    .local v0, convHeader:Lcom/google/android/gm/CanvasConversationHeaderView;
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mStarHandler:Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;

    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$100(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$200(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;
    invoke-static {v6}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$300(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/ConversationSelectionSet;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mViewMode:Lcom/google/android/gm/ViewMode;

    iget-boolean v8, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->mIsSearch:Z

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/CanvasConversationHeaderView;->bind(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/ViewMode;Z)V

    .line 264
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mFadedIds:Ljava/util/Collection;
    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$400(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mFadedIds:Ljava/util/Collection;
    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$400(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 266
    .local v9, faded:Z
    :goto_0
    invoke-virtual {v0, v9}, Lcom/google/android/gm/CanvasConversationHeaderView;->setFaded(Z)V

    .line 272
    .end local v0           #convHeader:Lcom/google/android/gm/CanvasConversationHeaderView;
    .end local v9           #faded:Z
    :cond_0
    return-void

    .line 264
    .restart local v0       #convHeader:Lcom/google/android/gm/CanvasConversationHeaderView;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 276
    new-instance v0, Lcom/google/android/gm/CanvasConversationHeaderView;

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$100(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gm/CanvasConversationHeaderView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;->this$0:Lcom/google/android/gm/ConversationHeaderCursorAdapter;

    #getter for: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v2

    #calls: Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->access$500(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/provider/Gmail$MailCursorAdapter;->notifyDataSetChanged()V

    .line 287
    return-void
.end method
