.class Lcom/htc/android/worldclock/DeskClock$3;
.super Landroid/os/Handler;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshInit()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$400(Lcom/htc/android/worldclock/DeskClock;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshRemains()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$500(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 291
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$600(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherFetchScheduled:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DeskClock;->access$602(Lcom/htc/android/worldclock/DeskClock;Z)Z

    .line 296
    new-instance v0, Lcom/htc/android/worldclock/DeskClock$3$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeskClock$3$1;-><init>(Lcom/htc/android/worldclock/DeskClock$3;)V

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock$3$1;->start()V

    .line 302
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const-wide/32 v1, 0x493e0

    #calls: Lcom/htc/android/worldclock/DeskClock;->scheduleWeatherFetchDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/DeskClock;->access$800(Lcom/htc/android/worldclock/DeskClock;J)V

    goto :goto_0

    .line 303
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_4

    .line 304
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->updateWeatherDisplay()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$900(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 305
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_5

    .line 306
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mIdleTimeoutEpoch:I
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$1000(Lcom/htc/android/worldclock/DeskClock;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->saveScreen()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1100(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 309
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_6

    .line 310
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->moveScreenSaver()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1200(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 311
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_7

    .line 312
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshColon()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1300(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 313
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_8

    .line 314
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$300(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 315
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1004

    if-ne v0, v1, :cond_9

    .line 316
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshResume()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1400(Lcom/htc/android/worldclock/DeskClock;)V

    goto/16 :goto_0

    .line 317
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_a

    .line 318
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshNextAlarm()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1500(Lcom/htc/android/worldclock/DeskClock;)V

    goto/16 :goto_0

    .line 319
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1008

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$1700(Lcom/htc/android/worldclock/DeskClock;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mBtnWeather:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$1600(Lcom/htc/android/worldclock/DeskClock;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
