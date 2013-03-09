.class public final Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;
.super Ljava/lang/Object;
.source "HtcRefWrapSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SECURE_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

.field private static final SYSTEM_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$System"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WARNING_DEBUG:Z = true

.field private static sGetShowQuickTipCached:Ljava/lang/Boolean;

.field private static sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

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

.field private static sSetShowQuickTipCached:Ljava/lang/Boolean;

.field private static sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 47
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 49
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipCached:Ljava/lang/Boolean;

    .line 50
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipCached:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HTC_SPEAK_ANNOUNCE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v1, "HTC_SPEAK_ANNOUNCE"

    const-string v2, "htc_speak_announce"

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    .line 292
    :cond_0
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    return-object v0
.end method

.method public static getConstValue(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;I)I
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter "defValue"

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 176
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 178
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 185
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 179
    .restart local p2
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter "defKeyName"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 147
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 149
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move-object v2, p2

    .line 156
    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .parameter "table"
    .parameter "fieldName"

    .prologue
    .line 108
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_0

    .line 109
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 115
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_2

    .line 117
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_1

    .line 118
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 124
    const/4 v0, 0x0

    .line 129
    :goto_2
    return-object v0

    .line 111
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSecureClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 120
    :cond_1
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$Secure does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {v1, p1}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 129
    .local v0, field:Ljava/lang/reflect/Field;
    goto :goto_2
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
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 86
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 87
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    .line 90
    :cond_1
    return-object v0
.end method

.method public static getShowQuickTip(Landroid/content/ContentResolver;)Z
    .locals 8
    .parameter "cr"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 200
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 202
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 229
    :goto_0
    return v5

    .line 209
    :cond_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_1

    .line 210
    const-string v3, "getShowQuickTip"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v5

    invoke-static {v1, v3, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 212
    .local v2, method:Ljava/lang/reflect/Method;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 213
    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipCached:Ljava/lang/Boolean;

    .line 216
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_1
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 218
    .restart local v2       #method:Ljava/lang/reflect/Method;
    if-nez v2, :cond_2

    .line 220
    const-string v3, "getShowQuickTip"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v5

    invoke-static {v1, v3, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 222
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 224
    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v5

    .line 225
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .end local v0           #args:[Ljava/lang/Object;
    :cond_3
    move v3, v5

    .line 213
    goto :goto_1

    .line 227
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_4
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v4, "Settings.System.getShowQuickTip(ContentResolver) doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 66
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 67
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$System"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    .line 70
    :cond_1
    return-object v0
.end method

.method public static setShowQuickTip(Landroid/content/ContentResolver;Z)V
    .locals 9
    .parameter "cr"
    .parameter "value"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 245
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 247
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v6, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 253
    :cond_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_1

    .line 254
    const-string v3, "setShowQuickTip"

    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 257
    .local v2, method:Ljava/lang/reflect/Method;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 258
    if-eqz v2, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipCached:Ljava/lang/Boolean;

    .line 261
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_1
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 263
    .restart local v2       #method:Ljava/lang/reflect/Method;
    if-nez v2, :cond_2

    .line 265
    const-string v3, "setShowQuickTip"

    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 268
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSetShowQuickTipMethod:Ljava/lang/ref/SoftReference;

    .line 270
    :cond_2
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v4

    .line 271
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v3, v5

    .line 258
    goto :goto_0

    .line 273
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_4
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v4, "Settings.System.setShowQuickTip(ContentResolver, boolean) doesn\'t exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
