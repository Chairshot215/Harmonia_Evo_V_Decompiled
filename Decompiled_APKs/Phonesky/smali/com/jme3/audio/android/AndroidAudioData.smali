.class public Lcom/jme3/audio/android/AndroidAudioData;
.super Lcom/jme3/audio/AudioData;
.source "AndroidAudioData.java"


# instance fields
.field protected assetKey:Lcom/jme3/asset/AssetKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/asset/AssetKey",
            "<*>;"
        }
    .end annotation
.end field

.field protected currentVolume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jme3/audio/AudioData;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/audio/android/AndroidAudioData;->currentVolume:F

    .line 15
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/jme3/audio/AudioData;-><init>(I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/audio/android/AndroidAudioData;->currentVolume:F

    .line 19
    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/jme3/audio/android/AndroidAudioData;

    iget v1, p0, Lcom/jme3/audio/android/AndroidAudioData;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/audio/android/AndroidAudioData;-><init>(I)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 47
    check-cast p1, Lcom/jme3/audio/AudioRenderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/audio/AudioRenderer;->deleteAudioData(Lcom/jme3/audio/AudioData;)V

    .line 48
    return-void
.end method

.method public getCurrentVolume()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/jme3/audio/android/AndroidAudioData;->currentVolume:F

    return v0
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/audio/android/AndroidAudioData;->id:I

    .line 42
    invoke-virtual {p0}, Lcom/jme3/audio/android/AndroidAudioData;->setUpdateNeeded()V

    .line 43
    return-void
.end method

.method public setAssetKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, assetKey:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<*>;"
    iput-object p1, p0, Lcom/jme3/audio/android/AndroidAudioData;->assetKey:Lcom/jme3/asset/AssetKey;

    .line 27
    return-void
.end method

.method public setCurrentVolume(F)V
    .locals 0
    .parameter "currentVolume"

    .prologue
    .line 55
    iput p1, p0, Lcom/jme3/audio/android/AndroidAudioData;->currentVolume:F

    .line 56
    return-void
.end method
