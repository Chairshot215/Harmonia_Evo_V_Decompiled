.class Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
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
    .line 225
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1771

    iput v1, v0, Landroid/os/Message;->what:I

    .line 229
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$300(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 231
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$TouchListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
