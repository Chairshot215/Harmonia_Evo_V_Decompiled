.class public Lcom/google/wireless/gdata2/contacts/data/Name;
.super Ljava/lang/Object;
.source "Name.java"


# instance fields
.field private additionalName:Ljava/lang/String;

.field private additionalNameYomi:Ljava/lang/String;

.field private familyName:Ljava/lang/String;

.field private familyNameYomi:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private fullNameYomi:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field private givenNameYomi:Ljava/lang/String;

.field private namePrefix:Ljava/lang/String;

.field private nameSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 171
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " fullName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->nameSuffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " nameSuffix:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->nameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->namePrefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, " namePrefix:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, " familyName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, " additionalName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, " givenName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, " givenNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->givenNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, " familyNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->familyNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, " additionalNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->additionalNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullNameYomi:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, " fullNameYomi:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Name;->fullNameYomi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_9
    return-void
.end method
