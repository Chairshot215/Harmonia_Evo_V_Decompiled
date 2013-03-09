.class Landroid/os/memory/RunningState$MergedItem;
.super Landroid/os/memory/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Landroid/os/memory/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/memory/RunningState$BaseItem;-><init>(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-object v4, v4, Landroid/os/memory/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/os/memory/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/os/memory/RunningState$BaseItem;->mBackground:Z

    iget-boolean v4, p0, Landroid/os/memory/RunningState$BaseItem;->mBackground:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget v4, v4, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    if-lez v4, :cond_3

    move v4, v5

    :goto_0
    iget-object v7, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int v1, v4, v7

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    if-eq v4, v2, :cond_1

    :cond_0
    iput v1, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumProcesses:I

    iput v2, p0, Landroid/os/memory/RunningState$MergedItem;->mLastNumServices:I

    if-eq v1, v5, :cond_4

    :cond_1
    :goto_1
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/memory/RunningState$ServiceItem;

    iget-wide v4, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-ltz v4, :cond_2

    iget-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    iget-wide v7, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    cmp-long v4, v4, v7

    if-gez v4, :cond_2

    iget-wide v4, v3, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    iput-wide v4, p0, Landroid/os/memory/RunningState$BaseItem;->mActiveSince:J

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_5
    return v6
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    iget-wide v2, v2, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-wide v3, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    iget-object v2, p0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/memory/RunningState$ProcessItem;

    iget-wide v5, v2, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/memory/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/os/memory/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_1
    return v7
.end method
