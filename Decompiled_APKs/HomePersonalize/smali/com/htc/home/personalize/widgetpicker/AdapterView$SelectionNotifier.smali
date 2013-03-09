.class Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/widgetpicker/AdapterView;Lcom/htc/home/personalize/widgetpicker/AdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;-><init>(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 827
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget-boolean v0, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0, p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    #calls: Lcom/htc/home/personalize/widgetpicker/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->access$200(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V

    goto :goto_0
.end method
