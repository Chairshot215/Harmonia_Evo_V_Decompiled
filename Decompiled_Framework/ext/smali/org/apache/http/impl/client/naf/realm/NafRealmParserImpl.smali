.class public Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;
.super Ljava/lang/Object;
.source "NafRealmParserImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/realm/NafRealmParser;


# static fields
.field public static final REALM_SEPARATOR:Ljava/lang/String; = ";"

.field public static final URI_SEPARATOR:Ljava/lang/String; = "@"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/realm/NafRealmException;
        }
    .end annotation

    sget v14, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v14, v14, 0x2

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parse()#started   nafRealm="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "NAF\'s realm can\'t be null or empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    const-string v14, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    if-ge v10, v14, :cond_3

    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "At least one part should be here!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    :cond_4
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "Wrong input data format! Empty realm part!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v14, "@"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    array-length v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_8

    :cond_7
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect format of NAF\'s realm. realmItem="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-nez v14, :cond_a

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_b

    :cond_9
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "GBA type marker shouldn\'t be empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-nez v14, :cond_d

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_e

    :cond_c
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "NAF\'s FQDN shouldn\'t be empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_d
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_e
    invoke-static {v2}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->getTypeByName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    move-result-object v8

    if-nez v8, :cond_f

    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "Unknown realm type!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_f
    new-instance v5, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    invoke-direct {v5, v1, v8, v4}, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    const/4 v14, 0x0

    new-array v14, v14, [Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    new-instance v13, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v6}, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;-><init>(Ljava/lang/String;[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;)V

    sget v14, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v14, v14, 0x4

    if-lez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parse()#finished   result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_11
    return-object v13
.end method
