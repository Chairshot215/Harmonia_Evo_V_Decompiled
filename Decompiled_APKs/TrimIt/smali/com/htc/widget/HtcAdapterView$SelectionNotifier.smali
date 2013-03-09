.class Lcom/htc/widget/HtcAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "HtcAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    .local p0, this:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAdapterView;Lcom/htc/widget/HtcAdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 982
    .local p0, this:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 984
    .local p0, this:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;,"Lcom/htc/widget/HtcAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;->this$0:Lcom/htc/widget/HtcAdapterView;

    #calls: Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/widget/HtcAdapterView;->access$200(Lcom/htc/widget/HtcAdapterView;)V

    goto :goto_0
.end method
