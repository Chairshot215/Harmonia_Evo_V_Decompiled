.class public Lcom/htc/taskmanager/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# static fields
.field public static final ALPHABETICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEMORY_USAGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/taskmanager/TaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mBasePkg:Ljava/lang/String;

.field public mFlags:I

.field public mPkg:Ljava/lang/String;

.field public mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalMemoryKb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/htc/taskmanager/TaskInfo$1;

    invoke-direct {v0}, Lcom/htc/taskmanager/TaskInfo$1;-><init>()V

    sput-object v0, Lcom/htc/taskmanager/TaskInfo;->ALPHABETICAL_COMPARATOR:Ljava/util/Comparator;

    .line 42
    new-instance v0, Lcom/htc/taskmanager/TaskInfo$2;

    invoke-direct {v0}, Lcom/htc/taskmanager/TaskInfo$2;-><init>()V

    sput-object v0, Lcom/htc/taskmanager/TaskInfo;->MEMORY_USAGE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/taskmanager/TaskInfo;->mServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 28
    instance-of v2, p1, Lcom/htc/taskmanager/TaskInfo;

    if-nez v2, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/htc/taskmanager/TaskInfo;

    .line 31
    .local v0, ti:Lcom/htc/taskmanager/TaskInfo;
    iget-object v2, p0, Lcom/htc/taskmanager/TaskInfo;->mAppName:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/taskmanager/TaskInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
