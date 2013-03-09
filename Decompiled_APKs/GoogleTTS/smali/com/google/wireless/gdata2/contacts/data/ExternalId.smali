.class public Lcom/google/wireless/gdata2/contacts/data/ExternalId;
.super Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.source "ExternalId.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 51
    const-string v0, "ExternalId"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    return-void
.end method
