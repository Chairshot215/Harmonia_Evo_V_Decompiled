.class public abstract Lcom/jme3/system/JmeSystemDelegate;
.super Ljava/lang/Object;
.source "JmeSystemDelegate.java"


# instance fields
.field protected initialized:Z

.field protected final logger:Ljava/util/logging/Logger;

.field protected lowPermissions:Z

.field protected softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

.field protected storageFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/jme3/system/JmeSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/system/JmeSystemDelegate;->logger:Ljava/util/logging/Logger;

    .line 49
    iput-boolean v1, p0, Lcom/jme3/system/JmeSystemDelegate;->initialized:Z

    .line 50
    iput-boolean v1, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    .line 51
    iput-object v2, p0, Lcom/jme3/system/JmeSystemDelegate;->storageFolder:Ljava/io/File;

    .line 52
    iput-object v2, p0, Lcom/jme3/system/JmeSystemDelegate;->softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "jMonkeyEngine 3.0.0 Beta"

    return-object v0
.end method

.method public isLowPermissions()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/jme3/system/JmeSystemDelegate;->lowPermissions:Z

    return v0
.end method

.method public abstract newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;
.end method

.method public abstract newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;
.end method

.method public abstract newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;
.end method

.method public setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jme3/system/JmeSystemDelegate;->softTextDialogInput:Lcom/jme3/input/SoftTextDialogInput;

    .line 94
    return-void
.end method
