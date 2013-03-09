.class Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ListViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/widget/ListViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/widget/ListViewManager;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/widget/ListViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 385
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    sparse-switch v2, :sswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 389
    :sswitch_0
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->selectedIndex:I

    iput v3, v2, Lcom/htc/photowidget3d/widget/ListViewManager;->mItemIndex:I

    .line 390
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v2, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnListViewChangeListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;

    .line 391
    .local v1, listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;
    if-eqz v1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v2, v2, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    iget-object v3, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget v3, v3, Lcom/htc/photowidget3d/widget/ListViewManager;->mItemIndex:I

    iget v4, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->firstVisibleIndex:I

    iget v5, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->lastVisibleIndex:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;->onSelectedIndexChanged(Lcom/htc/photowidget3d/widget/FusionListView;III)V

    goto :goto_0

    .line 400
    .end local v1           #listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;
    :sswitch_1
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    #getter for: Lcom/htc/photowidget3d/widget/ListViewManager;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->access$300(Lcom/htc/photowidget3d/widget/ListViewManager;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    .line 401
    .local v0, host:Lcom/htc/android/rosie/widget/Widget$Host;
    if-eqz v0, :cond_0

    .line 402
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->surpressSlide(Z)V

    goto :goto_0

    .line 407
    .end local v0           #host:Lcom/htc/android/rosie/widget/Widget$Host;
    :sswitch_2
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    #getter for: Lcom/htc/photowidget3d/widget/ListViewManager;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v2}, Lcom/htc/photowidget3d/widget/ListViewManager;->access$300(Lcom/htc/photowidget3d/widget/ListViewManager;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    .line 408
    .restart local v0       #host:Lcom/htc/android/rosie/widget/Widget$Host;
    if-eqz v0, :cond_0

    .line 409
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->surpressSlide(Z)V

    goto :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ListViewMessageHandler;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
