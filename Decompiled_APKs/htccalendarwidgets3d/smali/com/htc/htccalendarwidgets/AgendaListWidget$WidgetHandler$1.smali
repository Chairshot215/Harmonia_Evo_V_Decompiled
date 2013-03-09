.class Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;
.super Ljava/lang/Object;
.source "AgendaListWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;->this$1:Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;

    iput-object p2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1380
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1381
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;->this$1:Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;->val$c:Landroid/database/Cursor;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->extract(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3100(Lcom/htc/htccalendarwidgets/AgendaListWidget;Landroid/database/Cursor;)V

    .line 1382
    return-void
.end method
