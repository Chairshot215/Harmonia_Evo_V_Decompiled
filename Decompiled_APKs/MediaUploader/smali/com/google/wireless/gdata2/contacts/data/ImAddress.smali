.class public Lcom/google/wireless/gdata2/contacts/data/ImAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "ImAddress.java"


# static fields
.field public static final PROTOCOL_AIM:B = 0x2t

.field public static final PROTOCOL_CUSTOM:B = 0x1t

.field public static final PROTOCOL_GOOGLE_TALK:B = 0x7t

.field public static final PROTOCOL_ICQ:B = 0x8t

.field public static final PROTOCOL_JABBER:B = 0x9t

.field public static final PROTOCOL_MSN:B = 0x3t

.field public static final PROTOCOL_NETMEETING:B = 0xat

.field public static final PROTOCOL_NONE:B = 0xbt

.field public static final PROTOCOL_QQ:B = 0x6t

.field public static final PROTOCOL_SKYPE:B = 0x5t

.field public static final PROTOCOL_YAHOO:B = 0x4t

.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

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
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->address:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProtocolCustom(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setProtocolPredefined(B)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->protocolPredefined:B

    .line 47
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

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
