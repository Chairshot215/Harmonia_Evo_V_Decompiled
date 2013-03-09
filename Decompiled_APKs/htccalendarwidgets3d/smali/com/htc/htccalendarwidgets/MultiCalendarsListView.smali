.class public Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
.super Lcom/htc/widget/HtcListView;
.source "MultiCalendarsListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCalendarsListView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mCalendarByAccountAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

.field public mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    const v1, 0x7f030001

    invoke-direct {v0, p1, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    .line 36
    new-instance v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-direct {v0, p1, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;-><init>(Landroid/content/Context;Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

    .line 38
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080700

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setTopBorderHeight(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public setCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCursor:Landroid/database/Cursor;

    .line 48
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->calculateCalendars(Landroid/database/Cursor;)V

    .line 49
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 50
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->setParentActivity(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mActivity:Landroid/app/Activity;

    .line 44
    return-void
.end method
