.class Lcom/android/mms/ui/MessageSearch$2;
.super Ljava/lang/Object;
.source "MessageSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSearch;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 492
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    const-string v4, ""

    iput-object v4, v0, Lcom/android/mms/ui/MessageSearch;->searchKey:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #setter for: Lcom/android/mms/ui/MessageSearch;->clearText:Z
    invoke-static {v0, v5}, Lcom/android/mms/ui/MessageSearch;->access$802(Lcom/android/mms/ui/MessageSearch;Z)Z

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageSearch;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 497
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$900(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mBarInput:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1000(Lcom/android/mms/ui/MessageSearch;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 503
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->clearText:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$800(Lcom/android/mms/ui/MessageSearch;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 518
    :goto_1
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #setter for: Lcom/android/mms/ui/MessageSearch;->clearText:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageSearch;->access$802(Lcom/android/mms/ui/MessageSearch;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mBarInput:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1000(Lcom/android/mms/ui/MessageSearch;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, pattern:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    iput-object v10, v0, Lcom/android/mms/ui/MessageSearch;->searchKey:Ljava/lang/String;

    .line 513
    const-string v0, "content://mms-sms/suggestion/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 514
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 515
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    sget v4, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 516
    new-array v6, v5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    iget-object v0, v0, Lcom/android/mms/ui/MessageSearch;->searchKey:Ljava/lang/String;

    aput-object v0, v6, v1

    .line 517
    .local v6, mQuery:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$2;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mQueryHandler:Lcom/android/mms/ui/MessageSearch$QueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$1200(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$QueryHandler;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MessageSearch$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 521
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 524
    return-void
.end method
