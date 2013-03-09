.class public Lcom/htc/opensense/social/SocialNetworkUtils;
.super Ljava/lang/Object;
.source "SocialNetworkUtils.java"

# interfaces
.implements Lcom/htc/opensense/social/SNConstants;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SocialNetworkUtils"

    sput-object v0, Lcom/htc/opensense/social/SocialNetworkUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPersons(Landroid/database/CrossProcessCursor;)[Lcom/htc/opensense/social/data/Person;
    .locals 26

    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Lcom/htc/opensense/social/data/Person;

    move-object/from16 v20, v0

    const-class v23, Lcom/htc/opensense/social/data/Person;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, v17

    array-length v12, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_1

    aget-object v14, v2, v9

    :try_start_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v23, "set"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v0, v4

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const/16 v23, 0x0

    aget-object v3, v4, v23

    const-class v23, Lcom/htc/opensense/social/data/Person;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    move v11, v10

    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v23

    if-eqz v23, :cond_3

    add-int/lit8 v10, v11, 0x1

    :try_start_2
    aget-object v19, v20, v11

    const/4 v8, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->getColumnCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v3, v23, v24

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getLong(I)J

    move-result-wide v21

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_2
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_6
    const/16 v20, 0x0

    :cond_3
    return-object v20

    :cond_4
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-class v23, [I

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/SocialNetworkUtils;->parseStringToIntegerArray(Ljava/lang/String;)[I

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_3
    move-exception v5

    :goto_7
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    :cond_5
    const/16 v23, 0x1

    :try_start_4
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_8
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6

    :cond_6
    move v11, v10

    goto/16 :goto_2

    :catch_5
    move-exception v5

    move v10, v11

    goto :goto_8

    :catch_6
    move-exception v5

    move v10, v11

    goto :goto_7

    :catch_7
    move-exception v5

    move v10, v11

    goto :goto_5
.end method

.method parseStringToIntegerArray(Ljava/lang/String;)[I
    .locals 4

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    :try_start_0
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_1
.end method
