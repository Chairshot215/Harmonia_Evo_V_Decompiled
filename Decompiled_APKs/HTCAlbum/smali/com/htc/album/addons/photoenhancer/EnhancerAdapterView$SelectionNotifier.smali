.class Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "EnhancerAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;->this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 824
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;-><init>(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 826
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;->this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;->this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;

    #calls: Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->access$200(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V

    goto :goto_0
.end method
