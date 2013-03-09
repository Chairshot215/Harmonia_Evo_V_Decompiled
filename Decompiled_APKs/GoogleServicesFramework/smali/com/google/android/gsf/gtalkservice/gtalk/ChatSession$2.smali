.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->markAsRead(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markAsRead for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mTo:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", update db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 504
    return-void
.end method
