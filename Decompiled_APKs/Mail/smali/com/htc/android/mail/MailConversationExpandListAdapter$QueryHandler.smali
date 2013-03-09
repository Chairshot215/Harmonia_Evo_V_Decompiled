.class Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailConversationExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailConversationExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    .line 116
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 122
    if-eqz p3, :cond_3

    .line 124
    invoke-static {}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$100(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete(), call setChildrenCursor for group position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v1, p1, p3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-static {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$210(Lcom/htc/android/mail/MailConversationExpandListAdapter;)I

    .line 136
    invoke-static {}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$100(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete(), there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAsyncQueryCount:I
    invoke-static {v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$200(Lcom/htc/android/mail/MailConversationExpandListAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Async query is running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$100(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException occurred while calling setChildrenCursor for group position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$100(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onQueryComplete(), cursor is null..."

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
