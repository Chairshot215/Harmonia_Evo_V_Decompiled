.class public Lcom/htc/taskmanager/TaskListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskManager/TaskListAdapter"


# instance fields
.field private mKillAllThread:Ljava/lang/Thread;

.field private mKillButtonDrawableId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMemoryMonitor:Lcom/htc/taskmanager/MemoryMonitor;

.field private mParentActivity:Lcom/htc/taskmanager/MainActivity;

.field private mProgressDrawableId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUITasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateTasksThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/htc/taskmanager/MainActivity;)V
    .locals 2
    .parameter "mainActivity"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x40

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUpdateTasksThread:Ljava/lang/Thread;

    .line 38
    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillAllThread:Ljava/lang/Thread;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->KILL_BUTTON:Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-static {p1, v0}, Lcom/htc/taskmanager/Customize;->getSkinnedResId(Lcom/htc/taskmanager/MainActivity;Lcom/htc/taskmanager/Customize$ResourceType;)I

    move-result v0

    iput v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillButtonDrawableId:I

    .line 45
    sget-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->SMALL_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-static {p1, v0}, Lcom/htc/taskmanager/Customize;->getSkinnedResId(Lcom/htc/taskmanager/MainActivity;Lcom/htc/taskmanager/Customize$ResourceType;)I

    move-result v0

    iput v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mProgressDrawableId:I

    .line 47
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    .line 48
    invoke-virtual {p1}, Lcom/htc/taskmanager/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    invoke-virtual {p1}, Lcom/htc/taskmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mResources:Landroid/content/res/Resources;

    .line 50
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    invoke-static {v0}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mMemoryMonitor:Lcom/htc/taskmanager/MemoryMonitor;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/htc/taskmanager/TaskListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/taskmanager/TaskListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/taskmanager/TaskListAdapter;->refreshUI()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/taskmanager/TaskListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUpdateTasksThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/taskmanager/TaskListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillAllThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/taskmanager/TaskListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/taskmanager/TaskListAdapter;)Lcom/htc/taskmanager/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    return-object v0
.end method

