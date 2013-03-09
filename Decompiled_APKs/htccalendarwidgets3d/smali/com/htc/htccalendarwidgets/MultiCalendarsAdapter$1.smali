.class Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;
.super Landroid/os/Handler;
.source "MultiCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;->this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 65
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_2

    .line 67
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 68
    .local v1, nNeedCloseDialog:I
    if-ne v1, v0, :cond_1

    .line 69
    .local v0, bNeedCloseDialog:Z
    :goto_0
    new-instance v2, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$UpdateAllCalendarThread;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;->this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-direct {v2, v3, v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$UpdateAllCalendarThread;-><init>(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;Z)V

    .line 70
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 75
    .end local v0           #bNeedCloseDialog:Z
    .end local v1           #nNeedCloseDialog:I
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_0
    :goto_1
    return-void

    .line 68
    .restart local v1       #nNeedCloseDialog:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .end local v1           #nNeedCloseDialog:I
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 73
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;->this$0:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    #calls: Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->msg_send_to_calendar_widget()V
    invoke-static {v3}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->access$000(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V

    goto :goto_1
.end method
