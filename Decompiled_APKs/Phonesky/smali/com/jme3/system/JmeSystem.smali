.class public Lcom/jme3/system/JmeSystem;
.super Ljava/lang/Object;
.source "JmeSystem.java"


# static fields
.field private static systemDelegate:Lcom/jme3/system/JmeSystemDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDelegate()V
    .locals 4

    .prologue
    .line 133
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    if-nez v0, :cond_0

    .line 136
    :try_start_0
    const-string v0, "com.jme3.system.JmeDesktopSystem"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/system/JmeSystemDelegate;

    sput-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-class v1, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "No JmeSystemDelegate specified, cannot instantiate default JmeDesktopSystem:\n{0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-class v1, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "No JmeSystemDelegate specified, cannot instantiate default JmeDesktopSystem:\n{0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    const-class v1, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "No JmeSystemDelegate specified, cannot instantiate default JmeDesktopSystem:\n{0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isLowPermissions()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 83
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0}, Lcom/jme3/system/JmeSystemDelegate;->isLowPermissions()Z

    move-result v0

    return v0
.end method

.method public static newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;
    .locals 1
    .parameter "configFile"

    .prologue
    .line 97
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 98
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;
    .locals 1
    .parameter "settings"

    .prologue
    .line 122
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 123
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    return-object v0
.end method

.method public static newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;
    .locals 1
    .parameter "settings"
    .parameter "contextType"

    .prologue
    .line 117
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 118
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/jme3/system/JmeSystemDelegate;->newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;

    move-result-object v0

    return-object v0
.end method

.method public static setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 87
    invoke-static {}, Lcom/jme3/system/JmeSystem;->checkDelegate()V

    .line 88
    sget-object v0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    invoke-virtual {v0, p0}, Lcom/jme3/system/JmeSystemDelegate;->setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V

    .line 89
    return-void
.end method

.method public static setSystemDelegate(Lcom/jme3/system/JmeSystemDelegate;)V
    .locals 0
    .parameter "systemDelegate"

    .prologue
    .line 48
    sput-object p0, Lcom/jme3/system/JmeSystem;->systemDelegate:Lcom/jme3/system/JmeSystemDelegate;

    .line 49
    return-void
.end method
