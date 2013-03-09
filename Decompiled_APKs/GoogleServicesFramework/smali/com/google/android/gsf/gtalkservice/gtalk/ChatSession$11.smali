.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
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

.field final synthetic val$groupId:J

.field final synthetic val$oldJid:Ljava/lang/String;

.field final synthetic val$room:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$oldJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$room:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$groupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IChatListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$oldJid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$room:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->val$groupId:J

    move-object v1, p1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyConvertedToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1600(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2428
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    check-cast p1, Lcom/google/android/gtalkservice/IChatListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$11;->call(Lcom/google/android/gtalkservice/IChatListener;)Z

    move-result v0

    return v0
.end method
