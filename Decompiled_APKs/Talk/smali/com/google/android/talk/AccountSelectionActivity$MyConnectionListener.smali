.class Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "AccountSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyConnectionListener"
.end annotation


# instance fields
.field volatile mActivity:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->mActivity:Lcom/google/android/talk/AccountSelectionActivity;

    .line 179
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->mActivity:Lcom/google/android/talk/AccountSelectionActivity;

    .line 183
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 187
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->mActivity:Lcom/google/android/talk/AccountSelectionActivity;

    .line 188
    .local v7, a:Lcom/google/android/talk/AccountSelectionActivity;
    if-nez v7, :cond_0

    .line 262
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
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

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 200
    :cond_1
    new-instance v0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;-><init>(Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/google/android/talk/AccountSelectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :cond_2
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