.method private refreshUI()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    new-instance v1, Lcom/htc/taskmanager/TaskListAdapter$4;

    invoke-direct {v1, p0}, Lcom/htc/taskmanager/TaskListAdapter$4;-><init>(Lcom/htc/taskmanager/TaskListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/htc/taskmanager/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 137
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const-wide/16 v10, 0x400

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 144
    if-nez p2, :cond_3

    .line 145
    iget-object v4, p0, Lcom/htc/taskmanager/TaskListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f03

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    new-instance v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;

    invoke-direct {v1, v6}, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;-><init>(Lcom/htc/taskmanager/TaskListAdapter$1;)V

    .line 148
    .local v1, tag:Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
    const/high16 v4, 0x7f09

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appIconView:Landroid/widget/ImageView;

    .line 149
    const v4, 0x7f090003

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appNameView:Landroid/widget/TextView;

    .line 150
    const v4, 0x7f090004

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsageView:Landroid/widget/TextView;

    .line 151
    const v4, 0x7f090001

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    .line 153
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    .line 154
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 156
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageButton;

    iget v5, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillButtonDrawableId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 164
    :goto_0
    const v4, 0x7f090005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsage:Landroid/widget/ProgressBar;

    .line 165
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsage:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 166
    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    const v4, 0x102000d

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    iget-object v6, p0, Lcom/htc/taskmanager/TaskListAdapter;->mResources:Landroid/content/res/Resources;

    iget v7, p0, Lcom/htc/taskmanager/TaskListAdapter;->mProgressDrawableId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x73

    invoke-direct {v5, v6, v7, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 171
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    new-instance v5, Lcom/htc/taskmanager/TaskListAdapter$3;

    invoke-direct {v5, p0}, Lcom/htc/taskmanager/TaskListAdapter$3;-><init>(Lcom/htc/taskmanager/TaskListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    invoke-virtual {p2, v8, v8}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 187
    iget-object v4, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUITasksList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/taskmanager/TaskInfo;

    .line 188
    .local v2, task:Lcom/htc/taskmanager/TaskInfo;
    iput-object v2, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->task:Lcom/htc/taskmanager/TaskInfo;

    .line 191
    iget-wide v4, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_4

    .line 192
    iget-object v4, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, totalMem:Ljava/lang/String;
    :goto_2
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 197
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appIconView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/taskmanager/TaskManager;->getTaskIcon(Lcom/htc/taskmanager/TaskInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appNameView:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/htc/taskmanager/TaskInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsageView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsage:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/htc/taskmanager/TaskListAdapter;->mMemoryMonitor:Lcom/htc/taskmanager/MemoryMonitor;

    invoke-virtual {v5}, Lcom/htc/taskmanager/MemoryMonitor;->getTotalMemoryKb()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 201
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appMemoryUsage:Landroid/widget/ProgressBar;

    iget-wide v5, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/taskmanager/TaskListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 204
    invoke-static {p2}, Lcom/htc/taskmanager/Customize;->customizeBottomListItem(Landroid/view/View;)V

    .line 206
    :cond_0
    return-object p2

    .line 158
    .end local v2           #task:Lcom/htc/taskmanager/TaskInfo;
    .end local v3           #totalMem:Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/htc/taskmanager/Customize;->alternateKillButton:Z

    if-nez v4, :cond_2

    .line 159
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    iget v5, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillButtonDrawableId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v4, v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->appKillButton:Landroid/view/View;

    check-cast v4, Landroid/widget/Button;

    iget v5, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillButtonDrawableId:I

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 181
    .end local v1           #tag:Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;

    .restart local v1       #tag:Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
    goto/16 :goto_1

    .line 194
    .restart local v2       #task:Lcom/htc/taskmanager/TaskInfo;
    :cond_4
    iget-object v4, p0, Lcom/htc/taskmanager/TaskListAdapter;->mParentActivity:Lcom/htc/taskmanager/MainActivity;

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #totalMem:Ljava/lang/String;
    goto :goto_2
.end method

.method public killAllTasks()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillAllThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Lcom/htc/taskmanager/TaskListAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/TaskListAdapter$2;-><init>(Lcom/htc/taskmanager/TaskListAdapter;)V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mKillAllThread:Ljava/lang/Thread;

    .line 121
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public killTask(Lcom/htc/taskmanager/TaskInfo;)Z
    .locals 3
    .parameter "task"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, position:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/taskmanager/TaskManager;->killTask(Lcom/htc/taskmanager/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/htc/taskmanager/TaskListAdapter;->refreshUI()V

    .line 71
    invoke-virtual {p0}, Lcom/htc/taskmanager/TaskListAdapter;->updateTasksList()Z

    .line 72
    const/4 v1, 0x1

    monitor-exit v2

    .line 77
    :goto_0
    return v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    :cond_1
    monitor-exit v2

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    .end local v0           #position:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNotifyOnFirstFounded(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "threadRoutine"

    .prologue
    .line 211
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/taskmanager/TaskManager;->setNotifyOnFirstFounded(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public updateTasksList()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUpdateTasksThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 82
    new-instance v0, Lcom/htc/taskmanager/TaskListAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/TaskListAdapter$1;-><init>(Lcom/htc/taskmanager/TaskListAdapter;)V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskListAdapter;->mUpdateTasksThread:Ljava/lang/Thread;

    .line 102
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    const/4 v1, 0x1

    .line 105
    .end local v0           #thread:Ljava/lang/Thread;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public viewDetails(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, task:Lcom/htc/taskmanager/TaskInfo;
    iget-object v3, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    monitor-enter v3

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/htc/taskmanager/TaskListAdapter;->mTasksList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/taskmanager/TaskInfo;

    move-object v1, v0

    .line 59
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->getInstance()Lcom/htc/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/taskmanager/TaskManager;->viewDetails(Lcom/htc/taskmanager/TaskInfo;)V

    .line 63
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
