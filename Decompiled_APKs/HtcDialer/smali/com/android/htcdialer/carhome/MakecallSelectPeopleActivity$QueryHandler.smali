.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    .line 1012
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1013
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1019
    sparse-switch p1, :sswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1023
    :sswitch_0
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1025
    :cond_1
    const/4 v0, 0x0

    .line 1026
    .local v0, count:I
    if-eqz p3, :cond_3

    .line 1028
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1029
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1030
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #calls: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheColumnIndices(Landroid/database/Cursor;)V
    invoke-static {v1, p3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$200(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/database/Cursor;)V

    .line 1032
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1034
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1a10

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1040
    :cond_3
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1a0e

    invoke-virtual {v2, v3, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    goto :goto_0

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e61 -> :sswitch_0
        0x22b8 -> :sswitch_0
    .end sparse-switch
.end method
