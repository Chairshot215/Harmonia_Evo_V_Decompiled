.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;
.source "DefaultFieldParser.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;-><init>()V

    const-string v4, "Content-Transfer-Encoding"

    new-instance v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField$Parser;

    invoke-direct {v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTransferEncodingField$Parser;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Content-Type"

    new-instance v5, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;

    invoke-direct {v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/ContentTypeField$Parser;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField$Parser;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DateTimeField$Parser;-><init>()V

    const-string v4, "Date"

    invoke-virtual {p0, v4, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-Date"

    invoke-virtual {p0, v4, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField$Parser;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxListField$Parser;-><init>()V

    const-string v4, "From"

    invoke-virtual {p0, v4, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-From"

    invoke-virtual {p0, v4, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;-><init>()V

    const-string v4, "Sender"

    invoke-virtual {p0, v4, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-Sender"

    invoke-virtual {p0, v4, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;-><init>()V

    const-string v4, "To"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-To"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Cc"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-Cc"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Bcc"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Resent-Bcc"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    const-string v4, "Reply-To"

    invoke-virtual {p0, v4, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V

    return-void
.end method
