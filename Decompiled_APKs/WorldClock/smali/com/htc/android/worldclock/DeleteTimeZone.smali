.class public Lcom/htc/android/worldclock/DeleteTimeZone;
.super Lcom/htc/android/worldclock/WorldClock;
.source "DeleteTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;
    }
.end annotation


# instance fields
.field protected mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteNumber:I

.field private mDeleteOffColor:I

.field private mDeleteOnColor:Landroid/content/res/ColorStateList;

.field private mDeleteString:Ljava/lang/String;

.field protected mDeletedIndex:[Z

.field private mMinHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/DeleteTimeZone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->updateDeleteZone()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/DeleteTimeZone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeleteTimeZone;->handleDeleteCount(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/DeleteTimeZone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mMinHeight:I

    return v0
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 280
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeleteTimeZone;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->finish()V

    .line 284
    :cond_0
    return-void
.end method

.method private currentSetting()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 274
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    .line 275
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    .line 276
    return-void
.end method

.method private handleDeleteCount(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 288
    if-eqz p1, :cond_1

    .line 289
    iget v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    .line 290
    iget v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    .line 296
    iget v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteOffColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateDeleteZone()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 77
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 178
    :goto_0
    return-void

    .line 82
    :cond_0
    iget v5, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    if-ne v5, v8, :cond_2

    .line 83
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    .line 90
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 91
    iget-object v5, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    aput-boolean v7, v5, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 84
    .end local v2           #i:I
    :cond_2
    iget v5, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 85
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 86
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 97
    .local v4, touchWidth:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 101
    .local v3, touchHeight:I
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/DeleteTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, btn1:Landroid/widget/Button;
    new-instance v5, Lcom/htc/android/worldclock/DeleteTimeZone$2;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/DeleteTimeZone$2;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_2()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/DeleteTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 147
    .local v1, btn2:Landroid/widget/Button;
    new-instance v5, Lcom/htc/android/worldclock/DeleteTimeZone$3;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/DeleteTimeZone$3;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v5, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    .line 163
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 165
    iget-object v5, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/htc/android/worldclock/DeleteTimeZone$4;

    invoke-direct {v6, p0}, Lcom/htc/android/worldclock/DeleteTimeZone$4;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected needRegister()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 306
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 307
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    invoke-static {p0, p0}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/content/Context;Landroid/app/Activity;)V

    .line 309
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 41
    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/DeleteTimeZone;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    iput-boolean v3, p0, Lcom/htc/android/worldclock/WorldClock;->mChildMode:Z

    .line 44
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mMinHeight:I

    .line 47
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    .line 48
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteOffColor:I

    .line 50
    iput v4, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteNumber:I

    .line 51
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->setCommand(Landroid/app/Activity;)V

    .line 52
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeleteTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteString:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteButton:Landroid/widget/Button;

    iget v2, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteOffColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 59
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DeleteTimeZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, ll:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 238
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 239
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 240
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 255
    invoke-super {p0}, Lcom/htc/android/worldclock/WorldClock;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->onDestroy()V

    .line 263
    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    return-void
.end method

.method protected onInitChild()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 67
    new-instance v0, Lcom/htc/android/worldclock/DeleteTimeZone$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeleteTimeZone$1;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeleteTimeZone;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 246
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 247
    invoke-super {p0}, Lcom/htc/android/worldclock/WorldClock;->onResume()V

    .line 248
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->checkStorage()V

    .line 249
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeleteTimeZone;->currentSetting()V

    .line 250
    return-void
.end method
