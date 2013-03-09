.class Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;
.super Landroid/os/AsyncTask;
.source "RlzDebugViewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iput p2, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v1, v1, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$000(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v6, v0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v1, v1, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$100(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v2, v2, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
    invoke-static {v2}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$100(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getProjection()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v4, v4, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
    invoke-static {v4}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$100(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getSortOrderMap()Ljava/util/Map;

    move-result-object v4

    iget v5, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->val$position:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v6, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$002(Lcom/google/android/partnersetup/RlzDebugViewListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 134
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$200(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1$1;->this$1:Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    iget-object v1, v1, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->access$000(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 140
    return-void
.end method
