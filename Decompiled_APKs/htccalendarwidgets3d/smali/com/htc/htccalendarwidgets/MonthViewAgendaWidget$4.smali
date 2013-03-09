.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;
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
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
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
    .line 399
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$400(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 399
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
