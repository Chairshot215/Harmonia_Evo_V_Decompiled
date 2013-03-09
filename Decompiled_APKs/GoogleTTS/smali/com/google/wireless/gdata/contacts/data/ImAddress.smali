.class public Lcom/google/wireless/gdata/contacts/data/ImAddress;
.super Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.source "ImAddress.java"


# instance fields
.field private address:Ljava/lang/String;

.field private protocolCustom:Ljava/lang/String;

.field private protocolPredefined:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 53
    const-string v0, "ImAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 55
    const-string v0, " protocolPredefined:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolPredefined:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " protocolCustom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_1
    return-void
.end method
