.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;
.super Landroid/os/Handler;
.source "RecognitionControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_START_LISTENING, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const/4 v2, 0x0

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->startRecognition(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V
    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$300(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_RETRY_LAST_RECOGNITION, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const/4 v2, 0x1

    #calls: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->startRecognition(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V
    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$300(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
