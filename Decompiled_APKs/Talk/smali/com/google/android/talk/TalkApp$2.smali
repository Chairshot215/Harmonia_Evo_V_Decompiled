.class Lcom/google/android/talk/TalkApp$2;
.super Ljava/lang/Object;
.source "TalkApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method constructor <init>(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connected: mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;
    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkServiceState;->setService(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 171
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$200(Lcom/google/android/talk/TalkApp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    const-string v0, "service disconnected..."

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkServiceState;->clearService()V

    .line 178
    return-void
.end method
