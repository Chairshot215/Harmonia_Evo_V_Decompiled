.class Lcom/htc/htccalendarwidgets/AgendaWidget$4;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 690
    iget v7, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    .line 692
    .local v7, event:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "HTCWidget_AgendaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next event hitbox tapped, event id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v2

    iget v2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v1

    iget v1, v1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v3

    iget-wide v3, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v5}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->launchEventInfoActivity(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$600(Lcom/htc/htccalendarwidgets/AgendaWidget;JJJ)V

    .line 699
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 687
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget$4;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
