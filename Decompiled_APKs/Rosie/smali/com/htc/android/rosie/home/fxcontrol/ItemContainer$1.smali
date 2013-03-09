.class Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;
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
        "Lcom/htc/fusion/fx/FxDraggable;",
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
    .line 70
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDragControl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDragEvent(): begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z
    invoke-static {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$202(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Z)Z

    .line 77
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$300(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$300(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;->onPick(Z)V

    .line 79
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
