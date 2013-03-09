.class Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
.super Lcom/google/android/talk/TalkServiceState$PendingCallback;
.source "TalkServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingServiceAvailableCallback"
.end annotation


# instance fields
.field final r:Lcom/google/android/talk/ServiceAvailableRunnable;

.field volatile service:Lcom/google/android/gtalkservice/IGTalkService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V
    .locals 0
    .parameter "target"
    .parameter "r"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkServiceState$PendingCallback;-><init>(Landroid/os/Handler;)V

    .line 80
    iput-object p2, p0, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->r:Lcom/google/android/talk/ServiceAvailableRunnable;

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->r:Lcom/google/android/talk/ServiceAvailableRunnable;

    iget-object v1, p0, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->service:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v0, v1}, Lcom/google/android/talk/ServiceAvailableRunnable;->run(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 93
    return-void
.end method

.method setService(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->service:Lcom/google/android/gtalkservice/IGTalkService;

    .line 85
    return-void
.end method
