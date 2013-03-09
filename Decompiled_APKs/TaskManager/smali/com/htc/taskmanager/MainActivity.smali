.class public Lcom/htc/taskmanager/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/taskmanager/MainActivity$3;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

.field protected mHtcListView:Lcom/htc/widget/HtcListView;

.field private mIsNeedInvalidateMenu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSortMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mIsNeedInvalidateMenu:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/taskmanager/MainActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mSortMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 46
    invoke-static {p0}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/taskmanager/MemoryMonitor;->scheduleMemoryCheck()V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/htc/taskmanager/Customize;->needToRemoveAndroidTitle()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    invoke-virtual {p0, v12}, Lcom/htc/taskmanager/MainActivity;->requestWindowFeature(I)Z

    .line 53
    :cond_0
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->setContentView(I)V

    .line 57
    const v9, 0x7f09000c

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 58
    .local v2, bulletMemUsed:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/htc/taskmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 59
    .local v5, res:Landroid/content/res/Resources;
    sget-object v9, Lcom/htc/taskmanager/Customize$ResourceType;->BULLET:Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-static {p0, v9}, Lcom/htc/taskmanager/Customize;->getSkinnedResId(Lcom/htc/taskmanager/MainActivity;Lcom/htc/taskmanager/Customize$ResourceType;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const v9, 0x7f090012

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 65
    .local v6, separator:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 67
    instance-of v9, v6, Landroid/widget/TextView;

    if-nez v9, :cond_1

    .line 69
    const v9, 0x2020010

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 70
    .local v7, text:Landroid/widget/TextView;
    if-eqz v7, :cond_1

    const v9, 0x7f060009

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 74
    .end local v7           #text:Landroid/widget/TextView;
    :cond_1
    invoke-static {p0}, Lcom/htc/taskmanager/Customize;->configureMainActivity(Lcom/htc/taskmanager/MainActivity;)V

    .line 76
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getTitleTextId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 77
    .local v8, title:Landroid/widget/TextView;
    if-eqz v8, :cond_2

    const/high16 v9, 0x7f06

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :cond_2
    sget-boolean v9, Lcom/htc/taskmanager/Customize;->bodyHasRoundCorners:Z

    if-eqz v9, :cond_3

    .line 83
    const v9, 0x7f090006

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, body:Landroid/view/View;
    invoke-virtual {v1, v12, v12}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 87
    .end local v1           #body:Landroid/view/View;
    :cond_3
    const v9, 0x7f090013

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListView;

    iput-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    .line 89
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->clearAnimation()V

    .line 90
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 91
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->clearDisappearingChildren()V

    .line 93
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->buildDrawingCache(Z)V

    .line 94
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->destroyDrawingCache()V

    .line 95
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setPersistentDrawingCache(I)V

    .line 96
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 97
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setWillNotCacheDrawing(Z)V

    .line 98
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 99
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 101
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->clearTextFilter()V

    .line 102
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 104
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 105
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 106
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setScrollbarFadingEnabled(Z)V

    .line 108
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setWillNotDraw(Z)V

    .line 109
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setTransparentWrap(Z)V

    .line 111
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setHapticFeedbackEnabled(Z)V

    .line 113
    invoke-static {p0}, Lcom/htc/taskmanager/TaskManager;->init(Landroid/content/Context;)Z

    .line 114
    new-instance v9, Lcom/htc/taskmanager/TaskListAdapter;

    invoke-direct {v9, p0}, Lcom/htc/taskmanager/TaskListAdapter;-><init>(Lcom/htc/taskmanager/MainActivity;)V

    iput-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    .line 115
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v10, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 118
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 120
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListView;->setBottomRound(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListView;->setFooterDividersEnabled(Z)V

    .line 122
    iget-object v9, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    new-instance v10, Lcom/htc/taskmanager/MainActivity$1;

    invoke-direct {v10, p0}, Lcom/htc/taskmanager/MainActivity$1;-><init>(Lcom/htc/taskmanager/MainActivity;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 129
    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    sget-object v9, Lcom/htc/taskmanager/Customize$ResourceType;->LARGE_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-static {p0, v9}, Lcom/htc/taskmanager/Customize;->getSkinnedResId(Lcom/htc/taskmanager/MainActivity;Lcom/htc/taskmanager/Customize$ResourceType;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x73

    invoke-direct {v4, v9, v10, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 133
    .local v4, progressFull:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f090010

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/taskmanager/ReflectionProgressBar;

    .line 134
    .local v0, b:Lcom/htc/taskmanager/ReflectionProgressBar;
    const v9, 0x7f090011

    invoke-virtual {p0, v9}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/htc/taskmanager/ReflectionProgressBar;->mReflection:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v0}, Lcom/htc/taskmanager/ReflectionProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 136
    .local v3, d:Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x102000d

    invoke-virtual {v3, v9, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 137
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x7f08

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    const v1, 0x7f090014

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    .local v0, item:Landroid/view/MenuItem;
    iput-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mSortMenuItem:Landroid/view/MenuItem;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    sget-object v1, Lcom/htc/taskmanager/MainActivity$3;->$SwitchMap$com$htc$taskmanager$TaskManager$SortOrder:[I

    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskManager;->getSortOrder()Lcom/htc/taskmanager/TaskManager$SortOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskManager$SortOrder;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    :goto_2
    and-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 249
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/taskmanager/Customize;->processMenuCreate(Lcom/htc/taskmanager/MainActivity;Landroid/view/Menu;)V

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 238
    :pswitch_0
    const v1, 0x7f06000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 239
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getSizeSortIconId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 242
    :pswitch_1
    const v1, 0x7f06000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 243
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getAlphaBetSortIconId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 246
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 198
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/htc/taskmanager/MainActivity;->moveTaskToBack(Z)Z

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKillAllClick()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v0}, Lcom/htc/taskmanager/TaskListAdapter;->killAllTasks()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/htc/taskmanager/MainActivity;->updateSummaryView()V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    const/4 v1, 0x0

    .line 303
    :goto_0
    return v1

    .line 284
    :pswitch_0
    sget-object v1, Lcom/htc/taskmanager/MainActivity$3;->$SwitchMap$com$htc$taskmanager$TaskManager$SortOrder:[I

    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/taskmanager/TaskManager;->getSortOrder()Lcom/htc/taskmanager/TaskManager$SortOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/taskmanager/TaskManager$SortOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 292
    :goto_1
    invoke-static {p0}, Lcom/htc/taskmanager/Customize;->invalidateMenu(Lcom/htc/taskmanager/MainActivity;)V

    .line 293
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v1}, Lcom/htc/taskmanager/TaskListAdapter;->updateTasksList()Z

    .line 303
    :cond_0
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_BY_MEMORY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    invoke-virtual {v1, v2}, Lcom/htc/taskmanager/TaskManager;->setSortOrder(Lcom/htc/taskmanager/TaskManager$SortOrder;)V

    goto :goto_1

    .line 289
    :pswitch_2
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v1

    sget-object v2, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_ALPHABETICALLY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    invoke-virtual {v1, v2}, Lcom/htc/taskmanager/TaskManager;->setSortOrder(Lcom/htc/taskmanager/TaskManager$SortOrder;)V

    goto :goto_1

    .line 297
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 298
    .local v0, applicationSettingsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/taskmanager/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 282
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/taskmanager/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mIsNeedInvalidateMenu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {p0}, Lcom/htc/taskmanager/Customize;->invalidateMenu(Lcom/htc/taskmanager/MainActivity;)V

    .line 260
    :cond_0
    const v1, 0x7f090014

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 262
    sget-object v1, Lcom/htc/taskmanager/MainActivity$3;->$SwitchMap$com$htc$taskmanager$TaskManager$SortOrder:[I

    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskManager;->getSortOrder()Lcom/htc/taskmanager/TaskManager$SortOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskManager$SortOrder;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v4}, Lcom/htc/taskmanager/TaskListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    :goto_2
    and-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 274
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/taskmanager/Customize;->processMenuPrepare(Lcom/htc/taskmanager/MainActivity;Landroid/view/Menu;)V

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 264
    :pswitch_0
    const v1, 0x7f06000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 265
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getSizeSortIconId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 268
    :pswitch_1
    const v1, 0x7f06000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 269
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getAlphaBetSortIconId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 272
    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRefreshClick()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v0}, Lcom/htc/taskmanager/TaskListAdapter;->updateTasksList()Z

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/htc/taskmanager/MainActivity;->updateSummaryView()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    new-instance v2, Lcom/htc/taskmanager/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/taskmanager/MainActivity$2;-><init>(Lcom/htc/taskmanager/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/taskmanager/TaskListAdapter;->setNotifyOnFirstFounded(Ljava/lang/Runnable;)V

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mHtcListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v1}, Lcom/htc/taskmanager/TaskListAdapter;->updateTasksList()Z

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/htc/taskmanager/MainActivity;->updateSummaryView()V

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, screenFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/htc/taskmanager/ScreenBroadcastReceiver;

    invoke-direct {v1}, Lcom/htc/taskmanager/ScreenBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iget-object v1, p0, Lcom/htc/taskmanager/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/taskmanager/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method public updateSummaryView()V
    .locals 8

    .prologue
    const/high16 v7, 0x4480

    .line 207
    invoke-static {p0}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v1

    .line 208
    .local v1, monitor:Lcom/htc/taskmanager/MemoryMonitor;
    invoke-virtual {v1}, Lcom/htc/taskmanager/MemoryMonitor;->checkMemory()V

    .line 210
    invoke-virtual {v1}, Lcom/htc/taskmanager/MemoryMonitor;->getFreeMemoryKb()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 211
    .local v0, freeMemory:I
    invoke-virtual {v1}, Lcom/htc/taskmanager/MemoryMonitor;->getTotalMemoryKb()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 212
    .local v2, totalMemory:I
    sub-int v4, v2, v0

    .line 214
    .local v4, usedMemory:I
    invoke-static {p0, v2}, Lcom/htc/taskmanager/Customize;->updateTotalMemory(Lcom/htc/taskmanager/MainActivity;I)V

    .line 215
    invoke-static {p0, v4}, Lcom/htc/taskmanager/Customize;->updateUsedMemory(Lcom/htc/taskmanager/MainActivity;I)V

    .line 216
    invoke-static {p0, v0}, Lcom/htc/taskmanager/Customize;->updateFreeMemory(Lcom/htc/taskmanager/MainActivity;I)V

    .line 218
    const v5, 0x7f090010

    invoke-virtual {p0, v5}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 220
    .local v3, usage:Landroid/widget/ProgressBar;
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->destroyDrawingCache()V

    .line 221
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 222
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 224
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->buildDrawingCache()V

    .line 226
    iget-object v5, p0, Lcom/htc/taskmanager/MainActivity;->mIsNeedInvalidateMenu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    return-void
.end method
