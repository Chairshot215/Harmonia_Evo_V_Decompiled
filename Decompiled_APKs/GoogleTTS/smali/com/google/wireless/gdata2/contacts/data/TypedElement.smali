.class public abstract Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.super Ljava/lang/Object;
.source "TypedElement.java"


# instance fields
.field private label:Ljava/lang/String;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 41
    const-string v0, " type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " label:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_0
    return-void
.end method
