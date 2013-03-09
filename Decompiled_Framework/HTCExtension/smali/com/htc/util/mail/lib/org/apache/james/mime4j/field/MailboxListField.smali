.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "MailboxListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField$Parser;
    }
.end annotation


# instance fields
.field private mailboxList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

.field private parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField;->mailboxList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    iput-object p5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    return-void
.end method


# virtual methods
.method public getMailboxList()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField;->mailboxList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
