.class Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowToastOnTapListener"
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
.field final synthetic this$0:Lcom/htc/photowidget3d/grid/M10Operator;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mPhotoErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, strErrorMsg:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v1, v1, Lcom/htc/photowidget3d/grid/M10Operator;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    new-instance v2, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener$1;-><init>(Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 695
    .end local v0           #strErrorMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 676
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$ShowToastOnTapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
