.class final Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "BuddyListCombo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

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
    .line 1045
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1051
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    new-instance v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;-><init>(Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/google/android/talk/BuddyListCombo;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1089
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
