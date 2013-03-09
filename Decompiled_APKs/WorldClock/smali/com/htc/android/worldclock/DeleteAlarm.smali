.class public Lcom/htc/android/worldclock/DeleteAlarm;
.super Lcom/htc/android/worldclock/AlarmClock;
.source "DeleteAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;
    }
.end annotation


# instance fields
.field protected mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteNumber:I

.field private mDeleteOffColor:I

.field private mDeleteOnColor:Landroid/content/res/ColorStateList;

.field private mDeleteString:Ljava/lang/String;

.field protected mDeletedIndex:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/DeleteAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->updateDeleteAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/DeleteAlarm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeleteAlarm;->handleDeleteCount(Z)V

    return-void
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 242
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeleteAlarm;->setResult(I)V

    .line 244
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->finish()V

    .line 246
    :cond_0
    return-void
.end method

.method private handleDeleteCount(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iget v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    .line 252
    iget v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void

    .line 257
    :cond_1
    iget v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    .line 258
    iget v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteOffColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateDeleteAlarm()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 134
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/android/worldclock/DeleteAlarm$4;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/DeleteAlarm$4;-><init>(Lcom/htc/android/worldclock/DeleteAlarm;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 157
    new-instance v1, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;-><init>(Lcom/htc/android/worldclock/DeleteAlarm;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    .line 158
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 268
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 269
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/AlarmClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    invoke-static {p0, p0}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/content/Context;Landroid/app/Activity;)V

    .line 271
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 37
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 38
    iput-boolean v11, p0, Lcom/htc/android/worldclock/AlarmClock;->mChildMode:Z

    .line 39
    invoke-virtual {p0, v11}, Lcom/htc/android/worldclock/DeleteAlarm;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 41
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/AlarmClock;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteOnColor:Landroid/content/res/ColorStateList;

    .line 44
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteOffColor:I

    .line 45
    iput v10, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteNumber:I

    .line 46
    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->setCommand(Landroid/app/Activity;)V

    .line 47
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    .line 48
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteString:Ljava/lang/String;

    .line 49
    iget-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object v7, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteButton:Landroid/widget/Button;

    iget v8, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteOffColor:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    const v7, 0x7f0b0006

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    .line 54
    .local v3, headerText:Lcom/htc/widget/HeaderBarText;
    const v7, 0x7f080042

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 55
    const v7, 0x7f0b0007

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 56
    .local v2, headerBarAddImage:Lcom/htc/widget/HeaderBarImage;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 58
    const v7, 0x7f0b001e

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 59
    .local v4, ll:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    iget-object v8, p0, Lcom/htc/android/worldclock/AlarmClock;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 62
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 63
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListView;->setFocusable(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 68
    .local v6, touchWidth:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 72
    .local v5, touchHeight:I
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_1()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, btn1:Landroid/widget/Button;
    new-instance v7, Lcom/htc/android/worldclock/DeleteAlarm$1;

    invoke-direct {v7, p0}, Lcom/htc/android/worldclock/DeleteAlarm$1;-><init>(Lcom/htc/android/worldclock/DeleteAlarm;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->id_cmd_bar_btn_2()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/DeleteAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 112
    .local v1, btn2:Landroid/widget/Button;
    new-instance v7, Lcom/htc/android/worldclock/DeleteAlarm$2;

    invoke-direct {v7, p0}, Lcom/htc/android/worldclock/DeleteAlarm$2;-><init>(Lcom/htc/android/worldclock/DeleteAlarm;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 235
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/AlarmClock;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 236
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 164
    invoke-super {p0}, Lcom/htc/android/worldclock/AlarmClock;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;->onDestroy()V

    .line 171
    iput-object v1, p0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeleteAdapter:Lcom/htc/android/worldclock/DeleteAlarm$DeleteAlarmTimeAdapter;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    return-void
.end method

.method protected onInitChild()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 124
    new-instance v0, Lcom/htc/android/worldclock/DeleteAlarm$3;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeleteAlarm$3;-><init>(Lcom/htc/android/worldclock/DeleteAlarm;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DeleteAlarm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 179
    invoke-super {p0}, Lcom/htc/android/worldclock/AlarmClock;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/DeleteAlarm;->checkStorage()V

    .line 184
    return-void
.end method
