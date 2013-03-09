.class Lcom/htc/taskmanager/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/taskmanager/MainActivity$2;->this$0:Lcom/htc/taskmanager/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity$2;->this$0:Lcom/htc/taskmanager/MainActivity;

    #getter for: Lcom/htc/taskmanager/MainActivity;->mSortMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/htc/taskmanager/MainActivity;->access$000(Lcom/htc/taskmanager/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity$2;->this$0:Lcom/htc/taskmanager/MainActivity;

    #getter for: Lcom/htc/taskmanager/MainActivity;->mSortMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/htc/taskmanager/MainActivity;->access$000(Lcom/htc/taskmanager/MainActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity$2;->this$0:Lcom/htc/taskmanager/MainActivity;

    iget-object v0, v0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/taskmanager/TaskListAdapter;->setNotifyOnFirstFounded(Ljava/lang/Runnable;)V

    .line 167
    :cond_0
    return-void
.end method
