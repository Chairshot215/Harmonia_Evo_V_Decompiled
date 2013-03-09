.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;
.super Ljava/lang/Object;
.source "MailboxList.java"


# instance fields
.field private mailboxes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "mailboxes"
    .parameter "dontCopy"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    .line 42
    :goto_1
    return-void

    .line 39
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    .line 67
    .local v1, mailbox:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v1           #mailbox:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
