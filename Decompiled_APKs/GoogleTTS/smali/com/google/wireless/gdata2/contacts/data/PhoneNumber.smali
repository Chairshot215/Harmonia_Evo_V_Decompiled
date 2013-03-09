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


# virtual methods
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
