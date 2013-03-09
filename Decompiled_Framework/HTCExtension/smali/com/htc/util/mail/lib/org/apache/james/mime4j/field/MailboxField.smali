.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "MailboxField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;
    }
.end annotation


# instance fields
.field private final mailbox:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

.field private final parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;->mailbox:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    iput-object p5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    return-void
.end method


# virtual methods
.method public getMailbox()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;->mailbox:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public getParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
