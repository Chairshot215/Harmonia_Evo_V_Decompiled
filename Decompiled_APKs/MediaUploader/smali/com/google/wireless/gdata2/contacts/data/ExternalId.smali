.class public Lcom/google/wireless/gdata2/contacts/data/ExternalId;
.super Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.source "ExternalId.java"


# static fields
.field public static final TYPE_ACCOUNT:B = 0x1t

.field public static final TYPE_CUSTOMER:B = 0x2t

.field public static final TYPE_NETWORK:B = 0x3t

.field public static final TYPE_ORGANIZATION:B = 0x4t


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>(BLjava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const-string v0, "ExternalId"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "the value must be set"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method
