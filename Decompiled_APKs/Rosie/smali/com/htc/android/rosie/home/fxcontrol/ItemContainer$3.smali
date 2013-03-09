.class Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$200(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlaybackCompleteListener ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") onMessageReceived thaw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mMarkerStart:Lcom/htc/fusion/fx/Marker;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mMarkerStart:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setFrame(F)V

    .line 101
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDrag.setFrame(mMarkerStart.StartFrame);"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->thaw()V

    .line 108
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$3;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
