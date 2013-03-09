.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field table:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method private declared-synchronized initializeTable()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    if-nez v5, :cond_2

    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Ljava/util/HashMap;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, v1, v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    iget-object v6, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ListResourceBundle$1;

    invoke-direct {v0, p0}, Ljava/util/ListResourceBundle$1;-><init>(Ljava/util/ListResourceBundle;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ListResourceBundle$2;

    invoke-direct {v0, p0}, Ljava/util/ListResourceBundle$2;-><init>(Ljava/util/ListResourceBundle;)V

    goto :goto_0
.end method

.method public final handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
