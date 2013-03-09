.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V
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

.field final synthetic val$joined:Z

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$room:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$room:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$nickname:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$joined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IChatListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$room:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$nickname:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->val$joined:Z

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyParticipantPresence(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1800(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2480
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2476
    check-cast p1, Lcom/google/android/gtalkservice/IChatListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$13;->call(Lcom/google/android/gtalkservice/IChatListener;)Z

    move-result v0

    return v0
.end method
