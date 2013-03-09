.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MonthViewAgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 390
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->surpressHostSlide(Z)V
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$200(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Z)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    const/4 v1, 0x0

    #calls: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->surpressHostSlide(Z)V
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$300(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 388
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
