.class Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;
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
    .line 111
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 1
    .parameter "drag"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->mDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->access$000(Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 116
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$4;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
