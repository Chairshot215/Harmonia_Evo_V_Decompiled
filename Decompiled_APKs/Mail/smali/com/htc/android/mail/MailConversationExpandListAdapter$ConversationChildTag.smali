.class public Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;
.super Ljava/lang/Object;
.source "MailConversationExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailConversationExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationChildTag"
.end annotation


# instance fields
.field accountId:J

.field group:Ljava/lang/String;

.field mailboxId:J

.field messageId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 728
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
