.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lgov/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected static isCloneable(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Cloneable;

    return v0
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private sprint(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    goto :goto_0
.end method


# virtual methods
.method public addFirst(Lgov/nist/core/GenericObject;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgov/nist/core/GenericObject;

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v2}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    return-void
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;Z)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/core/GenericObjectList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "<null>"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "listName:"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "["

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    check-cast v0, Lgov/nist/core/GenericObject;

    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    const-string v1, "]"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "}"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    goto :goto_0
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2

    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->debugDump()Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lgov/nist/core/GenericObject;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, p1

    check-cast v5, Lgov/nist/core/GenericObjectList;

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v7

    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected first()Lgov/nist/core/GenericObject;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    new-array v0, v1, [C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move-object v4, p1

    check-cast v4, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v4}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lgov/nist/core/GenericObject;

    if-eqz v5, :cond_2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to match  = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v5, v3

    check-cast v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5, v1}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v3, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v3, v1}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected next()Lgov/nist/core/GenericObject;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iput-object v2, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    move-object v1, v2

    goto :goto_0
.end method

.method protected next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
