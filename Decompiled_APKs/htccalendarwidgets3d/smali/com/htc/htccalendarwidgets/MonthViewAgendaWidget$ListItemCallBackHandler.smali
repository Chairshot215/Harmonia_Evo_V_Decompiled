.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;
.super Ljava/lang/Object;
.source "MonthViewAgendaWidget.java"

# interfaces
.implements Lcom/htc/fusion/fx/controls/FxListViewItemCallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemCallBackHandler"
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemPath(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, MODE10_ITEM_PATH:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccalendarwidgets/RowInfo;

    iget v1, v1, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mOrientation:I

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetHeaderPath(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mOrientation:I

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetItemPath(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
