.class public Lcom/google/android/common/Csv;
.super Ljava/lang/Object;
.source "Csv.java"


# static fields
.field public static final COMMA:Ljava/lang/String; = ","

.field public static final NEWLINE:Ljava/lang/String; = "\n"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLine(Ljava/io/BufferedReader;Ljava/util/List;)Z
    .locals 9
    .parameter
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
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, -0x1

    .line 73
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    :cond_0
    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_1
    const/16 v3, 0x2c

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 82
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 83
    if-eq v4, v5, :cond_2

    if-eq v3, v5, :cond_3

    if-ge v3, v4, :cond_3

    .line 101
    :cond_2
    if-ne v3, v5, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    invoke-virtual {v2, v1, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v3, 0x1

    .line 104
    if-gtz v0, :cond_1

    move v0, v7

    .line 105
    goto :goto_0

    .line 85
    :cond_3
    if-lez v0, :cond_4

    sub-int v3, v0, v7

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_4
    invoke-virtual {v2, v1, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v0, v4

    .line 87
    :goto_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    .line 92
    goto :goto_0

    :cond_5
    move-object v1, v0

    move v0, v5

    .line 94
    goto :goto_3

    .line 97
    :cond_6
    invoke-virtual {v2, v1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v3, 0x1

    .line 99
    goto :goto_1

    :cond_7
    move v4, v3

    .line 101
    goto :goto_2
.end method

.method public static writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x9

    const/16 v3, 0x22

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 56
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\"\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method
