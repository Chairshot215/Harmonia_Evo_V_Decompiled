.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static final NO_JAVA6_FEATURES:Ljava/lang/String; = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I

.field resultBuffer:[B

.field resultLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "java2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "java4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "java4x"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "java5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "java6compat5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "java6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "java7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 341
    new-instance v0, Lgnu/kawa/util/PreProcess;

    invoke-direct {v0}, Lgnu/kawa/util/PreProcess;-><init>()V

    .line 343
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "true"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "false"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 347
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 42
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/kawa/util/PreProcess;->resultLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    .line 61
    const/4 v5, 0x0

    .line 63
    const/16 v6, 0x7d0

    new-array v6, v6, [B

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, -0x1

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 70
    const/4 v11, -0x1

    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v5

    move/from16 v5, v21

    move/from16 v22, v14

    move v14, v7

    move/from16 v7, v22

    move/from16 v23, v12

    move v12, v9

    move/from16 v9, v23

    move/from16 v24, v10

    move v10, v11

    move/from16 v11, v24

    move/from16 v25, v8

    move v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v6

    move-object v6, v15

    move-object/from16 v15, v26

    .line 80
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v17

    .line 81
    if-gez v17, :cond_1

    move v5, v14

    move-object v7, v15

    move/from16 v9, v16

    .line 268
    :goto_1
    if-eqz v8, :cond_0

    .line 270
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unterminated "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 273
    :cond_0
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    .line 274
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->resultLength:I

    .line 275
    return v9

    .line 83
    :cond_1
    add-int/lit8 v18, v14, 0xa

    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 85
    mul-int/lit8 v18, v14, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 86
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, v18

    .line 89
    :cond_2
    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    if-lez v14, :cond_3

    const/16 v18, 0x1

    sub-int v18, v14, v18

    aget-byte v18, v15, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 91
    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    move/from16 v14, v18

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    if-ltz v10, :cond_5

    if-gez v12, :cond_5

    if-gtz v5, :cond_5

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    if-eq v10, v9, :cond_4

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 100
    :cond_4
    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 107
    const/16 v18, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v18

    .line 109
    const/16 v19, 0x2f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 110
    const/16 v18, 0x0

    .line 118
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 122
    :goto_3
    if-eqz v18, :cond_5

    .line 124
    add-int/lit8 v5, v14, 0x1

    const/16 v16, 0x2f

    aput-byte v16, v15, v14

    .line 125
    add-int/lit8 v14, v5, 0x1

    const/16 v16, 0x2f

    aput-byte v16, v15, v5

    .line 126
    add-int/lit8 v5, v14, 0x1

    const/16 v16, 0x20

    aput-byte v16, v15, v14

    .line 127
    const/4 v14, 0x1

    .line 128
    const/16 v16, 0x1

    move/from16 v21, v14

    move v14, v5

    move/from16 v5, v21

    .line 131
    :cond_5
    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    if-gez v12, :cond_28

    .line 135
    if-lez v8, :cond_27

    if-eq v10, v9, :cond_27

    const/16 v12, 0x2f

    move/from16 v0, v17

    move v1, v12

    if-ne v0, v1, :cond_27

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v12

    .line 138
    if-gez v12, :cond_b

    move v5, v14

    move-object v7, v15

    move/from16 v9, v16

    .line 139
    goto/16 :goto_1

    .line 111
    :cond_6
    const/16 v19, 0x2a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 113
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 114
    const/16 v19, 0x23

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    const/16 v18, 0x1

    goto :goto_2

    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 117
    :cond_9
    const/16 v18, 0x1

    goto :goto_2

    .line 121
    :cond_a
    const/16 v18, 0x1

    goto :goto_3

    .line 140
    :cond_b
    const/16 v17, 0x2f

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 141
    add-int/lit8 v17, v14, 0x1

    const/16 v18, 0x2f

    aput-byte v18, v15, v14

    move/from16 v21, v12

    move v12, v5

    move/from16 v5, v21

    move/from16 v22, v17

    move/from16 v17, v16

    move/from16 v16, v22

    .line 158
    :goto_4
    move v0, v5

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v15, v16

    .line 159
    add-int/lit8 v16, v16, 0x1

    .line 160
    const/16 v18, 0xd

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/16 v18, 0xa

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 162
    :cond_c
    const/4 v5, -0x1

    .line 163
    const/4 v12, 0x0

    move/from16 v21, v13

    move v13, v5

    move/from16 v5, v21

    .line 164
    :goto_5
    const/4 v14, 0x1

    sub-int v14, v16, v14

    if-ge v5, v14, :cond_11

    .line 166
    aget-byte v14, v15, v5

    const/16 v18, 0x20

    move v0, v14

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    aget-byte v14, v15, v5

    const/16 v18, 0x9

    move v0, v14

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 169
    if-gez v13, :cond_25

    move v12, v5

    move v13, v5

    .line 164
    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 144
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 145
    if-gez v5, :cond_f

    move v5, v14

    move-object v7, v15

    move/from16 v9, v16

    .line 146
    goto/16 :goto_1

    .line 147
    :cond_f
    const/4 v12, -0x1

    .line 148
    const/16 v16, 0x1

    .line 149
    const/16 v17, 0x20

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 152
    const/16 v17, 0x20

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    const/16 v17, 0x9

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    .line 153
    :cond_10
    const/16 v17, -0x1

    move/from16 v21, v17

    move/from16 v17, v16

    move/from16 v16, v14

    move/from16 v14, v21

    goto :goto_4

    .line 173
    :cond_11
    sub-int v5, v12, v13

    const/4 v14, 0x4

    if-lt v5, v14, :cond_24

    aget-byte v5, v15, v13

    const/16 v14, 0x2f

    if-ne v5, v14, :cond_24

    add-int/lit8 v5, v13, 0x1

    aget-byte v5, v15, v5

    const/16 v14, 0x2a

    if-ne v5, v14, :cond_24

    const/4 v5, 0x1

    sub-int v5, v12, v5

    aget-byte v5, v15, v5

    const/16 v14, 0x2a

    if-ne v5, v14, :cond_24

    aget-byte v5, v15, v12

    const/16 v14, 0x2f

    if-ne v5, v14, :cond_24

    .line 179
    add-int/lit8 v5, v13, 0x2

    .line 181
    :goto_7
    if-ge v5, v12, :cond_12

    aget-byte v13, v15, v5

    const/16 v14, 0x20

    if-ne v13, v14, :cond_12

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 183
    :cond_12
    add-int/lit8 v12, v12, -0x2

    .line 185
    :goto_8
    if-le v12, v5, :cond_13

    aget-byte v13, v15, v12

    const/16 v14, 0x20

    if-ne v13, v14, :cond_13

    .line 186
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 187
    :cond_13
    aget-byte v13, v15, v5

    const/16 v14, 0x23

    if-ne v13, v14, :cond_24

    .line 189
    new-instance v6, Ljava/lang/String;

    sub-int v11, v12, v5

    add-int/lit8 v11, v11, 0x1

    const-string v12, "ISO-8859-1"

    invoke-direct {v6, v15, v5, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 192
    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v11, v0

    .line 196
    if-lez v5, :cond_16

    .line 198
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v21, v13

    move-object v13, v12

    move-object v12, v5

    move-object/from16 v5, v21

    .line 208
    :goto_9
    const-string v14, "#ifdef"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    const-string v14, "#ifndef"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 210
    :cond_14
    if-nez v5, :cond_15

    .line 212
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ":"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v14, v0

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ": warning - undefined keyword: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    :cond_15
    add-int/lit8 v6, v8, 0x1

    .line 217
    if-lez v7, :cond_17

    move-object v5, v13

    move v8, v9

    move v9, v11

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    .line 260
    :goto_a
    const/4 v10, -0x1

    .line 261
    const/4 v11, 0x0

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 263
    const/4 v12, 0x0

    move/from16 v13, v16

    move-object/from16 v21, v5

    move v5, v12

    move v12, v10

    move v10, v8

    move v8, v7

    move v7, v6

    move-object/from16 v6, v21

    move/from16 v22, v11

    move v11, v9

    move/from16 v9, v22

    :goto_b
    move/from16 v14, v16

    move/from16 v16, v17

    .line 267
    goto/16 :goto_0

    .line 205
    :cond_16
    const-string v5, ""

    .line 206
    const/4 v12, 0x0

    move-object v13, v6

    move-object/from16 v21, v5

    move-object v5, v12

    move-object/from16 v12, v21

    goto :goto_9

    .line 219
    :cond_17
    const/4 v8, 0x3

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x6e

    if-ne v8, v12, :cond_18

    const/4 v8, 0x1

    :goto_c
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v12, :cond_19

    const/4 v5, 0x1

    :goto_d
    if-eq v8, v5, :cond_2b

    move-object v5, v13

    move v7, v6

    move v8, v9

    move v9, v11

    .line 223
    goto :goto_a

    .line 219
    :cond_18
    const/4 v8, 0x0

    goto :goto_c

    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    .line 226
    :cond_1a
    const-string v5, "#else"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 228
    if-nez v8, :cond_1b

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    move-object v5, v13

    move v6, v7

    move v9, v11

    move v7, v8

    move v8, v10

    goto :goto_a

    .line 230
    :cond_1b
    if-ne v8, v7, :cond_1c

    .line 232
    const/4 v5, -0x1

    .line 233
    const/4 v6, 0x0

    move v7, v8

    move v9, v11

    move v8, v5

    move-object v5, v13

    goto :goto_a

    .line 238
    :cond_1c
    if-nez v7, :cond_2a

    move-object v5, v13

    move v6, v8

    move v7, v8

    move v8, v9

    move v9, v11

    .line 239
    goto/16 :goto_a

    .line 242
    :cond_1d
    const-string v5, "#endif"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 244
    if-nez v8, :cond_1e

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 246
    :cond_1e
    if-ne v8, v7, :cond_1f

    .line 248
    const/4 v5, 0x0

    .line 249
    const/4 v6, -0x1

    .line 253
    :goto_e
    add-int/lit8 v7, v8, -0x1

    move v8, v6

    move v9, v11

    move v6, v5

    move-object v5, v13

    goto/16 :goto_a

    .line 251
    :cond_1f
    if-lez v7, :cond_29

    move v5, v7

    move v6, v9

    .line 252
    goto :goto_e

    .line 256
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown command: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    move-object v5, v13

    move v6, v7

    move v9, v11

    move v7, v8

    move v8, v10

    goto/16 :goto_a

    .line 265
    :cond_21
    if-gez v14, :cond_23

    .line 266
    const/16 v18, 0x9

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    add-int/lit8 v5, v9, 0x8

    and-int/lit8 v5, v5, -0x8

    :goto_f
    move v9, v5

    move v5, v12

    move v12, v14

    goto/16 :goto_b

    :cond_22
    add-int/lit8 v5, v9, 0x1

    goto :goto_f

    :cond_23
    move v5, v12

    move v12, v14

    goto/16 :goto_b

    :cond_24
    move-object v5, v6

    move v9, v11

    move v6, v7

    move v7, v8

    move v8, v10

    goto/16 :goto_a

    :cond_25
    move v12, v5

    goto/16 :goto_6

    :cond_26
    move/from16 v17, v16

    move/from16 v16, v14

    goto/16 :goto_4

    :cond_27
    move v12, v5

    move/from16 v5, v17

    move/from16 v17, v16

    move/from16 v16, v14

    goto/16 :goto_4

    :cond_28
    move/from16 v21, v17

    move/from16 v17, v16

    move/from16 v16, v14

    move v14, v12

    move v12, v5

    move/from16 v5, v21

    goto/16 :goto_4

    :cond_29
    move v5, v7

    move v6, v10

    goto :goto_e

    :cond_2a
    move-object v5, v13

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v11

    goto/16 :goto_a

    :cond_2b
    move-object v5, v13

    move v8, v10

    move v9, v11

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    goto/16 :goto_a
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v4, 0x2d

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 280
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 282
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 285
    :goto_0
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 287
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 290
    :cond_0
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    sget-object v2, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    .line 293
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " maps to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 295
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_4

    .line 302
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_3
    :goto_2
    return-void

    .line 303
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_9

    .line 305
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    if-le v0, v2, :cond_8

    .line 308
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x2

    :goto_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 312
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 313
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    :goto_4
    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v1, v2

    .line 308
    goto :goto_3

    .line 314
    :cond_6
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 316
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_7
    move-object v0, v2

    goto :goto_4

    .line 322
    :cond_8
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 328
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 330
    :catch_0
    move-exception v0

    .line 332
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method
