.class final Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    .line 553
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 554
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    invoke-virtual {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    if-ne v2, p1, :cond_2

    .line 561
    if-eqz p3, :cond_0

    .line 562
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->enableEmptyView(Z)V
    invoke-static {v0, v2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$300(Lcom/android/htcdialer/SpeedDialListActivity;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->access$400(Lcom/android/htcdialer/SpeedDialListActivity;)Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 565
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->enableEmptyView(Z)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->access$300(Lcom/android/htcdialer/SpeedDialListActivity;Z)V

    .line 569
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->access$400(Lcom/android/htcdialer/SpeedDialListActivity;)Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->setLoading(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->access$400(Lcom/android/htcdialer/SpeedDialListActivity;)Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 585
    :cond_2
    if-eqz p3, :cond_0

    .line 586
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
