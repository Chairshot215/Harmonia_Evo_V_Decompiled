.class Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "DropZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/DropZone;->bindListener(Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/DropZone;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 3
    .parameter "drag"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/DropZone;->mListener:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->access$000(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;->this$0:Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;->handleEvent(Lcom/htc/fusion/fx/FxDraggable;Lcom/htc/android/rosie/home/fxcontrol/DropZone;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;)V

    .line 41
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone$3;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
