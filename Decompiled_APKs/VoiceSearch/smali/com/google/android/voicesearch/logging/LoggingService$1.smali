.class Lcom/google/android/voicesearch/logging/LoggingService$1;
.super Landroid/os/Handler;
.source "LoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/LoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/logging/LoggingService;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/logging/LoggingService;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #getter for: Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$000(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #getter for: Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/voicesearch/logging/LoggingService;->access$000(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #getter for: Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/voicesearch/logging/LoggingService;->access$100(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    iget-object v5, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #getter for: Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/voicesearch/logging/LoggingService;->access$000(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    #calls: Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/voicesearch/logging/LoggingService;->access$200(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$1;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #calls: Lcom/google/android/voicesearch/logging/LoggingService;->flushClientReports()V
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$300(Lcom/google/android/voicesearch/logging/LoggingService;)V

    .line 108
    :cond_1
    return-void
.end method
