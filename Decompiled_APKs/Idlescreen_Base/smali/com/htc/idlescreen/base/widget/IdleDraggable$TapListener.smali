.class Lcom/htc/idlescreen/base/widget/IdleDraggable$TapListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$TapListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$TapListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->onClick()V

    .line 343
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 340
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$TapListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
