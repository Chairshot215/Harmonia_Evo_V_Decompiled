.class Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "DigitControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/util/DigitControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackCompleteListener"
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
.field final synthetic this$0:Lcom/htc/clock3dwidget/util/DigitControl;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/util/DigitControl;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/util/DigitControl;Lcom/htc/clock3dwidget/util/DigitControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;-><init>(Lcom/htc/clock3dwidget/util/DigitControl;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-static {v1}, Lcom/htc/clock3dwidget/util/DigitControl;->access$104(Lcom/htc/clock3dwidget/util/DigitControl;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    #getter for: Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I
    invoke-static {v2}, Lcom/htc/clock3dwidget/util/DigitControl;->access$200(Lcom/htc/clock3dwidget/util/DigitControl;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->access$102(Lcom/htc/clock3dwidget/util/DigitControl;I)I

    .line 113
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->this$0:Lcom/htc/clock3dwidget/util/DigitControl;

    #getter for: Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I
    invoke-static {v1}, Lcom/htc/clock3dwidget/util/DigitControl;->access$100(Lcom/htc/clock3dwidget/util/DigitControl;)I

    move-result v1

    #calls: Lcom/htc/clock3dwidget/util/DigitControl;->nextNumber(I)V
    invoke-static {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->access$300(Lcom/htc/clock3dwidget/util/DigitControl;I)V

    .line 114
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
