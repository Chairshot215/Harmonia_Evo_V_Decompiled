.class public Lcom/google/wireless/gdata2/contacts/data/Relation;
.super Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.source "Relation.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 38
    invoke-direct {p0, p2, p3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;-><init>(BLjava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Relation;->text:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Relation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/Relation;->text:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 60
    const-string v0, "Relation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 62
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/Relation;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, " text:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/Relation;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    return-void
.end method
