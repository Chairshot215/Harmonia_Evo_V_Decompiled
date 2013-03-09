.class Lcom/htc/htccalendarwidgets/AgendaListWidget$5;
.super Landroid/content/BroadcastReceiver;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2402(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1554
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2102(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1555
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v2

    const/16 v3, 0x1a0b

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1562
    :cond_1
    :goto_0
    return-void

    .line 1556
    :cond_2
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1557
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2102(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1558
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v2

    const/16 v3, 0x1a0c

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1559
    :cond_3
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1560
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method
