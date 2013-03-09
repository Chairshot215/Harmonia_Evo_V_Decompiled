.class public Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;
.super Landroid/app/Activity;
.source "ManageCalendarsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_INDEX_COLOR:I = 0x2

.field public static final CALENDAR_INDEX_DISPLAY_NAME:I = 0x1

.field public static final CALENDAR_INDEX_ID:I = 0x0

.field public static final CALENDAR_INDEX_OWNER_ACCOUNT:I = 0x7

.field public static final CALENDAR_INDEX_SELECTED:I = 0x3

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT:I = 0x5

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT_TYPE:I = 0x6

.field public static final CALENDAR_INDEX_SYNC_EVENTS:I = 0x4

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ManageCalendars"


# instance fields
.field private AllCalendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field private AllCalendarLayout:Lcom/htc/widget/HtcListItem;

.field private context:Landroid/content/Context;

.field private isAllCalendarsChecked:Ljava/lang/String;

.field private mCancelBtn:Lcom/htc/widget/HtcFooterButton;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mFooter:Lcom/htc/widget/HtcFooter;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarShort;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mIntent:Landroid/content/Intent;

.field private mIsAllChecked:Z

.field private mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

.field private mOkBtn:Lcom/htc/widget/HtcFooterButton;

.field private mQueryHandler:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUseBackKey:Z

.field msg:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 83
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mUseBackKey:Z

    .line 91
    const-string v0, "isAllCalendarsChecked"

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->isAllCalendarsChecked:Ljava/lang/String;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/htccalendarwidgets/MultiCalendarsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/widget/HtcListItemCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private createAllCalendarLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0a0003

    const/4 v8, 0x0

    .line 323
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 324
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem;

    iput-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    .line 325
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v7, 0x7f0c0007

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 327
    const-wide/16 v0, 0x0

    .line 328
    .local v0, all_calendarTag:J
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v7, 0x7f0c0005

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 329
    .local v2, icon:Lcom/htc/widget/HtcListItemColorIcon;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v7, 0x7f0c0006

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 331
    .local v5, textView:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f020005

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 333
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 334
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 335
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setTag(Ljava/lang/Object;)V

    .line 337
    new-instance v4, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    const-string v6, "isHeader"

    invoke-direct {v4, v6}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 338
    .local v4, ssAllCalendar:Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;
    invoke-virtual {v4, v8}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setId(I)V

    .line 339
    invoke-virtual {p0, v9}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setName(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4, v10}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setType(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 342
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-static {v6, v8}, Lcom/htc/view/ViewWrapper;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    .line 343
    return-void
.end method

.method private setupFooter()V
    .locals 2

    .prologue
    .line 309
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mFooter:Lcom/htc/widget/HtcFooter;

    .line 310
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    .line 311
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c013c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 312
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 315
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c013d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mFooter:Lcom/htc/widget/HtcFooter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mFooter:Lcom/htc/widget/HtcFooter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method private setupHeaderBar()V
    .locals 2

    .prologue
    .line 301
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarShort;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarShort;

    .line 302
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 303
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 304
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarShort;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarShort;->addCenterView(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method private startQueryCalendars()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mQueryHandler:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=1"

    const-string v7, "displayOrder,_id,calendar_displayName,account_name"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getSelectedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    if-ne v2, p1, :cond_1

    .line 263
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    .line 268
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getSelectedCalendars()Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 270
    const-string v2, "selected_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 271
    const-string v2, "ManageCalendars"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->setResult(ILandroid/content/Intent;)V

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->finish()V

    .line 276
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->context:Landroid/content/Context;

    const-string v2, "common_app_bkg"

    const v3, 0x20806b7

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 294
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->requestWindowFeature(I)Z

    .line 114
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->context:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;-><init>(Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mQueryHandler:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity$QueryHandler;

    .line 119
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->createAllCalendarLayout()V

    .line 121
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    .line 122
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->addHeaderView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    invoke-virtual {v0, p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setParentActivity(Landroid/app/Activity;)V

    .line 125
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    invoke-virtual {v0, p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 126
    invoke-static {}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isEnableTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    const v1, -0xd0d0e

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->setBackgroundColor(I)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->setupHeaderBar()V

    .line 132
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->setupFooter()V

    .line 134
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mSelectedList:Ljava/util/ArrayList;

    .line 137
    const-string v0, "ManageCalendars"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent from caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "ManageCalendars"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icicle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->startQueryCalendars()V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 168
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 172
    if-nez p2, :cond_0

    .line 173
    const-string v5, "ManageCalendars"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view is null at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 178
    .local v4, obj:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 179
    const-string v5, "ManageCalendars"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " no tag object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 184
    check-cast v5, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->getId()I

    move-result v5

    int-to-long v0, v5

    .line 186
    .local v0, calendar_id:J
    const-string v2, ""

    .local v2, calendar_name:Ljava/lang/String;
    move-object v5, v4

    .line 187
    check-cast v5, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, ""

    .line 190
    .local v3, calendar_type:Ljava/lang/String;
    check-cast v4, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->getType()Ljava/lang/String;

    move-result-object v3

    .line 192
    const-string v5, "ManageCalendars"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick calendar_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    .line 196
    iget-boolean v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    .line 197
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget-boolean v8, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-virtual {v5, v8}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->checkAllCalendars(Z)V

    .line 198
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->notifyDataSetChanged()V

    .line 199
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->notifyDataSetChanged()V

    .line 207
    :goto_2
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->AllCalendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v8, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 208
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->isAllCalendarsChecked:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/htc/htccalendarwidgets/CalendarConstants;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getSelectedCalendars()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_5

    .line 211
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    move v5, v7

    .line 196
    goto :goto_1

    .line 201
    :cond_3
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v5, p2}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->setIntoCalendarDB(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 202
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    goto :goto_2

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mListView:Lcom/htc/htccalendarwidgets/MultiCalendarsListView;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mIsAllChecked:Z

    goto :goto_2

    .line 213
    :cond_5
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 152
    return-void
.end method
