.class Lcom/htc/lockscreen/app/widget/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/widget/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    #getter for: Lcom/htc/lockscreen/app/widget/DigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$000(Lcom/htc/lockscreen/app/widget/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/htc/lockscreen/app/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$102(Lcom/htc/lockscreen/app/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    #getter for: Lcom/htc/lockscreen/app/widget/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$300(Lcom/htc/lockscreen/app/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/lockscreen/app/widget/DigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/widget/DigitalClock$1$1;-><init>(Lcom/htc/lockscreen/app/widget/DigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
