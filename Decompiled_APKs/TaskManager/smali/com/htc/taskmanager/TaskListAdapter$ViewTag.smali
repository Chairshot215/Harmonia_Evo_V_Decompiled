.class Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
.super Ljava/lang/Object;
.source "TaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/TaskListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTag"
.end annotation


# instance fields
.field public appIconView:Landroid/widget/ImageView;

.field public appKillButton:Landroid/view/View;

.field public appMemoryUsage:Landroid/widget/ProgressBar;

.field public appMemoryUsageView:Landroid/widget/TextView;

.field public appNameView:Landroid/widget/TextView;

.field public task:Lcom/htc/taskmanager/TaskInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/taskmanager/TaskListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;-><init>()V

    return-void
.end method
