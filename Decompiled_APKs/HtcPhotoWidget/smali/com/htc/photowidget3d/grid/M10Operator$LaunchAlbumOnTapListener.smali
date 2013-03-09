.class Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAlbumOnTapListener"
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
    .line 667
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->onLaunchAlbumPicker()V
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->access$600(Lcom/htc/photowidget3d/grid/M10Operator;)V

    .line 673
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$LaunchAlbumOnTapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
