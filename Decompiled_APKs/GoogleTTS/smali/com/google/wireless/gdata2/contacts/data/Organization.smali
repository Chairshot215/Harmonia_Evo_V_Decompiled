.class public Lcom/google/wireless/gdata2/contacts/data/Organization;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "Organization.java"


# instance fields
.field private name:Ljava/lang/String;

.field private nameYomi:Ljava/lang/String;

.field private orgDepartment:Ljava/lang/String;

.field private orgJobDescription:Ljava/lang/String;

.field private orgSymbol:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 126
    const-string v0, "Organization"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 128
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " title:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, " orgDepartment:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgDepartment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, " orgJobDescription:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgJobDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, " orgSymbol:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->orgSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, " nameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Organization;->nameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_5
    return-void
.end method
