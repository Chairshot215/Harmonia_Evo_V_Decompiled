.class Ljava/util/ServiceLoader$ServiceIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private isRead:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method public constructor <init>(Ljava/util/ServiceLoader;Ljava/util/ServiceLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader",
            "<TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/ServiceLoader$ServiceIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #getter for: Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$000(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    #getter for: Ljava/util/ServiceLoader;->service:Ljava/lang/Class;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$100(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    #getter for: Ljava/util/ServiceLoader;->services:Ljava/util/Set;
    invoke-static {p2}, Ljava/util/ServiceLoader;->access$200(Ljava/util/ServiceLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    return-void
.end method

.method private checkValidJavaClassName(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readClass()V
    .locals 11

    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v8, 0x23

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v0, v4

    invoke-direct {p0, v0}, Ljava/util/ServiceLoader$ServiceIterator;->checkValidJavaClassName(Ljava/lang/String;)V

    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v5, v6

    :goto_2
    :try_start_2
    new-instance v8, Ljava/util/ServiceConfigurationError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    :cond_2
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_3
    return-void

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/ServiceLoader$ServiceIterator;->readClass()V

    :cond_0
    iget-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ServiceLoader$ServiceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/util/ServiceConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t instantiate class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
