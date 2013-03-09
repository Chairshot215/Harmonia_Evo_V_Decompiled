.class public Lcom/htc/android/worldclock/RearrangeTimeZone;
.super Lcom/htc/android/worldclock/WorldClock;
.source "RearrangeTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;
    }
.end annotation


# instance fields
.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteNumber:I

.field private mDeleteOffColor:I

.field private mDeleteOnColor:Landroid/content/res/ColorStateList;

.field private mDeleteString:Ljava/lang/String;

.field protected mDeletedIndex:[Z

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field public mListSize:I

.field protected mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

.field private mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;-><init>()V

    .line 397
    new-instance v0, Lcom/htc/android/worldclock/RearrangeTimeZone$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$5;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 404
    new-instance v0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$6;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 442
    new-instance v0, Lcom/htc/android/worldclock/RearrangeTimeZone$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$7;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->updateRearrangeZone()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->checkStorage()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/RearrangeTimeZone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->handleDeleteCount(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/RearrangeTimeZone;)Lcom/htc/widget/HtcReorderListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 391
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->setResult(I)V

    .line 393
    invoke-virtual {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->finish()V

    .line 395
    :cond_0
    return-void
.end method

.method private currentSetting()V
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 384
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 385
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    .line 386
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    .line 387
    return-void
.end method

.method private handleDeleteCount(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 329
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteCount mDeleteNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    .line 334
    iget v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    const-string v0, "isChecked mDeleteNumber == 1"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_1
    iget v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    .line 339
    iget v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    if-nez v0, :cond_0

    .line 340
    const-string v0, "notChecked mDeleteNumber == 0"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updateRearrangeZone()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 96
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    iget v3, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    if-ne v3, v6, :cond_3

    .line 102
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    .line 110
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aput-boolean v5, v3, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    if-ne v3, v4, :cond_2

    .line 104
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 114
    .restart local v2       #i:I
    :cond_4
    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mListSize:I

    .line 116
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/RearrangeTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    .local v0, btn1:Landroid/widget/Button;
    new-instance v3, Lcom/htc/android/worldclock/RearrangeTimeZone$2;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$2;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_2()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/RearrangeTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 174
    .local v1, btn2:Landroid/widget/Button;
    new-instance v3, Lcom/htc/android/worldclock/RearrangeTimeZone$3;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$3;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v3, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    iget-object v4, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    .line 184
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    .line 186
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    new-instance v4, Lcom/htc/android/worldclock/RearrangeTimeZone$4;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$4;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 200
    iget v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mListSize:I

    if-le v3, v6, :cond_0

    .line 201
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 202
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 203
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected needRegister()Z
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 451
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 452
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    invoke-static {p0, p0}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/content/Context;Landroid/app/Activity;)V

    .line 454
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 457
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 57
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->removeTitle(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 59
    iput-boolean v4, p0, Lcom/htc/android/worldclock/WorldClock;->mChildMode:Z

    .line 60
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->setContentView(I)V

    .line 63
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 64
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 67
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->setCommand(Landroid/app/Activity;)V

    .line 69
    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcReorderListView;

    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    .line 70
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 72
    iput v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteNumber:I

    .line 73
    invoke-virtual {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteOffColor:I

    .line 75
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/RearrangeTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteString:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 350
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 351
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 352
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 367
    invoke-super {p0}, Lcom/htc/android/worldclock/WorldClock;->onDestroy()V

    .line 368
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->onDestroy()V

    .line 374
    iput-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeAdapter:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    return-void
.end method

.method protected onInitChild()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 86
    new-instance v0, Lcom/htc/android/worldclock/RearrangeTimeZone$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/RearrangeTimeZone$1;-><init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 359
    invoke-super {p0}, Lcom/htc/android/worldclock/WorldClock;->onResume()V

    .line 360
    invoke-direct {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->checkStorage()V

    .line 361
    invoke-direct {p0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->currentSetting()V

    .line 362
    return-void
.end method
