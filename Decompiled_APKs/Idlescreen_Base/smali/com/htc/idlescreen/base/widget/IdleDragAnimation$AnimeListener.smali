.class Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "IdleDragAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDragAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimeListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;Lcom/htc/idlescreen/base/widget/IdleDragAnimation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;
    invoke-static {v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->access$100(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;)Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    move-result-object v0

    .line 64
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;->this$0:Lcom/htc/idlescreen/base/widget/IdleDragAnimation;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 66
    iget-object v1, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;->onAnimationEnd(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
