.class Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;
.super Landroid/os/Handler;
.source "VoiceInputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->createHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 579
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 581
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleError(I)V
    invoke-static {v1, v2}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$900(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;I)V

    goto :goto_0

    .line 584
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleInProgressPartialResults(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1000(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/util/List;)V

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;

    .line 588
    .local v0, results:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    iget-object v2, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->recognitionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->alternates:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->partialResults:Ljava/util/List;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1100(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 592
    .end local v0           #results:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;

    .line 593
    .restart local v0       #results:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    iget-object v2, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->recognitionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->alternates:Ljava/util/List;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$1200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 596
    .end local v0           #results:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$400(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
