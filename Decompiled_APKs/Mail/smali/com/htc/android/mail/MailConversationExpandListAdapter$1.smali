.class Lcom/htc/android/mail/MailConversationExpandListAdapter$1;
.super Ljava/lang/Object;
.source "MailConversationExpandListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailConversationExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$1;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;

    .line 219
    .local v10, groupData:Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$1;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    #getter for: Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;
    invoke-static {v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->access$300(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Lcom/htc/android/mail/MailList;

    move-result-object v0

    iget-wide v1, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->accountId:J

    iget-wide v3, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->mailBoxId:J

    iget-wide v5, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->groupId:J

    iget-object v7, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->group:Ljava/lang/String;

    iget-boolean v8, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->isAllRead:Z

    iget v9, v10, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->totalNum:I

    invoke-virtual/range {v0 .. v9}, Lcom/htc/android/mail/MailList;->setCmdBarByGroup(JJJLjava/lang/String;ZI)V

    .line 220
    return-void
.end method
