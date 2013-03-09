.class Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AlbumAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/AlbumAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/widget/AlbumAdapterView;Lcom/htc/home/personalize/widget/AlbumAdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 843
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;-><init>(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 845
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget-boolean v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0, p0}, Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$SelectionNotifier;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    #calls: Lcom/htc/home/personalize/widget/AlbumAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->access$200(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V

    goto :goto_0
.end method
