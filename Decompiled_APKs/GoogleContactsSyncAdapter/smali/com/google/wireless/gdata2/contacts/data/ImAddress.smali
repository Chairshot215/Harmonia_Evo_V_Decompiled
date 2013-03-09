.class public Lcom/google/wireless/gdata2/contacts/data/ImAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "ImAddress.java"


# instance fields
.field private address:Ljava/lang/String;

.field private protocolCustom:Ljava/lang/String;

.field private protocolPredefined:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .parameter "address"
    .parameter "protocolPredefined"
    .parameter "protocolCustom"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 35
    invoke-direct {p0, p4, p5, p6}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 36
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    .line 37
    iput-byte p2, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolPredefined:B

    .line 38
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolPredefined()B
    .locals 1

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolPredefined:B

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProtocolCustom(Ljava/lang/String;)V
    .locals 0
    .parameter "protocolCustom"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setProtocolPredefined(B)V
    .locals 0
    .parameter "protocolPredefined"

    .prologue
    .line 46
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolPredefined:B

    .line 47
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 66
    const-string v0, "ImAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 68
    const-string v0, " protocolPredefined:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolPredefined:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " protocolCustom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_1
    return-void
.end method
