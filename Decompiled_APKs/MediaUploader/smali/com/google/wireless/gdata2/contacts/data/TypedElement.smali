.class public abstract Lcom/google/wireless/gdata2/contacts/data/TypedElement;
.super Ljava/lang/Object;
.source "TypedElement.java"


# static fields
.field public static final TYPE_NONE:B = -0x1t


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

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    .line 20
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    .line 21
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setType(B)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->toString(Ljava/lang/StringBuffer;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

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

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 52
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->type:B

    if-eq v0, v1, :cond_2

    .line 53
    :cond_1
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "exactly one of label or type must be set"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    return-void
.end method
