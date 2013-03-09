.class public Lcom/google/wireless/gdata/contacts/data/PostalAddress;
.super Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.source "PostalAddress.java"


# static fields
.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "PostalAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 26
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_0
    return-void
.end method
