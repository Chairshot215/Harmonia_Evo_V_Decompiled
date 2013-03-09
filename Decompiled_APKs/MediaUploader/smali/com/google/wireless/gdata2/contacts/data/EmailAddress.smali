.class public Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "EmailAddress.java"


# static fields
.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


# instance fields
.field private address:Ljava/lang/String;

.field private displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p3, p4, p5}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 23
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    const-string v0, "EmailAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 52
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " displayName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_1
    return-void
.end method
