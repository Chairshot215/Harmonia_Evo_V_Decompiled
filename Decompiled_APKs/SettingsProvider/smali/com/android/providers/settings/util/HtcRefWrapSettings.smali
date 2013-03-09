.class public final Lcom/android/providers/settings/util/HtcRefWrapSettings;
.super Ljava/lang/Object;
.source "HtcRefWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/util/HtcRefWrapSettings$HtcServices;,
        Lcom/android/providers/settings/util/HtcRefWrapSettings$Secure;,
        Lcom/android/providers/settings/util/HtcRefWrapSettings$System;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HTC_SERVICES_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$HTCservices"

.field private static final SECURE_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

.field private static final SYSTEM_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$System"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WARNING_DEBUG:Z = true

.field private static sHtcServiceClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sSecureClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sSystemClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method public static getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "table"
    .parameter "defList"

    .prologue
    .line 205
    const-string v2, "SETTINGS_TO_BACKUP"

    invoke-static {p0, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 207
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 209
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->removeRedundantKey([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 216
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 210
    .restart local p1
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/providers/settings/util/HtcDatabaseTable;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 179
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 181
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 188
    .end local p2           #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 182
    .restart local p2       #defaultValue:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "table"
    .parameter "fieldName"
    .parameter "defKeyName"

    .prologue
    .line 159
    invoke-static {p0, p1, p2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getField(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .parameter "table"
    .parameter "fieldName"

    .prologue
    .line 118
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_0

    .line 119
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 127
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_4

    .line 129
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_2

    .line 130
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 138
    const/4 v0, 0x0

    .line 143
    :goto_2
    return-object v0

    .line 120
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_1

    .line 121
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getSecureClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 123
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getHtcServicesClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 131
    :cond_2
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    if-ne p0, v2, :cond_3

    .line 132
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$Secure does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    :cond_3
    sget-object v2, Lcom/android/providers/settings/util/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$HTCservices does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_4
    invoke-static {v1, p1}, Lcom/android/providers/settings/util/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 143
    .local v0, field:Ljava/lang/reflect/Field;
    goto :goto_2
.end method

.method private static getHtcServicesClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 97
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 98
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$HTCservices"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sHtcServiceClass:Ljava/lang/ref/SoftReference;

    .line 101
    :cond_1
    return-object v0
.end method

.method private static getSecureClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 77
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 78
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    .line 81
    :cond_1
    return-object v0
.end method

.method private static getSystemClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 57
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 58
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$System"

    invoke-static {v1}, Lcom/android/providers/settings/util/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    .line 61
    :cond_1
    return-object v0
.end method

.method private static removeRedundantKey([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "list"

    .prologue
    .line 221
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 223
    .local v2, listSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    array-length v1, p0

    .line 224
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    aget-object v5, p0, v0

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 229
    .local v4, objArray:[Ljava/lang/Object;
    array-length v5, v4

    const-class v6, [Ljava/lang/String;

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 232
    .local v3, newList:[Ljava/lang/String;
    return-object v3
.end method
