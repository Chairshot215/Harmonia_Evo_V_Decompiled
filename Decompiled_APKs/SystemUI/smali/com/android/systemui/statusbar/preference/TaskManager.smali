.class public Lcom/android/systemui/statusbar/preference/TaskManager;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "TaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sTotalMemory:J


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mFreeMemory:J

.field private mHandler:Landroid/os/Handler;

.field private mUsedMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/preference/TaskManager;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/statusbar/preference/TaskManager;->sTotalMemory:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    iput-wide v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    iput-wide v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    new-instance v0, Lcom/android/systemui/statusbar/preference/TaskManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$1;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/preference/TaskManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$2;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/statusbar/preference/TaskManager;->sTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/statusbar/preference/TaskManager;->sTotalMemory:J

    return-wide p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/preference/TaskManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/preference/TaskManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->readTotalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/TaskManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->readFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getActivityManagerInstance()Landroid/app/ActivityManager;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setVisibility(I)V

    return-void
.end method

.method private readFreeMemory()J
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->getActivityManagerInstance()Landroid/app/ActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    goto :goto_0
.end method

.method private readTotalMemory()J
    .locals 12

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->getActivityManagerInstance()Landroid/app/ActivityManager;

    move-result-object v10

    if-nez v10, :cond_0

    :goto_0
    return-wide v8

    :cond_0
    const-wide/16 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "cat /proc/meminfo"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v10, "MemTotal"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    add-int/lit8 v10, v10, -0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    int-to-long v5, v10

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x400

    mul-long/2addr v8, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    sget-wide v4, Lcom/android/systemui/statusbar/preference/TaskManager;->sTotalMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/TaskManager;->updateResources()V

    return-void
.end method

.method public updateResources()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/statusbar/preference/TaskManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/preference/TaskManager$3;-><init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method
