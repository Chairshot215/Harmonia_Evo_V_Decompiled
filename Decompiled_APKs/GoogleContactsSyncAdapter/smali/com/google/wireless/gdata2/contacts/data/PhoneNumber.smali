.class public Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "PhoneNumber.java"


# instance fields
.field private linksTo:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 0
    .parameter "phoneNumber"
    .parameter "linksTo"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 39
    invoke-direct {p0, p3, p4, p5}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>(BLjava/lang/String;Z)V

    .line 40
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getLinksTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setLinksTo(Ljava/lang/String;)V
    .locals 0
    .parameter "linksTo"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 62
    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " phoneNumber:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " linksTo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->linksTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :cond_1
    return-void
.end method
