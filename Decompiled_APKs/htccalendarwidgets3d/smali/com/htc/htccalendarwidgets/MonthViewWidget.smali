.class public Lcom/htc/htccalendarwidgets/MonthViewWidget;
.super Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.source "MonthViewWidget.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/htccalendarwidgets/MonthViewWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractEvents(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 102
    return-void
.end method

.method protected getFxObjects()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    sget-object v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getFxObjects"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-static {v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetSceneObjectMap(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 57
    .local v0, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 58
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 59
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 60
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 61
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 63
    :cond_2
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 64
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_3
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 66
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    :cond_4
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    .line 68
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 70
    :cond_5
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 71
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 72
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 73
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 74
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 75
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 76
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 77
    return-void
.end method

.method protected hideLoadMessage()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onDestroy()V

    .line 26
    return-void
.end method

.method protected onGridItemClick(III)V
    .locals 9
    .parameter "row"
    .parameter "column"
    .parameter "index"

    .prologue
    const-wide/16 v1, -0x1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/htc/htccalendarwidgets/MonthViewWidget;->getSelectedMillisFor(II)J

    move-result-wide v3

    .line 42
    .local v3, millis:J
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DAY_EVENT_LIST:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    move-wide v5, v1

    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/CalendarConstants;->parseUri(Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;JJJ)Landroid/net/Uri;

    move-result-object v8

    .line 44
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .local v7, intent:Landroid/content/Intent;
    const/high16 v0, 0x3000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    .line 50
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item 1: row:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onPause()V

    .line 31
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onResume()V

    .line 36
    return-void
.end method

.method protected renewCursor(Landroid/text/format/Time;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 98
    return-void
.end method

.method protected showListView(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 90
    return-void
.end method

.method protected showLoadMessages()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected updateListView()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
