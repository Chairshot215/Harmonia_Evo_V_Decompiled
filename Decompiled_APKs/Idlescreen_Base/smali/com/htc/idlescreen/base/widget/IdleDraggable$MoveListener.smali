.class Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;",
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
    .line 234
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1774

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$300(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 240
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 234
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$MoveListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V

    return-void
.end method
