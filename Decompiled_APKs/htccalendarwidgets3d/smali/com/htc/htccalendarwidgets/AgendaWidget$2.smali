.class Lcom/htc/htccalendarwidgets/AgendaWidget$2;
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
    .line 651
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 654
    iget v7, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    .line 656
    .local v7, event:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$300(Lcom/htc/htccalendarwidgets/AgendaWidget;)I

    move-result v0

    if-lez v0, :cond_1

    .line 659
    const-string v0, "HTCWidget_AgendaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main hitbox tapped, event id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$300(Lcom/htc/htccalendarwidgets/AgendaWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$300(Lcom/htc/htccalendarwidgets/AgendaWidget;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mStartTime:J
    invoke-static {v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$400(Lcom/htc/htccalendarwidgets/AgendaWidget;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mStopTime:J
    invoke-static {v5}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaWidget;)J

    move-result-wide v5

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->launchEventInfoActivity(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$600(Lcom/htc/htccalendarwidgets/AgendaWidget;JJJ)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-string v0, "HTCWidget_AgendaWidget"

    const-string v1, "Main hitbox tapped, new event"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-static {}, Lcom/htc/htccalendarwidgets/CalendarConstants;->launchEditEventIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 651
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
