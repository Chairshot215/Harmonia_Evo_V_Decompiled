.class Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CubeTLListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
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
    .line 419
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 422
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "cube_trans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->addPlaybackCompleteCount()V
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->access$200(Lcom/htc/photowidget3d/grid/M10Operator;)V

    .line 426
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 419
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
