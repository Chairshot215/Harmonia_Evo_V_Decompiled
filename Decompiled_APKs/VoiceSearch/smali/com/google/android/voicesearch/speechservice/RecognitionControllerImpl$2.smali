.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$400(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->close()V

    .line 505
    return-void
.end method
