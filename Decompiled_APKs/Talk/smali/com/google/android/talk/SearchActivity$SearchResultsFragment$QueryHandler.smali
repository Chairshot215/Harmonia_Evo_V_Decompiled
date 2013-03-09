.class final Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

.field final synthetic this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 466
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 467
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 475
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isEmpty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->mAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->mAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    if-eqz p3, :cond_4

    .line 481
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    #getter for: Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;
    invoke-static {v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->access$500(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;)Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    #getter for: Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mUserName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->access$400(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/google/android/talk/GmailProviderWrapper;->getConversationCursorForCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    .line 483
    .local v0, conversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->mAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->changeCursor(Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;)V

    .line 485
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete conversationCursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v1

    .line 492
    .local v1, status:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    sget-object v2, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->COMPLETE:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-ne v1, v2, :cond_3

    .line 494
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->contentChanged()V

    .line 499
    .end local v0           #conversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    .end local v1           #status:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    :cond_3
    :goto_0
    return-void

    .line 497
    :cond_4
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->this$0:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->contentChanged()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/google/android/talk/SearchHeaderCursorAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->mAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    .line 471
    return-void
.end method
