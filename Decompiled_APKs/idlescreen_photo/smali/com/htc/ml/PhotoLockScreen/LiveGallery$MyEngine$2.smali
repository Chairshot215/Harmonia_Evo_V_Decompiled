.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->onMarkerBehindObjBuildComplete(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    invoke-static {v0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    .line 434
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 431
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$2;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
