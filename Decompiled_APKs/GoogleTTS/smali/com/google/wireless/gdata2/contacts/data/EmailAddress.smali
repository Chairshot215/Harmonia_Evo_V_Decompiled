.class public Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "EmailAddress.java"


# instance fields
.field private address:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private linksTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 60
    const-string v0, "EmailAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 62
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " displayName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->linksTo:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, " linksTo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->linksTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_2
    return-void
.end method
