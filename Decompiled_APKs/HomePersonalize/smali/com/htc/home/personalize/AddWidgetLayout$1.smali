.class Lcom/htc/home/personalize/AddWidgetLayout$1;
.super Ljava/lang/Object;
.source "AddWidgetLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/AddWidgetLayout;->updateContentView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/AddWidgetLayout;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/AddWidgetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout$1;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 105
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$1;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$100(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$1;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$100(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
