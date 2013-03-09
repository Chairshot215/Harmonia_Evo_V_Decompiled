.class public Lcom/google/android/common/Csv;
.super Ljava/lang/Object;
.source "Csv.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLine(Ljava/io/BufferedReader;Ljava/util/List;)Z
    .locals 10
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/16 v9, 0x22

    const/4 v8, -0x1

    .line 73
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, text:Ljava/lang/String;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 105
    :goto_0
    return v5

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 78
    .local v2, pos:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_1
    const/16 v5, 0x2c

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 82
    .local v1, comma:I
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 83
    .local v3, quote:I
    if-eq v3, v8, :cond_2

    if-eq v1, v8, :cond_3

    if-ge v1, v3, :cond_3

    .line 101
    :cond_2
    if-ne v1, v8, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :goto_2
    invoke-virtual {v0, v4, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v1, 0x1

    .line 104
    if-gtz v2, :cond_1

    move v5, v6

    .line 105
    goto :goto_0

    .line 85
    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_4
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 87
    :goto_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 90
    if-nez v4, :cond_5

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 92
    goto :goto_0

    .line 94
    :cond_5
    const/4 v3, -0x1

    goto :goto_3

    .line 97
    :cond_6
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v2, v3, 0x1

    .line 99
    goto :goto_1

    :cond_7
    move v5, v1

    .line 101
    goto :goto_2
.end method

.method public static writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 7
    .parameter "value"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x9

    const/16 v6, 0x22

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 48
    .local v2, len:I
    if-nez v2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, first:C
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 52
    .local v1, last:C
    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 56
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\"\""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method
