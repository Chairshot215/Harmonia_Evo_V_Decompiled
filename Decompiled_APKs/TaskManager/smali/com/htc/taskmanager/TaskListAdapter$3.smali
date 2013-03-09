.class Lcom/htc/taskmanager/TaskListAdapter$3;
.super Ljava/lang/Object;
.source "TaskListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/TaskListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/TaskListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/TaskListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/taskmanager/TaskListAdapter$3;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;

    .line 175
    .local v0, tag:Lcom/htc/taskmanager/TaskListAdapter$ViewTag;
    iget-object v1, p0, Lcom/htc/taskmanager/TaskListAdapter$3;->this$0:Lcom/htc/taskmanager/TaskListAdapter;

    iget-object v2, v0, Lcom/htc/taskmanager/TaskListAdapter$ViewTag;->task:Lcom/htc/taskmanager/TaskInfo;

    invoke-virtual {v1, v2}, Lcom/htc/taskmanager/TaskListAdapter;->killTask(Lcom/htc/taskmanager/TaskInfo;)Z

    .line 176
    return-void
.end method
