.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;
.super Ljava/lang/Object;
.source "MailboxField.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->flatten()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/MailboxList;->get(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Mailbox;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;)V

    return-object v0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/MailboxField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    move-object v5, v6

    goto :goto_0
.end method
