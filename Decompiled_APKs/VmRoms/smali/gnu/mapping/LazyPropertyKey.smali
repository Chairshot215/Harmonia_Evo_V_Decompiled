.class public Lgnu/mapping/LazyPropertyKey;
.super Lgnu/mapping/PropertyKey;
.source "LazyPropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/mapping/PropertyKey",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    .local p0, this:Lgnu/mapping/LazyPropertyKey;,"Lgnu/mapping/LazyPropertyKey<TT;>;"
    invoke-direct {p0, p1}, Lgnu/mapping/PropertyKey;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lgnu/mapping/LazyPropertyKey;,"Lgnu/mapping/LazyPropertyKey<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 26
    .local v11, raw:Ljava/lang/Object;
    instance-of v14, v11, Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 28
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 29
    .local v13, str:Ljava/lang/String;
    const/4 v8, 0x0

    .line 30
    .local v8, factory:Z
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2a

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    move v6, v14

    .line 31
    .local v6, cstart:I
    :goto_0
    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 32
    .local v5, colon:I
    if-le v5, v6, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-lt v5, v14, :cond_2

    .line 33
    :cond_0
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lazy property "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " must have the form \"ClassName:fieldName\" or \"ClassName:staticMethodName\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 30
    .end local v5           #colon:I
    .end local v6           #cstart:I
    :cond_1
    const/4 v14, 0x0

    move v6, v14

    goto :goto_0

    .line 34
    .restart local v5       #colon:I
    .restart local v6       #cstart:I
    :cond_2
    const/4 v9, 0x0

    .line 35
    .local v9, method:Ljava/lang/reflect/Method;
    invoke-virtual {v13, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, cname:Ljava/lang/String;
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, mname:Ljava/lang/String;
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-static {v4, v14, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 46
    .local v3, clas:Ljava/lang/Class;
    if-nez v6, :cond_3

    .line 48
    invoke-virtual {v3, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 60
    .local v12, result:Ljava/lang/Object;,"TT;"
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v12

    .line 63
    .end local v3           #clas:Ljava/lang/Class;
    .end local v4           #cname:Ljava/lang/String;
    .end local v5           #colon:I
    .end local v6           #cstart:I
    .end local v8           #factory:Z
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #mname:Ljava/lang/String;
    .end local v12           #result:Ljava/lang/Object;,"TT;"
    .end local v13           #str:Ljava/lang/String;
    :goto_2
    return-object v14

    .line 52
    .restart local v3       #clas:Ljava/lang/Class;
    .restart local v4       #cname:Ljava/lang/String;
    .restart local v5       #colon:I
    .restart local v6       #cstart:I
    .restart local v8       #factory:Z
    .restart local v9       #method:Ljava/lang/reflect/Method;
    .restart local v10       #mname:Ljava/lang/String;
    .restart local v13       #str:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x1

    :try_start_1
    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/Object;

    aput-object v16, v14, v15

    invoke-virtual {v3, v10, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .restart local v12       #result:Ljava/lang/Object;,"TT;"
    goto :goto_1

    .line 56
    .end local v3           #clas:Ljava/lang/Class;
    .end local v12           #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v14

    move-object v7, v14

    .line 58
    .local v7, ex:Ljava/lang/Throwable;
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lazy property "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has specifier \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" but there is no such "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_4

    const-string v16, "field"

    :goto_3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :cond_4
    const-string v16, "method"

    goto :goto_3

    .end local v4           #cname:Ljava/lang/String;
    .end local v5           #colon:I
    .end local v6           #cstart:I
    .end local v7           #ex:Ljava/lang/Throwable;
    .end local v8           #factory:Z
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #mname:Ljava/lang/String;
    .end local v13           #str:Ljava/lang/String;
    :cond_5
    move-object v14, v11

    .line 63
    goto :goto_2
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V
    .locals 0
    .parameter "container"
    .parameter "specifier"

    .prologue
    .line 68
    .local p0, this:Lgnu/mapping/LazyPropertyKey;,"Lgnu/mapping/LazyPropertyKey<TT;>;"
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
