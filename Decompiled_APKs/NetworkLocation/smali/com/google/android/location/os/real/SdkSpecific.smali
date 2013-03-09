.class public abstract Lcom/google/android/location/os/real/SdkSpecific;
.super Ljava/lang/Object;
.source "SdkSpecific.java"


# static fields
.field private static instance:Lcom/google/android/location/os/real/SdkSpecific;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static constructInstance(Ljava/lang/String;)Lcom/google/android/location/os/real/SdkSpecific;
    .locals 2
    .parameter

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/location/os/real/SdkSpecific;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/SdkSpecific;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :catch_2
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/location/os/real/SdkSpecific;
    .locals 4

    .prologue
    .line 35
    const-class v2, Lcom/google/android/location/os/real/SdkSpecific;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/SdkSpecific;->instance:Lcom/google/android/location/os/real/SdkSpecific;

    if-nez v1, :cond_0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .local v0, build:I
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 39
    const-string v1, "com.google.android.location.os.real.SdkSpecific9"

    invoke-static {v1}, Lcom/google/android/location/os/real/SdkSpecific;->constructInstance(Ljava/lang/String;)Lcom/google/android/location/os/real/SdkSpecific;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/SdkSpecific;->instance:Lcom/google/android/location/os/real/SdkSpecific;

    .line 48
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/location/os/real/SdkSpecific;->instance:Lcom/google/android/location/os/real/SdkSpecific;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 40
    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 42
    :try_start_1
    const-string v1, "com.google.android.location.os.real.SdkSpecific8"

    invoke-static {v1}, Lcom/google/android/location/os/real/SdkSpecific;->constructInstance(Ljava/lang/String;)Lcom/google/android/location/os/real/SdkSpecific;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/SdkSpecific;->instance:Lcom/google/android/location/os/real/SdkSpecific;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 44
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported SDK"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public abstract makeFilePrivate(Ljava/io/File;)V
.end method
