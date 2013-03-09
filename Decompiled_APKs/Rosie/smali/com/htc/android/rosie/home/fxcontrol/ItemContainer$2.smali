.class Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;
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
    .line 82
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 4
    .parameter "drag"

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDragEvent() end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDrag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDragControl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDragEvent(): drop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$300(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPickListener:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$300(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$OnPickListener;->onPick(Z)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mPicked:Z
    invoke-static {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$202(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Z)Z

    .line 91
    :cond_3
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$2;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
