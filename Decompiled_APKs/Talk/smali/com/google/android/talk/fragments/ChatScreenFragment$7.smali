.class Lcom/google/android/talk/fragments/ChatScreenFragment$7;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$accountId:J

.field final synthetic val$contact:Ljava/lang/String;

.field final synthetic val$ensureChatsInDb:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$contact:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$accountId:J

    iput-boolean p5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$ensureChatsInDb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for service task: create empty ChatSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$contact:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$accountId:J

    iget-boolean v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->val$ensureChatsInDb:Z

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 1411
    return-void
.end method
