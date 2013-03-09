.class Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ListViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/widget/ListViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorViewClickHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
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
    .line 417
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/widget/ListViewManager;Lcom/htc/photowidget3d/widget/ListViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;-><init>(Lcom/htc/photowidget3d/widget/ListViewManager;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v1, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 439
    :pswitch_1
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v0, v1, Lcom/htc/photowidget3d/widget/ListViewManager;->mOnErrorClickListener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;

    .line 440
    .local v0, listener:Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;->this$0:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget-object v1, v1, Lcom/htc/photowidget3d/widget/ListViewManager;->mListView:Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-interface {v0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;->onErrorClick(Lcom/htc/photowidget3d/widget/FusionListView;)V

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/widget/ListViewManager$ErrorViewClickHandler;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
