.class public final Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;
.super Ljava/lang/Object;
.source "HtcRefIfActivityManager.java"


# static fields
.field private static sIsGuestModeCached:Ljava/lang/Boolean;

.field private static sIsGuestModeMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 43
    sget-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeCached:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 44
    const-string v6, "android.app.HtcIfActivityManager"

    const-string v7, "isGuestMode"

    new-array v8, v4, [Ljava/lang/Class;

    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeMethod:Ljava/lang/ref/SoftReference;

    .line 48
    if-eqz v0, :cond_3

    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeCached:Ljava/lang/Boolean;

    .line 51
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, service:Ljava/lang/Object;
    sget-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 56
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 58
    const-string v6, "android.app.HtcIfActivityManager"

    const-string v7, "isGuestMode"

    new-array v4, v4, [Ljava/lang/Class;

    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v4, v5

    invoke-static {v6, v7, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/android/app/HtcRefIfActivityManager;->sIsGuestModeMethod:Ljava/lang/ref/SoftReference;

    .line 63
    :cond_1
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 66
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #service:Ljava/lang/Object;
    :cond_2
    return v5

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v2, v5

    .line 48
    goto :goto_0
.end method
