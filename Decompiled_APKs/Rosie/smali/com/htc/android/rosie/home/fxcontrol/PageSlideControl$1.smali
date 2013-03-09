.class Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "PageSlideControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->access$000(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->access$000(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;->isUnlockAnimation(Lcom/htc/fusion/fx/FxPlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "PageSlideControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spin complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->access$100(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->access$100(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;->onAnimationEnd()V

    .line 178
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
