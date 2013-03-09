.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p1

    check-cast v0, Lgov/nist/core/NameValue;

    if-ne p0, v0, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    :cond_3
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    :cond_4
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    iget-object v6, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :cond_6
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_7

    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v5, :cond_0

    :cond_7
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v6, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v5, v6, :cond_8

    move v4, v3

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v5, :cond_9

    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_a
    move v3, v4

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValueQuoted()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-void
.end method

.method public setQuotedValue()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    const-string v0, "\""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    return-void
.end method
