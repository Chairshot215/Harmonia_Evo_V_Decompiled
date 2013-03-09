.class Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxShortcutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "playbackInfo"

    .prologue
    .line 111
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "loading_to_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->updateShortcutIcon()V

    .line 114
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
