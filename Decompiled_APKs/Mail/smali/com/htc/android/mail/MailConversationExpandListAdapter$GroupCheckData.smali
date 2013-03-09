.class Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
.super Ljava/lang/Object;
.source "MailConversationExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailConversationExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCheckData"
.end annotation


# instance fields
.field accountId:J

.field checked:Z

.field group:Ljava/lang/String;

.field groupId:J

.field isAllRead:Z

.field mailBoxId:J

.field position:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

.field totalNum:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->this$0:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
