.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
        ">;"
    }
.end annotation


# instance fields
.field bWithinCurrentMonth:Z

.field dateInfo:I

.field dayIndex:I

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;IIZ)V
    .locals 1
    .parameter
    .parameter "index"
    .parameter "date"
    .parameter "withinCurrentMonth"

    .prologue
    const/4 v0, -0x1

    .line 1763
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 1759
    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    .line 1760
    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dateInfo:I

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->bWithinCurrentMonth:Z

    .line 1764
    iput p2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    .line 1765
    iput p3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dateInfo:I

    .line 1766
    iput-boolean p4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->bWithinCurrentMonth:Z

    .line 1767
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 1770
    iget v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    rem-int/lit8 v0, v2, 0x7

    .line 1771
    .local v0, column:I
    iget v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    div-int/lit8 v1, v2, 0x7

    .line 1772
    .local v1, row:I
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onGridItemClick(III)V

    .line 1773
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1758
    check-cast p1, Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V

    return-void
.end method
