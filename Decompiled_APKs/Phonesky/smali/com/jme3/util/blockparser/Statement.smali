.class public Lcom/jme3/util/blockparser/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# instance fields
.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private lineNumber:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "lineNumber"
    .parameter "line"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    .line 13
    iput p1, p0, Lcom/jme3/util/blockparser/Statement;->lineNumber:I

    .line 14
    iput-object p2, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private getIndent(I)Ljava/lang/String;
    .locals 2
    .parameter "indent"

    .prologue
    .line 37
    const-string v0, "                               "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 4
    .parameter "indent"

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/jme3/util/blockparser/Statement;->getIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v3, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v3, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 45
    const-string v3, " {\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v3, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    .line 47
    .local v2, statement:Lcom/jme3/util/blockparser/Statement;
    add-int/lit8 v3, p1, 0x4

    invoke-direct {v2, v3}, Lcom/jme3/util/blockparser/Statement;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    .end local v2           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/util/blockparser/Statement;->getIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method addStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 1
    .parameter "statement"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jme3/util/blockparser/Statement;->line:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/util/blockparser/Statement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
