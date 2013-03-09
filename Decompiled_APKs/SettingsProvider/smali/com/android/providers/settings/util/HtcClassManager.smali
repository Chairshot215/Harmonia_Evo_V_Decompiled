.class public final Lcom/android/providers/settings/util/HtcClassManager;
.super Ljava/lang/Object;
.source "HtcClassManager.java"


# static fields
.field private static final CLASS_LOCKER:Ljava/lang/Object; = null

.field private static final DEBUG:Z = true

.field private static final WARNING_DEBUG:Z = true

.field private static sClassSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/settings/util/HtcClassManager;->CLASS_LOCKER:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/util/HtcClassManager;->sClassSet:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v1, Lcom/android/providers/settings/util/HtcClassManager;->sClassSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/android/providers/settings/util/HtcClassManager;->sClassSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 117
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 110
    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Lcom/android/providers/settings/util/HtcClassManager;->CLASS_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/providers/settings/util/HtcClassManager;->sClassSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 62
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 365
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 371
    :goto_0
    return-object v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 330
    invoke-static {p0}, Lcom/android/providers/settings/util/HtcClassManager;->getCacheClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 331
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 333
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 334
    invoke-static {v1, p1}, Lcom/android/providers/settings/util/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 151
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter "className"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/android/providers/settings/util/HtcClassManager;->getCacheClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 182
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 183
    invoke-static {v0, p1, p2}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 185
    :cond_0
    return-object v1
.end method

.method public static varargs invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "className"
    .parameter "methodName"
    .parameter "obj"
    .parameter "args"

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, result:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 284
    .local v2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    array-length v4, p3

    if-eqz v4, :cond_0

    .line 285
    array-length v4, p3

    new-array v2, v4, [Ljava/lang/Class;

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    .line 287
    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0           #i:I
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 293
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 294
    invoke-static {v1, p2, p3}, Lcom/android/providers/settings/util/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 296
    .end local v3           #result:Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public static varargs invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "className"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/providers/settings/util/HtcClassManager;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .parameter "obj"
    .parameter "args"

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 220
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 228
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 221
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "method"
    .parameter "args"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/providers/settings/util/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
