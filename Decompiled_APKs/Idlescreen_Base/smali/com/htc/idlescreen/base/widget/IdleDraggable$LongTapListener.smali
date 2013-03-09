.class Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongTapListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 348
    const-string v0, "Draggable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongTapListener mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDraggable;->mState:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
    invoke-static {v2}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$400(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onLongPress()V

    .line 350
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$LongTapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)V

    return-void
.end method
