.class Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;Lcom/htc/idlescreen/base/widget/IdleDraggable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDraggable;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/widget/IdleDraggable;->access$300(Lcom/htc/idlescreen/base/widget/IdleDraggable;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1775

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 246
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDraggable$BackListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
