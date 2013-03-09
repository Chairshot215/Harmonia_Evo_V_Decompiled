.class Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;
.super Ljava/lang/Object;
.source "AgendaListWidget.java"

# interfaces
.implements Lcom/htc/fusion/fx/controls/FxListViewItemCallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
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

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->list:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    return-void
.end method


# virtual methods
.method public getItemPath(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, MODE10_ITEM_PATH:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccalendarwidgets/RowInfo;

    iget v1, v1, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)I

    move-result v1

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetHeaderPath(II)Ljava/lang/String;

    move-result-object v0

    .line 795
    :goto_0
    return-object v0

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)I

    move-result v1

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetItemPath(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setRowInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, rowlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/RowInfo;>;"
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->list:Ljava/util/ArrayList;

    .line 786
    return-void
.end method
