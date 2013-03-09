.class public Lcom/jme3/util/blockparser/BlockLanguageParser;
.super Ljava/lang/Object;
.source "BlockLanguageParser.java"


# instance fields
.field private lastStatement:Lcom/jme3/util/blockparser/Statement;

.field private lineNumber:I

.field private reader:Ljava/io/Reader;

.field private statementStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    .line 18
    return-void
.end method

.method private load(Ljava/io/InputStream;)V
    .locals 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x7d

    const/16 v10, 0x7b

    const/16 v9, 0x2f

    const/4 v8, -0x1

    const/16 v7, 0xa

    .line 41
    invoke-direct {p0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->reset()V

    .line 43
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->reader:Ljava/io/Reader;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 47
    .local v3, insideComment:Z
    const/4 v4, 0x0

    .line 50
    .local v4, lastChar:C
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->reader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v2

    .line 51
    .local v2, ci:I
    int-to-char v1, v2

    .line 52
    .local v1, c:C
    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    .line 55
    if-eqz v3, :cond_1

    if-ne v1, v7, :cond_1

    .line 56
    const/4 v3, 0x0

    goto :goto_0

    .line 57
    :cond_1
    if-ne v1, v9, :cond_2

    if-ne v4, v9, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {p0, v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->pushStatement(Ljava/lang/StringBuilder;)V

    .line 61
    const/4 v4, 0x0

    goto :goto_0

    .line 62
    :cond_2
    if-nez v3, :cond_0

    .line 63
    if-eq v2, v8, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v11, :cond_3

    if-eq v1, v7, :cond_3

    const/16 v5, 0x3b

    if-ne v1, v5, :cond_7

    .line 64
    :cond_3
    invoke-direct {p0, v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->pushStatement(Ljava/lang/StringBuilder;)V

    .line 65
    const/4 v4, 0x0

    .line 66
    if-ne v1, v10, :cond_4

    .line 68
    iget-object v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_4
    if-ne v1, v11, :cond_5

    .line 72
    iget-object v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_5
    if-ne v1, v7, :cond_6

    .line 75
    iget v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    goto :goto_0

    .line 76
    :cond_6
    if-ne v2, v8, :cond_0

    .line 85
    return-void

    .line 80
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    move v4, v1

    goto :goto_0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/jme3/util/blockparser/BlockLanguageParser;

    invoke-direct {v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;-><init>()V

    .line 89
    .local v0, parser:Lcom/jme3/util/blockparser/BlockLanguageParser;
    invoke-direct {v0, p0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->load(Ljava/io/InputStream;)V

    .line 90
    iget-object v1, v0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private pushStatement(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    new-instance v2, Lcom/jme3/util/blockparser/Statement;

    iget v3, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    invoke-direct {v2, v3, v0}, Lcom/jme3/util/blockparser/Statement;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    .line 33
    iget-object v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 34
    .local v1, parent:Lcom/jme3/util/blockparser/Statement;
    iget-object v2, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v1, v2}, Lcom/jme3/util/blockparser/Statement;->addStatement(Lcom/jme3/util/blockparser/Statement;)V

    .line 36
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    .end local v1           #parent:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->statementStack:Ljava/util/ArrayList;

    new-instance v1, Lcom/jme3/util/blockparser/Statement;

    const/4 v2, 0x0

    const-string v3, "<root>"

    invoke-direct {v1, v2, v3}, Lcom/jme3/util/blockparser/Statement;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lastStatement:Lcom/jme3/util/blockparser/Statement;

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/util/blockparser/BlockLanguageParser;->lineNumber:I

    .line 25
    return-void
.end method
