.class Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropListener"
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
    .line 238
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/idlescreen/base/widget/IdleRing$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleRing;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$200(Lcom/htc/idlescreen/base/widget/IdleRing;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 241
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleRing$DropListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
