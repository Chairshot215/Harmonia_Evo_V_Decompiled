.class Lcom/htc/android/fusion/calculator/Widget$8;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fusion/calculator/Widget;
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
.field final synthetic this$0:Lcom/htc/android/fusion/calculator/Widget;


# direct methods
.method constructor <init>(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/htc/android/fusion/calculator/Widget$8;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 482
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "go_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget$8;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget$8;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    #getter for: Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/fusion/calculator/Widget;->access$300(Lcom/htc/android/fusion/calculator/Widget;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/fusion/calculator/Widget;->access$400(Lcom/htc/android/fusion/calculator/Widget;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget$8;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    iget-object v0, v0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 486
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 479
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/fusion/calculator/Widget$8;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
