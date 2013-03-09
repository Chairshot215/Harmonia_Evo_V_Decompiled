.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public countTokens()I
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v4, v1, :cond_3

    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-boolean v3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/StringTokenizer;->position:I

    :goto_1
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v3, v1, :cond_3

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v0, v1, :cond_8

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/StringTokenizer;->position:I

    :goto_3
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v3, v1, :cond_7

    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_3

    :cond_7
    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchElementException will happen in nextToken(), string.length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  position= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  i= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
