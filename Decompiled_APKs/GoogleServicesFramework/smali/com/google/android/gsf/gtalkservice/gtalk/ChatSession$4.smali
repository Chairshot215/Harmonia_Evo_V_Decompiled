.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->reportEndCause(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IChatListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IChatListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 1402
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->callEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] callEnded caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    invoke-static {v1, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1200(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1398
    check-cast p1, Lcom/google/android/gtalkservice/IChatListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$4;->call(Lcom/google/android/gtalkservice/IChatListener;)Z

    move-result v0

    return v0
.end method
