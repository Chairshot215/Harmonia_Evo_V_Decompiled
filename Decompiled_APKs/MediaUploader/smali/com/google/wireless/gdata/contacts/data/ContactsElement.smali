.class public abstract Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.super Ljava/lang/Object;
.source "ContactsElement.java"


# static fields
.field public static final TYPE_NONE:B = -0x1t


# instance fields
.field private isPrimary:Z

.field private label:Ljava/lang/String;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 39
    iget-byte v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary:Z

    return v0
.end method

.method public setIsPrimary(Z)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary:Z

    .line 36
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setType(B)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-byte p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    const-string v0, " type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    const-string v0, " isPrimary:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 57
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " label:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 67
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->type:B

    if-eq v0, v1, :cond_2

    .line 68
    :cond_1
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "exactly one of label or type must be set"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    return-void
.end method
