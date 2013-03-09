.class public Lcom/jme3/audio/plugins/AndroidAudioLoader;
.super Ljava/lang/Object;
.source "AndroidAudioLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .parameter "assetInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/jme3/audio/android/AndroidAudioData;

    invoke-direct {v0}, Lcom/jme3/audio/android/AndroidAudioData;-><init>()V

    .line 17
    .local v0, result:Lcom/jme3/audio/android/AndroidAudioData;
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/audio/android/AndroidAudioData;->setAssetKey(Lcom/jme3/asset/AssetKey;)V

    .line 18
    return-object v0
.end method
