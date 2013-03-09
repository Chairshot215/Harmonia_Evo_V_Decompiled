.class Lcom/htc/Weather/AddCity$3;
.super Landroid/os/Handler;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 920
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 981
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 924
    :pswitch_1
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 926
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    .line 929
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$800(Lcom/htc/Weather/AddCity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    if-eqz v1, :cond_1

    .line 932
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 933
    const/4 v1, 0x0

    .line 935
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #setter for: Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z
    invoke-static {v2, v3}, Lcom/htc/Weather/AddCity;->access$802(Lcom/htc/Weather/AddCity;Z)Z

    goto :goto_0

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    move v2, v4

    .line 924
    goto :goto_1

    .line 939
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v1, :cond_7

    .line 940
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 941
    .local v0, count:I
    if-nez v0, :cond_4

    .line 942
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #calls: Lcom/htc/Weather/AddCity;->resetList(Z)V
    invoke-static {v2, v4}, Lcom/htc/Weather/AddCity;->access$900(Lcom/htc/Weather/AddCity;Z)V

    .line 946
    :goto_2
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v2, v2, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    if-nez v2, :cond_5

    .line 947
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v3, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v3, v1}, Lcom/htc/Weather/AddCity;->newListAdapter(Landroid/database/Cursor;)Lcom/htc/Weather/AddCity$cityAdapter;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    .line 948
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v3, v3, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 944
    :cond_4
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #calls: Lcom/htc/Weather/AddCity;->showList()V
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$1200(Lcom/htc/Weather/AddCity;)V

    goto :goto_2

    .line 951
    :cond_5
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget v2, v2, Lcom/htc/Weather/AddCity;->mPendingSearch:I

    if-nez v2, :cond_6

    .line 952
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v2, v2, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/Weather/AddCity$cityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 953
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v3, v3, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 954
    :cond_6
    if-eqz v1, :cond_0

    .line 955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 956
    const/4 v1, 0x0

    goto :goto_0

    .line 961
    .end local v0           #count:I
    :cond_7
    iget-object v2, p0, Lcom/htc/Weather/AddCity$3;->this$0:Lcom/htc/Weather/AddCity;

    const-string v3, ""

    iput-object v3, v2, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    goto/16 :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
