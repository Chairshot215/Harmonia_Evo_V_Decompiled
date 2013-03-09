.class Lcom/htc/android/worldclock/WorldClock$UIHandler;
.super Landroid/os/Handler;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/WorldClock;Lcom/htc/android/worldclock/WorldClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClock$UIHandler;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    .line 358
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 359
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 360
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #getter for: Lcom/htc/android/worldclock/WorldClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/WorldClock;->access$500(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #setter for: Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z
    invoke-static {v1, v3}, Lcom/htc/android/worldclock/WorldClock;->access$602(Lcom/htc/android/worldclock/WorldClock;Z)Z

    goto :goto_0

    .line 367
    :cond_1
    const-string v1, "UI_ACTION_CITY"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v2, v2, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->changeList(Ljava/util/ArrayList;)V

    .line 370
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #getter for: Lcom/htc/android/worldclock/WorldClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/WorldClock;->access$500(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #setter for: Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z
    invoke-static {v1, v3}, Lcom/htc/android/worldclock/WorldClock;->access$702(Lcom/htc/android/worldclock/WorldClock;Z)Z

    goto :goto_0

    .line 379
    :cond_2
    const-string v1, "UI_ACTION_TIMETICK"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #getter for: Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/WorldClock;->access$200(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget v2, v2, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    sub-int/2addr v1, v2

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    .line 392
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-virtual {v1, v3}, Lcom/htc/android/worldclock/WorldClock;->showDialog(I)V

    goto :goto_0

    .line 394
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const-class v2, Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    const-string v1, "search_intention"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-virtual {v1, v0, v3}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 401
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock$UIHandler;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/16 v2, 0x7b

    const/16 v3, 0x64

    #calls: Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(II)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/WorldClock;->access$800(Lcom/htc/android/worldclock/WorldClock;II)V

    goto/16 :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
