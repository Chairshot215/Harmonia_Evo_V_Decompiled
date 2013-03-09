.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Ljava/util/logging/Level; = null

.field public static final CONFIG:Ljava/util/logging/Level; = null

.field public static final FINE:Ljava/util/logging/Level; = null

.field public static final FINER:Ljava/util/logging/Level; = null

.field public static final FINEST:Ljava/util/logging/Level; = null

.field public static final INFO:Ljava/util/logging/Level; = null

.field public static final OFF:Ljava/util/logging/Level; = null

.field public static final SEVERE:Ljava/util/logging/Level; = null

.field public static final WARNING:Ljava/util/logging/Level; = null

.field private static final levels:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private final name:Ljava/lang/String;

.field private transient rb:Ljava/util/ResourceBundle;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/util/logging/Level;->levels:Ljava/util/List;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "OFF"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "SEVERE"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "WARNING"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "INFO"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "CONFIG"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINE"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINER"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINEST"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "ALL"

    const/high16 v2, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput p2, p0, Ljava/util/logging/Level;->value:I

    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p3, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v2

    :try_start_1
    sget-object v1, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v2, 0x1

    :goto_0
    sget-object v6, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v6

    :try_start_1
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v6

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v3, Ljava/util/logging/Level;

    invoke-direct {v3, p0, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    sget-object v3, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level;

    iget v2, p0, Ljava/util/logging/Level;->value:I

    iget v4, v1, Ljava/util/logging/Level;->value:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {v2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/util/logging/Level;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Level;->value:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
