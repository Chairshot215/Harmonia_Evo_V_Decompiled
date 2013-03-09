.class Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 3
    .parameter "tap"

    .prologue
    .line 83
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tap down_tip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;->control:Lcom/htc/fusion/fx/FxControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxControl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->removeTutorialNotice()V

    .line 85
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
