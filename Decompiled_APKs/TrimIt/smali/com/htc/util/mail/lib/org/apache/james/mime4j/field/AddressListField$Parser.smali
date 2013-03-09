.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;
.super Ljava/lang/Object;
.source "AddressListField.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;
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

    .prologue
    .line 46
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
    .locals 7
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, addressList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    const/4 v5, 0x0

    .line 52
    .local v5, parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    :try_start_0
    invoke-static {p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 60
    :goto_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;)V

    return-object v0

    .line 54
    :catch_0
    move-exception v6

    .line 55
    .local v6, e:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;->log:Lorg/apache/commons/logging/Log;

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

    .line 58
    :cond_0
    move-object v5, v6

    goto :goto_0
.end method
