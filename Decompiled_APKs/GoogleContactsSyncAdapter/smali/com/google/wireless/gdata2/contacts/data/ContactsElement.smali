.class public abstract Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.super Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.source "ContactsElement.java"


# instance fields
.field private isPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>(BLjava/lang/String;)V

    .line 18
    iput-boolean p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary:Z

    .line 19
    return-void
.end method


# virtual methods
.method public isPrimary()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary:Z

    return v0
.end method

.method public setIsPrimary(Z)V
    .locals 0
    .parameter "primary"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary:Z

    .line 27
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 31
    const-string v0, " isPrimary:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->isPrimary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 32
    return-void
.end method
