.class Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;
.super Ljava/lang/Object;
.source "LoggingService.java"

# interfaces
.implements Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/LoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteListener"
.end annotation


# instance fields
.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/logging/LoggingService;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    iput-object p1, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    .line 620
    return-void
.end method


# virtual methods
.method public onSendCompleted(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, unsentRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;->this$0:Lcom/google/android/voicesearch/logging/LoggingService;

    #calls: Lcom/google/android/voicesearch/logging/LoggingService;->stopServiceIfNeeded()V
    invoke-static {v0}, Lcom/google/android/voicesearch/logging/LoggingService;->access$500(Lcom/google/android/voicesearch/logging/LoggingService;)V

    .line 628
    return-void
.end method
