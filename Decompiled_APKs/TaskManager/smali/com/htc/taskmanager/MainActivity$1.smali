.class Lcom/htc/taskmanager/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 122
    iput-object p1, p0, Lcom/htc/taskmanager/MainActivity$1;->this$0:Lcom/htc/taskmanager/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/taskmanager/MainActivity$1;->this$0:Lcom/htc/taskmanager/MainActivity;

    iget-object v0, v0, Lcom/htc/taskmanager/MainActivity;->mAdapter:Lcom/htc/taskmanager/TaskListAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/taskmanager/TaskListAdapter;->viewDetails(I)V

    .line 126
    return-void
.end method
