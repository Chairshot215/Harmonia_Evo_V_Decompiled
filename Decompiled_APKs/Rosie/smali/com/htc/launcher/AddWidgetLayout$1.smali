.class Lcom/htc/launcher/AddWidgetLayout$1;
.super Ljava/lang/Object;
.source "AddWidgetLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/AddWidgetLayout;->updateContentView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/AddWidgetLayout;


# direct methods
.method constructor <init>(Lcom/htc/launcher/AddWidgetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout$1;->this$0:Lcom/htc/launcher/AddWidgetLayout;

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
    .line 107
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$1;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$100(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$1;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$100(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
