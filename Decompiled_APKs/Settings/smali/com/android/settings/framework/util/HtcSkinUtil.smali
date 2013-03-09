.class public Lcom/android/settings/framework/util/HtcSkinUtil;
.super Ljava/lang/Object;
.source "HtcSkinUtil.java"


# static fields
.field private static allowSkinChange:Ljava/lang/Boolean;

.field private static getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

.field private static getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;

    .line 51
    sput-object v0, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

    .line 93
    sput-object v0, Lcom/android/settings/framework/util/HtcSkinUtil;->allowSkinChange:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowSkinChange(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .parameter "appInfo"

    .prologue
    const/4 v2, 0x0

    .line 109
    sget-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->allowSkinChange:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 110
    sget-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->allowSkinChange:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "allowSkinChange"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 123
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->allowSkinChange:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    .line 134
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->allowSkinChange:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 126
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_2
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 7
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 24
    invoke-static {}, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 28
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 30
    .local v2, result:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result p2

    .line 41
    .end local v2           #result:Ljava/lang/Integer;
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 31
    .restart local p2
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDrawableResIdentifierMethod()Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 56
    sget-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 57
    sget-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

    .line 85
    :goto_0
    return-object v2

    .line 61
    :cond_0
    :try_start_0
    const-string v3, "com.htc.util.skin.HtcSkinUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "getDrawableResIdentifier"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

    .line 74
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;

    .line 75
    sget-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 62
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;

    .line 65
    sput-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 83
    .end local v1           #e:Ljava/lang/SecurityException;
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethodCache:Ljava/lang/Boolean;

    .line 84
    sput-object v2, Lcom/android/settings/framework/util/HtcSkinUtil;->getDrawableResIdentifierMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 79
    :catch_2
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method
