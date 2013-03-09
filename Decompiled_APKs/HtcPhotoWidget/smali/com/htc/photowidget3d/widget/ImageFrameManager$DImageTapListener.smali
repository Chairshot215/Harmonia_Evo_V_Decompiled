.class Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ImageFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/widget/ImageFrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DImageTapListener"
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
.field final synthetic this$0:Lcom/htc/photowidget3d/widget/ImageFrameManager;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/widget/ImageFrameManager;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;->this$0:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/widget/ImageFrameManager;Lcom/htc/photowidget3d/widget/ImageFrameManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;-><init>(Lcom/htc/photowidget3d/widget/ImageFrameManager;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;->this$0:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    iget-object v0, v1, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mOnImageClickListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;

    .line 145
    .local v0, listener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;->this$0:Lcom/htc/photowidget3d/widget/ImageFrameManager;

    iget-object v1, v1, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    invoke-interface {v0, v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;->onImageClick(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V

    .line 147
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
