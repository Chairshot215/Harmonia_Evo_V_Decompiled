.class Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleRing;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleRing;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/idlescreen/base/widget/IdleRing$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 490
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$200(Lcom/htc/idlescreen/base/widget/IdleRing;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 491
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 485
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing$PlayListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
