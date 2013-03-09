.class public Ltwitter4j/http/PostParameter;
.super Ljava/lang/Object;
.source "PostParameter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x78d96ac49142488cL


# instance fields
.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    .line 45
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/PostParameter;

    move-object v2, v0

    .line 85
    .local v2, that:Ltwitter4j/http/PostParameter;
    iget-object v3, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    iget-object v4, v2, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, compared:I
    if-nez v1, :cond_0

    .line 87
    iget-object v3, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    iget-object v4, v2, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 89
    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    if-nez p1, :cond_0

    move v2, v4

    .line 79
    :goto_0
    return v2

    .line 71
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    instance-of v2, p1, Ltwitter4j/http/PostParameter;

    if-eqz v2, :cond_3

    .line 75
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/PostParameter;

    move-object v1, v0

    .line 76
    .local v1, that:Ltwitter4j/http/PostParameter;
    iget-object v2, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1           #that:Ltwitter4j/http/PostParameter;
    :cond_3
    move v2, v4

    .line 79
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 63
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 64
    return v0
.end method
