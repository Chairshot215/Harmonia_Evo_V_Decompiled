.class Lcom/htc/clock/util/location/LocationCtrl$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock/util/location/LocationCtrl;->initWeatherReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 384
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/clock/util/location/LocationCtrl;->mBOnReceiveWeatherData:Z

    .line 385
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v8, v8, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 386
    .local v4, length:I
    if-lez v4, :cond_0

    .line 387
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v8, v8, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 388
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 389
    .local v7, time:Ljava/util/Calendar;
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 390
    .local v3, hour:I
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 391
    .local v5, min:I
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v8, v8, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v9, "onReceive~ weatherdata:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v8, "onReceive~ weatherdata"

    invoke-static {v8}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 396
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "data"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/util/weather/WSPData;

    .line 398
    .local v1, data:Lcom/htc/util/weather/WSPData;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 399
    .local v6, msg:Landroid/os/Message;
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    const-string v8, "WeatherClock"

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 402
    const/4 v8, 0x3

    iput v8, v6, Landroid/os/Message;->what:I

    .line 403
    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 407
    .local v2, forceUpdateResult:Z
    if-eqz v2, :cond_1

    .line 408
    const/4 v8, 0x1

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 412
    :goto_0
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v8, v8, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v9, "onReceive~ category\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/clock/util/location/LocationCtrl;->access$000(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v8, v6, v9, v10}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 422
    .end local v2           #forceUpdateResult:Z
    :goto_1
    return-void

    .line 410
    .restart local v2       #forceUpdateResult:Z
    :cond_1
    const/4 v8, 0x0

    iput v8, v6, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 417
    .end local v2           #forceUpdateResult:Z
    :cond_2
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v8, v8, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v9, "onReceive~ normal\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/4 v8, 0x1

    iput v8, v6, Landroid/os/Message;->what:I

    .line 419
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl$3;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/clock/util/location/LocationCtrl;->access$000(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v8, v6, v9, v10}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    goto :goto_1
.end method
