.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "AddressListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField$Parser;
    }
.end annotation


# instance fields
.field private addressList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

.field private parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "addressList"
    .parameter "parseException"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;->addressList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    .line 34
    iput-object p5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    .line 35
    return-void
.end method


# virtual methods
.method public getAddressList()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;->addressList:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/AddressList;

    return-object v0
.end method

.method public getParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/AddressListField;->parseException:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
