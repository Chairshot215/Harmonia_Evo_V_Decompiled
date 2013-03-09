.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;
.super Ljava/lang/Object;
.source "MonthViewAgendaWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->extractEvents(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iput-object p2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 292
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;->val$c:Landroid/database/Cursor;

    #calls: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->extract(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$000(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Landroid/database/Cursor;)V

    .line 293
    return-void
.end method
