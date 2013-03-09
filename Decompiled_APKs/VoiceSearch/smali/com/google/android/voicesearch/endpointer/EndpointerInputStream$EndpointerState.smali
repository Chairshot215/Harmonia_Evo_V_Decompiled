.class Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;
.super Ljava/lang/Object;
.source "EndpointerInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndpointerState"
.end annotation


# instance fields
.field private mEndPointerState:I

.field final synthetic this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;-><init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method private isPaused()Z
    .locals 2

    .prologue
    .line 710
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeaking()Z
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 661
    packed-switch p1, :pswitch_data_0

    .line 703
    :goto_0
    return-void

    .line 663
    :pswitch_0
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    if-ne v0, v3, :cond_0

    .line 664
    const-string v0, "EndpointerInputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition error from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iput v3, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    .line 668
    const-string v0, "EndpointerInputStream"

    const-string v1, "notify onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    #getter for: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->access$600(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onBeginningOfSpeech()V

    goto :goto_0

    .line 674
    :pswitch_1
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    if-ne v0, v3, :cond_1

    .line 675
    const-string v0, "EndpointerInputStream"

    const-string v1, "notify endOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    #getter for: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->access$600(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onEndOfSpeech()V

    .line 678
    :cond_1
    iput v4, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    goto :goto_0

    .line 683
    :pswitch_2
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    if-ne v0, v3, :cond_2

    .line 684
    const-string v0, "EndpointerInputStream"

    const-string v1, "notify endOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    #getter for: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->access$600(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onEndOfSpeech()V

    .line 687
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    goto :goto_0

    .line 692
    :pswitch_3
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    if-ne v0, v3, :cond_3

    .line 693
    const-string v0, "EndpointerInputStream"

    const-string v1, "notify endOfStream"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    #getter for: Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->mListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->access$600(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;->onEndOfSpeech()V

    .line 696
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$EndpointerState;->mEndPointerState:I

    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
