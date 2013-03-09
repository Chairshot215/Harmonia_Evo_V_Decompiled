.class final Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SpeedDialListActivity.java"

# interfaces
.implements Lcom/htc/widget/InsertNewListAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpeedDialItemListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/htcdialer/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    .line 598
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 599
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 600
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 611
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 612
    .local v2, location:I
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, name:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 614
    .local v5, type:I
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    move-object v1, p1

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/htcdialer/SpeedDialListActivity;->access$500(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method public getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f09003b

    const v3, 0x2080417

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mOnAddNewClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/htcdialer/SpeedDialListActivity;->access$600(Lcom/android/htcdialer/SpeedDialListActivity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htcdialer/SpeedDialListActivity;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 650
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 654
    :cond_1
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 604
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onInsertViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->addSpeedDial()V
    invoke-static {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->access$000(Lcom/android/htcdialer/SpeedDialListActivity;)V

    .line 659
    return-void
.end method

.method public onInsertViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 667
    const/4 v0, 0x1

    return v0
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->mIsLoading:Z

    .line 629
    return-void
.end method
