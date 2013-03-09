.class public Lcom/android/providers/settings/util/HtcRefWrapEnvironment;
.super Ljava/lang/Object;
.source "HtcRefWrapEnvironment.java"


# static fields
.field private static final ENVIRONMENT_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.os.HtcWrapEnvironment"

.field private static final TAG:Ljava/lang/String;

.field private static sHasPhoneStorageCached:Ljava/lang/Boolean;

.field private static sHasPhoneStorageMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasRemovableStorageSlotCached:Ljava/lang/Boolean;

.field private static sHasRemovableStorageSlotMethod:Ljava/lang/ref/SoftReference;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->TAG:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotCached:Ljava/lang/Boolean;

    .line 29
    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageCached:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPhoneStorage()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 86
    const-string v1, "com.htc.wrap.android.os.HtcWrapEnvironment"

    const-string v3, "hasPhoneStorage"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageMethod:Ljava/lang/ref/SoftReference;

    .line 90
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageCached:Ljava/lang/Boolean;

    .line 93
    :cond_0
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #method:Ljava/lang/reflect/Method;
    check-cast v0, Ljava/lang/reflect/Method;

    .line 95
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 97
    const-string v1, "com.htc.wrap.android.os.HtcWrapEnvironment"

    const-string v3, "hasPhoneStorage"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasPhoneStorageMethod:Ljava/lang/ref/SoftReference;

    .line 102
    :cond_1
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 106
    :goto_1
    return v2

    :cond_2
    move v1, v2

    .line 90
    goto :goto_0

    .line 104
    :cond_3
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->TAG:Ljava/lang/String;

    const-string v3, "HtcWrapEnvironment.hasPhoneStorage() doesn\'t exist."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static hasRemovableStorageSlot()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 47
    const-string v1, "com.htc.wrap.android.os.HtcWrapEnvironment"

    const-string v3, "hasRemovableStorageSlot"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotMethod:Ljava/lang/ref/SoftReference;

    .line 51
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotCached:Ljava/lang/Boolean;

    .line 54
    :cond_0
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #method:Ljava/lang/reflect/Method;
    check-cast v0, Ljava/lang/reflect/Method;

    .line 56
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 58
    const-string v1, "com.htc.wrap.android.os.HtcWrapEnvironment"

    const-string v3, "hasRemovableStorageSlot"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/providers/settings/util/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->sHasRemovableStorageSlotMethod:Ljava/lang/ref/SoftReference;

    .line 63
    :cond_1
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 67
    :goto_1
    return v2

    :cond_2
    move v1, v2

    .line 51
    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->TAG:Ljava/lang/String;

    const-string v3, "HtcWrapEnvironment.hasRemovableStorageSlot() doesn\'t exist."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
