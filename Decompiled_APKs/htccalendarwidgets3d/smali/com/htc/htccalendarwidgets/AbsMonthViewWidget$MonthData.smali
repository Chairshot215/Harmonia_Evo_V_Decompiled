.class public Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
.super Ljava/lang/Object;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MonthData"
.end annotation


# instance fields
.field eventDay:[Z

.field listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

.field month_:I

.field numDayOfMonth_:I

.field offset_:I

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

.field time_:Landroid/text/format/Time;

.field title_:Ljava/lang/String;

.field year_:I


# direct methods
.method protected constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    const/16 v0, 0x1f

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->eventDay:[Z

    .line 1657
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 1660
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->eventDay:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    :cond_0
    return-void
.end method
