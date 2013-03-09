.class public Lcom/google/android/finsky/utils/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static final sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .parameter
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, param:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 94
    :goto_0
    return-object v1

    .line 90
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, unused:Ljava/lang/NoSuchMethodException;
    const-string v2, "Method not found: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static viewSetSystemUiVisibility(Landroid/view/View;I)V
    .locals 7
    .parameter "fl"
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    sget-object v1, Lcom/google/android/finsky/utils/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    sget-object v1, Lcom/google/android/finsky/utils/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
