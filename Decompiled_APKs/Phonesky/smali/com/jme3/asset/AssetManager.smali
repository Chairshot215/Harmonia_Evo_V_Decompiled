.class public interface abstract Lcom/jme3/asset/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# virtual methods
.method public abstract getClassLoaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;
.end method

.method public abstract loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;
.end method

.method public abstract loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;
.end method

.method public abstract loadShader(Lcom/jme3/shader/ShaderKey;)Lcom/jme3/shader/Shader;
.end method

.method public abstract loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
.end method

.method public varargs abstract registerLoader(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract registerLocator(Ljava/lang/String;Ljava/lang/String;)V
.end method
