.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 988
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x0

    .line 991
    if-nez p2, :cond_1

    .line 993
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1300()Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1300()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v2

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1300()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    .line 996
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 997
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    instance-of v2, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v2, :cond_0

    .line 998
    check-cast v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/DummyResource;->loadNextPage()V

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentView:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$600(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v2

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1400()Lcom/htc/widget/HtcGridView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1400()Lcom/htc/widget/HtcGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v2

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1400()Lcom/htc/widget/HtcGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 1005
    .restart local v0       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_1
    instance-of v1, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v1, :cond_1

    .line 1006
    check-cast v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/DummyResource;->loadNextPage()V

    .line 1010
    :cond_1
    return-void

    .line 996
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v2

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1300()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$8;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v1

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1400()Lcom/htc/widget/HtcGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    goto :goto_1
.end method
