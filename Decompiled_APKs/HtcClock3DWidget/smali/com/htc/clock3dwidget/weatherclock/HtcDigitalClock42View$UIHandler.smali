.class Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;
.super Ljava/lang/Object;
.source "HtcDigitalClock42View.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;-><init>(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 62
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 66
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weatherClock onReceive~ action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPaused:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    iget-boolean v4, v4, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ACTION_TIMEZONE_CHANGED mBListenTimeZoneChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    iget-boolean v2, v2, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mBListenTimeZoneChanged:Z

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, changeTz:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    invoke-virtual {v2, v0}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->setTimeZone(Ljava/lang/String;)V

    .line 81
    .end local v0           #changeTz:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mFlipAnimePrepared:Z
    invoke-static {v2}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->access$100(Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    invoke-virtual {v2}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->prepareAnimation()V

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    iget-boolean v2, v2, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->mPaused:Z

    if-nez v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View$UIHandler;->this$0:Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;

    invoke-virtual {v2}, Lcom/htc/clock3dwidget/weatherclock/HtcDigitalClock42View;->onTimeChanged()V

    .line 88
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method
