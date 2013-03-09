.class Lcom/android/browser/AddBookmarkPage$1;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/browser/AddBookmarkPage;->access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;)V
    .locals 7
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    const-wide/16 v5, -0x1

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, setAccount:Z
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    const/4 v2, 0x1

    #setter for: Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z
    invoke-static {v1, v2}, Lcom/android/browser/AddBookmarkPage;->access$002(Lcom/android/browser/AddBookmarkPage;Z)Z

    .line 395
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #calls: Lcom/android/browser/AddBookmarkPage;->showRemoveButton()V
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$100(Lcom/android/browser/AddBookmarkPage;)V

    .line 396
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFakeTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$200(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$300(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->setOtherFolderDisplayText(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$500(Lcom/android/browser/AddBookmarkPage;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_id"

    iget-wide v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    const/4 v0, 0x1

    .line 401
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentId:J

    #setter for: Lcom/android/browser/AddBookmarkPage;->mCurrentFolder:J
    invoke-static {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->access$602(Lcom/android/browser/AddBookmarkPage;J)J

    .line 403
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #calls: Lcom/android/browser/AddBookmarkPage;->onCurrentFolderFound()V
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$700(Lcom/android/browser/AddBookmarkPage;)V

    .line 409
    :cond_0
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-wide v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mEditingFolder:Z
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$800(Lcom/android/browser/AddBookmarkPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    if-eqz v0, :cond_3

    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lcom/android/browser/AddBookmarkPage;->access$900(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v4, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    .line 424
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 425
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mAccountSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$1000(Lcom/android/browser/AddBookmarkPage;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 427
    :cond_2
    return-void

    .line 415
    :cond_3
    if-nez v0, :cond_1

    .line 416
    const/4 v0, 0x1

    .line 417
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/AddBookmarkPage;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-wide v1, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mRootFolder:J
    invoke-static {v3}, Lcom/android/browser/AddBookmarkPage;->access$900(Lcom/android/browser/AddBookmarkPage;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mFolderAdapter:Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
    invoke-static {v1}, Lcom/android/browser/AddBookmarkPage;->access$400(Lcom/android/browser/AddBookmarkPage;)Lcom/android/browser/addbookmark/FolderSpinnerAdapter;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    iget-object v4, p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->addRecentFolder(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    check-cast p2, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/AddBookmarkPage$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;>;"
    return-void
.end method
