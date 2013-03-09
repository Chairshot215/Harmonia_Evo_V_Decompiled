.class public Lcom/google/wireless/gdata/data/ExtendedProperty;
.super Ljava/lang/Object;
.source "ExtendedProperty.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private xmlBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setXmlBlob(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const-string v0, "ExtendedProperty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, " xmlBlob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :cond_2
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
    .line 45
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/wireless/gdata/data/ExtendedProperty;->xmlBlob:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 50
    :cond_2
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "exactly one of value and xmlBlob must be present"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    return-void
.end method
