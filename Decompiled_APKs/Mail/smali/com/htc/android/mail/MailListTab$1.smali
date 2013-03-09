.class Lcom/htc/android/mail/MailListTab$1;
.super Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$1;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$1;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v0, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messages._id IN (SELECT _messageId FROM messages_tags_relation WHERE _tagId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$1;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v1, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
