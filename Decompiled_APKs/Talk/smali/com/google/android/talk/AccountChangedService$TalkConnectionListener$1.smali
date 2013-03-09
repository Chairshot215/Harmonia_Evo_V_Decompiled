.class Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;
.super Ljava/lang/Object;
.source "AccountChangedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    #calls: Lcom/google/android/talk/AccountChangedService;->stillLoggingIn()Z
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$300(Lcom/google/android/talk/AccountChangedService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    const-string v1, "stopping service"

    #calls: Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/AccountChangedService;->access$100(Lcom/google/android/talk/AccountChangedService;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    #calls: Lcom/google/android/talk/AccountChangedService;->unregisterAllSessions()V
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$400(Lcom/google/android/talk/AccountChangedService;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    #getter for: Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v1, v1, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;->this$1:Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountChangedService;->stopSelf()V

    .line 140
    :cond_0
    return-void
.end method
