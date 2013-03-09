.class Lcom/htc/htccalendarwidgets/AgendaWidget$1;
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
        "Ljava/lang/Void;",
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
    .line 639
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$1;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 639
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget$1;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 644
    const-string v1, "com.htc.calendar"

    const-string v2, "com.htc.calendar.LaunchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$1;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method
