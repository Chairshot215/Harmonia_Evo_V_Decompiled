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

    .prologue
    .line 21
    const-string v0, "SocialNetworkUtils"

    sput-object v0, Lcom/htc/opensense/social/SocialNetworkUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPersons(Landroid/database/CrossProcessCursor;)[Lcom/htc/opensense/social/data/Person;
    .locals 26
    .parameter "cursor"

    .prologue
    .line 24
    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Lcom/htc/opensense/social/data/Person;

    move-object/from16 v20, v0

    .line 25
    .local v20, persons:[Lcom/htc/opensense/social/data/Person;
    const-class v23, Lcom/htc/opensense/social/data/Person;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    .line 26
    .local v17, methods:[Ljava/lang/reflect/Method;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v15, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    move-object/from16 v2, v17

    .local v2, arr$:[Ljava/lang/reflect/Method;
    array-length v12, v2

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v12, :cond_1

    aget-object v14, v2, v9

    .line 29
    .local v14, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    .line 30
    .local v16, methodName:Ljava/lang/String;
    const-string v23, "set"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 31
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

    .line 32
    .local v7, getter:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 33
    .local v4, clazzs:[Ljava/lang/Class;
    array-length v0, v4

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 34
    const/16 v23, 0x0

    aget-object v3, v4, v23

    .line 35
    .local v3, clazz:Ljava/lang/Class;
    const-class v23, Lcom/htc/opensense/social/data/Person;

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 36
    .local v6, getMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 37
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v4           #clazzs:[Ljava/lang/Class;
    .end local v6           #getMethod:Ljava/lang/reflect/Method;
    .end local v7           #getter:Ljava/lang/String;
    .end local v16           #methodName:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v5

    .line 43
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    .line 46
    .local v5, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    .end local v14           #method:Ljava/lang/reflect/Method;
    :cond_1
    const/4 v10, 0x0

    .local v10, k:I
    move v11, v10

    .line 51
    .end local v10           #k:I
    .local v11, k:I
    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v23

    if-eqz v23, :cond_3

    .line 52
    add-int/lit8 v10, v11, 0x1

    .end local v11           #k:I
    .restart local v10       #k:I
    :try_start_2
    aget-object v19, v20, v11

    .line 53
    .local v19, p:Lcom/htc/opensense/social/data/Person;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/database/CrossProcessCursor;->getColumnCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_6

    .line 54
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v18

    .line 55
    .local v18, name:Ljava/lang/String;
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

    .line 56
    .local v13, m:Ljava/lang/reflect/Method;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v3, v23, v24

    .line 57
    .restart local v3       #clazz:Ljava/lang/Class;
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 58
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v21

    .line 59
    .local v21, value:I
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

    .line 53
    .end local v21           #value:I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 60
    :cond_2
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 61
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getLong(I)J

    move-result-wide v21

    .line 62
    .local v21, value:J
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

    .line 76
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v8           #i:I
    .end local v13           #m:Ljava/lang/reflect/Method;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #p:Lcom/htc/opensense/social/data/Person;
    .end local v21           #value:J
    :catch_2
    move-exception v5

    .line 78
    .local v5, e:Ljava/lang/IllegalArgumentException;
    :goto_5
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 86
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :goto_6
    const/16 v20, 0x0

    .end local v10           #k:I
    .end local v20           #persons:[Lcom/htc/opensense/social/data/Person;
    :cond_3
    return-object v20

    .line 64
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v8       #i:I
    .restart local v10       #k:I
    .restart local v13       #m:Ljava/lang/reflect/Method;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #p:Lcom/htc/opensense/social/data/Person;
    .restart local v20       #persons:[Lcom/htc/opensense/social/data/Person;
    :cond_4
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 65
    .local v21, value:Ljava/lang/String;
    const-class v23, [I

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 66
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

    .line 79
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v8           #i:I
    .end local v13           #m:Ljava/lang/reflect/Method;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #p:Lcom/htc/opensense/social/data/Person;
    .end local v21           #value:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 81
    .local v5, e:Ljava/lang/IllegalAccessException;
    :goto_7
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    .line 68
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v8       #i:I
    .restart local v13       #m:Ljava/lang/reflect/Method;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #p:Lcom/htc/opensense/social/data/Person;
    .restart local v21       #value:Ljava/lang/String;
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

    .line 82
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v8           #i:I
    .end local v13           #m:Ljava/lang/reflect/Method;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #p:Lcom/htc/opensense/social/data/Person;
    .end local v21           #value:Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 84
    .local v5, e:Ljava/lang/reflect/InvocationTargetException;
    :goto_8
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6

    .end local v5           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v8       #i:I
    .restart local v19       #p:Lcom/htc/opensense/social/data/Person;
    :cond_6
    move v11, v10

    .line 74
    .end local v10           #k:I
    .restart local v11       #k:I
    goto/16 :goto_2

    .line 82
    .end local v8           #i:I
    .end local v19           #p:Lcom/htc/opensense/social/data/Person;
    :catch_5
    move-exception v5

    move v10, v11

    .end local v11           #k:I
    .restart local v10       #k:I
    goto :goto_8

    .line 79
    .end local v10           #k:I
    .restart local v11       #k:I
    :catch_6
    move-exception v5

    move v10, v11

    .end local v11           #k:I
    .restart local v10       #k:I
    goto :goto_7

    .line 76
    .end local v10           #k:I
    .restart local v11       #k:I
    :catch_7
    move-exception v5

    move v10, v11

    .end local v11           #k:I
    .restart local v10       #k:I
    goto :goto_5
.end method

.method parseStringToIntegerArray(Ljava/lang/String;)[I
    .locals 4
    .parameter "value"

    .prologue
    .line 91
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, array:[Ljava/lang/String;
    array-length v3, v0

    new-array v2, v3, [I

    .line 93
    .local v2, numbers:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 95
    :try_start_0
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v2

    .line 96
    :catch_0
    move-exception v3

    goto :goto_1
.end method
