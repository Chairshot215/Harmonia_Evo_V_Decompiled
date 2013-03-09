.class public abstract Lgov/nist/javax/sip/header/SIPObject;
.super Lgov/nist/core/GenericObject;
.source "SIPObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    return-void
.end method


# virtual methods
.method public dbgPrint()V
    .locals 0

    invoke-super {p0}, Lgov/nist/core/GenericObject;->dbgPrint()V

    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 23

    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v14, 0x0

    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    aget-object v8, v11, v14

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v21, v18, 0x2

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v21, "stringRepresentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "indentation"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    const-string v21, "int"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/header/SIPObject;->sprint(I)V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_2
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(S)V

    goto/16 :goto_1

    :cond_3
    const-string v21, "char"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/SIPObject;->sprint(C)V

    goto/16 :goto_1

    :cond_4
    const-string v21, "long"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/SIPObject;->sprint(J)V

    goto/16 :goto_1

    :cond_5
    const-string v21, "boolean"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Z)V

    goto/16 :goto_1

    :cond_6
    const-string v21, "double"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/SIPObject;->sprint(D)V

    goto/16 :goto_1

    :cond_7
    const-string v21, "float"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/header/SIPObject;->sprint(F)V

    goto/16 :goto_1

    :cond_8
    const-class v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-class v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_d

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    :goto_2
    const-string v21, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    :goto_3
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const-string v21, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_f
    const-string v21, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPObject;->sprint(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v21, v0

    return-object v21
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2

    iget v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    move-object/from16 v13, p1

    check-cast v13, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :goto_1
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    :goto_2
    array-length v14, v5

    if-ge v10, v14, :cond_d

    aget-object v2, v5, v10

    aget-object v7, v9, v10

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    and-int/lit8 v14, v11, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v14, "stringRepresentation"

    invoke-virtual {v3, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "indentation"

    invoke-virtual {v3, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "int"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v14, v15, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    const-string v14, "short"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v14, v15, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_5
    const-string v14, "char"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v14, v15, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v14, "long"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v14, "boolean"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v14, v15, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v14, "double"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v14, "float"

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_b

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "accessed field "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "modifier  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "modifier.private  2"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_d
    const-class v14, Lgov/nist/javax/sip/header/SIPObject;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 23

    if-nez p1, :cond_0

    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p1

    check-cast v18, Lgov/nist/core/GenericObject;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v12, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_12

    aget-object v3, v6, v12

    aget-object v8, v11, v12

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    and-int/lit8 v19, v13, 0x2

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v19, "stringRepresentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "indentation"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v19, "int"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v19, "short"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v19, "char"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v19, "long"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v19, "boolean"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v19, "double"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v21

    cmpl-double v19, v19, v21

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v19, "float"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v20

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v19, "unknown type"

    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    if-nez v14, :cond_c

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_c
    if-nez v9, :cond_d

    if-nez v14, :cond_2

    :cond_d
    if-nez v9, :cond_e

    if-eqz v14, :cond_2

    :cond_e
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    check-cast v14, Ljava/lang/String;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object v0, v9

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    if-eqz v19, :cond_10

    check-cast v14, Lgov/nist/core/GenericObject;

    invoke-virtual {v14}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v15

    check-cast v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9}, Lgov/nist/core/GenericObject;->getMatcher()Lgov/nist/core/Match;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_2

    check-cast v14, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_12
    const-class v19, Lgov/nist/javax/sip/header/SIPObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObject;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
