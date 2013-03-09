.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

.field final synthetic val$oldBareJid:Ljava/lang/String;

.field final synthetic val$room:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->val$oldBareJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->val$room:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->val$oldBareJid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->val$room:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$6;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mGroupContactId:J
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1400(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)J

    move-result-wide v3

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2102
    return-void
.end method
