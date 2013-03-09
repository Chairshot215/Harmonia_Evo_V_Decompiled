.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient changedProperties:Ljava/util/Properties;

.field private info:Ljava/lang/String;

.field private transient lastAlgorithm:Ljava/lang/String;

.field private transient lastServiceName:Ljava/lang/String;

.field private transient lastServicesByType:Ljava/security/Provider$Service;

.field private transient lastServicesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient lastType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transient propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient providerNumber:I

.field private transient returnedService:Ljava/security/Provider$Service;

.field private transient serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private version:D

.field private transient versionString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    iput-wide p2, p0, Ljava/security/Provider;->version:D

    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "KeySize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private myPutAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, "Provider."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-super {p0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-direct {p0, v2}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    :cond_3
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v4, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v4, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_5
    return-void
.end method

.method private putProviderInfo()V
    .locals 2

    const-string v1, "Provider.id name"

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    :goto_0
    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provider.id version"

    iget-object v1, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Provider.id info"

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    :goto_1
    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-wide v0, p0, Ljava/security/Provider;->version:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    return-void
.end method

.method private removeFromPropertyServiceTable(Ljava/lang/Object;)V
    .locals 17

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/String;

    const-string v15, "Provider."

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v15, "Alg.Alias."

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0xa

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2e

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v15}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v15, 0x2e

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v15, -0x1

    if-eq v8, v15, :cond_0

    const/16 v15, 0x20

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v15, -0x1

    if-ne v5, v15, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/Provider$Service;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v15, :cond_0

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v12}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v12}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v11, v10

    check-cast v11, Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    #getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_2
    return-void
.end method

.method private serviceInfoToProperties(Ljava/security/Provider$Service;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    #getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_2
    return-void
.end method

.method private servicesChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    iput-object v0, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    return-void
.end method

.method private updatePropertyServiceTable()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    if-eqz v20, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v20

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v30, v20

    check-cast v30, Ljava/lang/String;

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/String;

    const-string v3, "Provider"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Alg.Alias."

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xa

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const/16 v3, 0x2e

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    const/4 v3, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object v5, v12

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v3, :cond_4

    new-instance v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :goto_2
    if-eqz v31, :cond_5

    move-object/from16 v2, v31

    check-cast v2, Ljava/security/Provider$Service;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v3, :cond_3

    new-instance v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x100

    invoke-direct {v3, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/security/Provider$Service;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v3, :cond_6

    new-instance v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x100

    invoke-direct {v3, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x2e

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_2

    const/16 v3, 0x20

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v29, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    :cond_8
    if-eqz v31, :cond_9

    move-object/from16 v2, v31

    check-cast v2, Ljava/security/Provider$Service;

    #setter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {v2, v12}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/security/Provider$Service;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v3, :cond_a

    new-instance v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v29, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    :cond_c
    if-eqz v31, :cond_d

    move-object/from16 v2, v31

    check-cast v2, Ljava/security/Provider$Service;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v12}, Ljava/security/Provider$Service;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/security/Provider$Service;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v3, :cond_e

    new-instance v3, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    invoke-direct/range {p0 .. p0}, Ljava/security/Provider;->servicesChanged()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    :cond_2
    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_4
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProviderNumber()I
    .locals 1

    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    return v0
.end method

.method declared-synchronized getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p1, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    iput-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_8

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    :cond_4
    if-nez v2, :cond_5

    iget-object v3, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_5

    iget-object v2, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :cond_5
    if-nez v2, :cond_6

    iget-object v3, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v3, :cond_6

    iget-object v2, p0, Ljava/security/Provider;->propertyAliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :cond_6
    if-eqz v2, :cond_7

    iput-object p1, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    iput-object p2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    check-cast v2, Ljava/security/Provider$Service;

    iput-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;

    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move-object v2, v1

    goto :goto_1
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    :goto_1
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()D
    .locals 2

    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1, p3, p4}, Ljava/security/Provider;->checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v2, "Provider."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    :cond_3
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    const-string v2, "Provider"

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    :cond_3
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoToProperties(Ljava/security/Provider$Service;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v3, "Provider."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/Properties;

    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    #getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    if-eqz v2, :cond_2

    #getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method setProviderNumber(I)V
    .locals 0

    iput p1, p0, Ljava/security/Provider;->providerNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
