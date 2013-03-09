.class Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AbstractAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/table/AbstractAdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/view/table/AbstractAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/table/AbstractAdapterView;Lcom/htc/view/table/AbstractAdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 798
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;-><init>(Lcom/htc/view/table/AbstractAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 800
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0, p0}, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    #calls: Lcom/htc/view/table/AbstractAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/view/table/AbstractAdapterView;->access$200(Lcom/htc/view/table/AbstractAdapterView;)V

    goto :goto_0
.end method
