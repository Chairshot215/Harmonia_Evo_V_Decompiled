.class Lcom/htc/htccalendarwidgets/AgendaWidget$5;
.super Landroid/content/BroadcastReceiver;
.source "AgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, action:Ljava/lang/String;
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

    if-eqz v1, :cond_3

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1312
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1802(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1313
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1702(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1335
    :cond_1
    :goto_0
    return-void

    .line 1317
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->goToToday()V

    .line 1318
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1f43

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1320
    :cond_3
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1321
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1322
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1702(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    goto :goto_0

    .line 1326
    :cond_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1b5c

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 1327
    :cond_5
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1329
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->checkTime()V

    goto :goto_0

    .line 1331
    :cond_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1602(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    goto :goto_0
.end method
