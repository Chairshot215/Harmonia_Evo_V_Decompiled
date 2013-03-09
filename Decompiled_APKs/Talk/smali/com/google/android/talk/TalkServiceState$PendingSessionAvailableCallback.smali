.class Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
.super Lcom/google/android/talk/TalkServiceState$PendingCallback;
.source "TalkServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingSessionAvailableCallback"
.end annotation


# instance fields
.field final accountId:J

.field final r:Lcom/google/android/talk/SessionAvailableRunnable;

.field volatile service:Lcom/google/android/gtalkservice/IGTalkService;

.field volatile session:Lcom/google/android/gtalkservice/IImSession;


# direct methods
.method constructor <init>(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V
    .locals 0
    .parameter "target"
    .parameter "accountId"
    .parameter "r"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkServiceState$PendingCallback;-><init>(Landroid/os/Handler;)V

    .line 56
    iput-wide p2, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->accountId:J

    .line 57
    iput-object p4, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->r:Lcom/google/android/talk/SessionAvailableRunnable;

    .line 58
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->r:Lcom/google/android/talk/SessionAvailableRunnable;

    iget-object v1, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->service:Lcom/google/android/gtalkservice/IGTalkService;

    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->session:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0, v1, v2}, Lcom/google/android/talk/SessionAvailableRunnable;->run(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 71
    return-void
.end method

.method setServiceAndSession(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "service"
    .parameter "session"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->service:Lcom/google/android/gtalkservice/IGTalkService;

    .line 62
    iput-object p2, p0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->session:Lcom/google/android/gtalkservice/IImSession;

    .line 63
    return-void
.end method
