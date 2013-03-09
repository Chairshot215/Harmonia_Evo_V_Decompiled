.class final Ljavax/xml/validation/SchemaFactoryFinder;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"


# static fields
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final SERVICE_CLASS:Ljava/lang/Class; = null

.field private static final SERVICE_ID:Ljava/lang/String; = null

.field private static final W3C_XML_SCHEMA10_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.0"

.field private static final W3C_XML_SCHEMA11_NS_URI:Ljava/lang/String; = "http://www.w3.org/XML/XMLSchema/v1.1"

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static firstTime:Z


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Ljavax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    sput-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    const-string v3, "jaxp.debug"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sput-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    const-class v1, Ljavax/xml/validation/SchemaFactory;

    sput-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugDisplayClassLoader()V

    :cond_0
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 21

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :try_start_0
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Looking up system property \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The value is \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v14

    if-eqz v14, :cond_4

    :cond_2
    :goto_0
    return-object v14

    :cond_3
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_4

    const-string v18, "The property is undefined."

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_1
    const-string v18, "java.home"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "lib"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jaxp.properties"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_1
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    if-eqz v18, :cond_7

    sget-object v19, Ljavax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    if-eqz v18, :cond_6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    sput-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->firstTime:Z

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read properties file "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_5
    sget-object v18, Ljavax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_6
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    sget-object v18, Ljavax/xml/validation/SchemaFactoryFinder;->cacheProps:Ljava/util/Properties;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "found "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in $java.home/jaxp.properties"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v14

    if-nez v14, :cond_2

    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p0}, Ljavax/xml/validation/SchemaFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URL;

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "looking into "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_b
    :try_start_4
    invoke-virtual {v13}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/validation/SchemaFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    if-eqz v14, :cond_a

    goto/16 :goto_0

    :catch_0
    move-exception v17

    throw v17

    :catch_1
    move-exception v16

    throw v16

    :catch_2
    move-exception v15

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed to look up system property \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catchall_0
    move-exception v18

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v18
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v6

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_9

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v5

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_a

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed to read "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    const-string v18, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    const-string v18, "http://www.w3.org/XML/XMLSchema/v1.0"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_d
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_e

    const-string v18, "attempting to use the platform default XML Schema 1.0 validator"

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_e
    const-string v18, "org.apache.xerces.jaxp.validation.XMLSchemaFactory"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v14

    goto/16 :goto_0

    :cond_f
    const-string v18, "http://www.w3.org/XML/XMLSchema/v1.1"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_10

    const-string v18, "attempting to use the platform default XML Schema 1.1 validator"

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_10
    const-string v18, "org.apache.xerces.jaxp.validation.XMLSchema11Factory"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v14

    goto/16 :goto_0

    :cond_11
    sget-boolean v18, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v18, :cond_12

    const-string v18, "all things were tried, but none was found. bailing out."

    invoke-static/range {v18 .. v18}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private createServiceFileIterator()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_0

    const-class v3, Ljavax/xml/validation/SchemaFactoryFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v3, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file was found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v3, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to enumerate resources "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_0
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using thread context class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using system class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAXP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/validation/SchemaFactory;
    .locals 10

    const/16 v9, 0x50

    sget-boolean v7, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v7, 0x23

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {p0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v2

    :cond_3
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :catch_0
    move-exception v0

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 7

    :try_start_0
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljavax/xml/validation/SchemaFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loaded it from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljavax/xml/validation/SchemaFactory;

    if-eqz v5, :cond_3

    check-cast v1, Ljavax/xml/validation/SchemaFactory;

    :goto_1
    return-object v1

    :cond_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not assignable to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljavax/xml/validation/SchemaFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v4

    throw v4

    :catch_1
    move-exception v3

    throw v3

    :catch_2
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v5, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Ljavax/xml/validation/SchemaFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    sget-boolean v1, Ljavax/xml/validation/SchemaFactoryFinder;->debug:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find a factory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/validation/SchemaFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method
