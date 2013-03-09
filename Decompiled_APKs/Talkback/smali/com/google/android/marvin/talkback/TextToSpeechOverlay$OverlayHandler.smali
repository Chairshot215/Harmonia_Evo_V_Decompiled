.class Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "TextToSpeechOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TextToSpeechOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/TextToSpeechOverlay;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)V
    .locals 2
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 82
    :pswitch_0
    #getter for: Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;
    invoke-static {p2}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->access$0(Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->hide()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)V

    return-void
.end method
