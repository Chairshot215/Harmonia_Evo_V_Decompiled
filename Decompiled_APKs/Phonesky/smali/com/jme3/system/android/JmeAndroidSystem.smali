.class public Lcom/jme3/system/android/JmeAndroidSystem;
.super Lcom/jme3/system/JmeSystemDelegate;
.source "JmeAndroidSystem.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jme3/system/JmeSystemDelegate;-><init>()V

    return-void
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/jme3/system/android/JmeAndroidSystem;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 128
    sput-object p0, Lcom/jme3/system/android/JmeAndroidSystem;->activity:Landroid/app/Activity;

    .line 129
    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 120
    sput-object p0, Lcom/jme3/system/android/JmeAndroidSystem;->res:Landroid/content/res/Resources;

    .line 121
    return-void
.end method


# virtual methods
.method public initialize(Lcom/jme3/system/AppSettings;)V
    .locals 7
    .parameter "settings"

    .prologue
    .line 57
    iget-boolean v3, p0, Lcom/jme3/system/android/JmeAndroidSystem;->initialized:Z

    if-eqz v3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jme3/system/android/JmeAndroidSystem;->initialized:Z

    .line 63
    :try_start_0
    new-instance v2, Lcom/jme3/util/JmeFormatter;

    invoke-direct {v2}, Lcom/jme3/util/JmeFormatter;-><init>()V

    .line 65
    .local v2, formatter:Lcom/jme3/util/JmeFormatter;
    new-instance v0, Lcom/jme3/util/AndroidLogHandler;

    invoke-direct {v0}, Lcom/jme3/util/AndroidLogHandler;-><init>()V

    .line 66
    .local v0, consoleHandler:Ljava/util/logging/Handler;
    invoke-virtual {v0, v2}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #consoleHandler:Ljava/util/logging/Handler;
    .end local v2           #formatter:Lcom/jme3/util/JmeFormatter;
    :goto_1
    iget-object v3, p0, Lcom/jme3/system/android/JmeAndroidSystem;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Running on {0}"

    invoke-virtual {p0}, Lcom/jme3/system/android/JmeAndroidSystem;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, ex:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/jme3/system/android/JmeAndroidSystem;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Security error in creating log file"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;
    .locals 3
    .parameter "configFile"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jme3/system/android/JmeAndroidSystem;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "newAssetManager({0})"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/jme3/asset/AndroidAssetManager;

    invoke-direct {v0, p1}, Lcom/jme3/asset/AndroidAssetManager;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method public newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;
    .locals 2
    .parameter "settings"

    .prologue
    .line 52
    new-instance v0, Lcom/jme3/audio/android/AndroidAudioRenderer;

    sget-object v1, Lcom/jme3/system/android/JmeAndroidSystem;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/jme3/audio/android/AndroidAudioRenderer;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;
    .locals 1
    .parameter "settings"
    .parameter "contextType"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/jme3/system/android/JmeAndroidSystem;->initialize(Lcom/jme3/system/AppSettings;)V

    .line 47
    new-instance v0, Lcom/jme3/system/android/OGLESContext;

    invoke-direct {v0}, Lcom/jme3/system/android/OGLESContext;-><init>()V

    return-object v0
.end method
