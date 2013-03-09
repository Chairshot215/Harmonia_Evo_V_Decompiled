.class final Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "AccountChangedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountChangedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TalkConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountChangedService;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/AccountChangedService;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/AccountChangedService;Lcom/google/android/talk/AccountChangedService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;-><init>(Lcom/google/android/talk/AccountChangedService;)V

    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 117
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStateChanged: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/AccountChangedService;->access$100(Lcom/google/android/talk/AccountChangedService;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    #getter for: Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/TalkApp;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z

    move-result v7

    .line 124
    .local v7, changed:Z
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    #getter for: Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v6

    .line 127
    .local v6, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v6, :cond_1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->autoLoggingIn:Z

    .line 131
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    new-instance v1, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;-><init>(Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;)V

    invoke-static {v0, p3, p4, v1}, Lcom/google/android/talk/FeatureManager;->setAvailableFeatures(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 143
    :cond_1
    return-void
.end method
