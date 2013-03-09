.class Lcom/htc/android/worldclock/TimeZonePicker$5;
.super Landroid/os/Handler;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 625
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 626
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 674
    :goto_0
    :pswitch_0
    return-void

    .line 629
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 630
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 631
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v2, v2, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    if-nez v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    new-instance v3, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    iget-object v4, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v5, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const v6, 0x7f030007

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v3, v2, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    .line 633
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1200(Lcom/htc/android/worldclock/TimeZonePicker;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 639
    :goto_1
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1300(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1300(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1300(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 642
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #setter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, v9}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1302(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #setter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1302(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 648
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1300(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 649
    .local v1, foundNum:I
    if-nez v1, :cond_2

    .line 650
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->noCityAlert(ZZ)V
    invoke-static {v2, v8, v8}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1400(Lcom/htc/android/worldclock/TimeZonePicker;ZZ)V

    goto :goto_0

    .line 635
    .end local v1           #foundNum:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v2, v2, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 636
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1200(Lcom/htc/android/worldclock/TimeZonePicker;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 652
    .restart local v1       #foundNum:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->noCityAlert(ZZ)V
    invoke-static {v2, v7, v7}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1400(Lcom/htc/android/worldclock/TimeZonePicker;ZZ)V

    goto :goto_0

    .line 655
    .end local v1           #foundNum:I
    :cond_3
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v2, v2, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    if-eqz v2, :cond_4

    .line 656
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v2, v2, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v2, v9}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 657
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1200(Lcom/htc/android/worldclock/TimeZonePicker;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    :cond_4
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->noCityAlert(ZZ)V
    invoke-static {v2, v8, v7}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1400(Lcom/htc/android/worldclock/TimeZonePicker;ZZ)V

    goto/16 :goto_0

    .line 665
    .end local v0           #cursor:Landroid/database/Cursor;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker$5;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/TimeZonePicker;->handleStuffAfterOnResume()V

    goto/16 :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
