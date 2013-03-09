.class public Lcom/jme3/util/PlaceholderAssets;
.super Ljava/lang/Object;
.source "PlaceholderAssets.java"


# static fields
.field private static final imageData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/util/PlaceholderAssets;->imageData:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaceholderAudio()Lcom/jme3/audio/AudioData;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v0, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {v0}, Lcom/jme3/audio/AudioBuffer;-><init>()V

    .line 65
    .local v0, audioBuf:Lcom/jme3/audio/AudioBuffer;
    const/16 v2, 0x8

    const v3, 0xac44

    invoke-virtual {v0, v4, v2, v3}, Lcom/jme3/audio/AudioBuffer;->setupFormat(III)V

    .line 66
    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    .local v1, bb:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0, v1}, Lcom/jme3/audio/AudioBuffer;->updateData(Ljava/nio/ByteBuffer;)V

    .line 69
    return-object v0
.end method

.method public static getPlaceholderImage()Lcom/jme3/texture/Image;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 43
    const/16 v1, 0x30

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, tempData:Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/jme3/util/PlaceholderAssets;->imageData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    new-instance v1, Lcom/jme3/texture/Image;

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static getPlaceholderMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 3
    .parameter "assetManager"

    .prologue
    .line 49
    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 50
    .local v0, mat:Lcom/jme3/material/Material;
    const-string v1, "Color"

    sget-object v2, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 51
    return-object v0
.end method

.method public static getPlaceholderModel(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Spatial;
    .locals 3
    .parameter "assetManager"

    .prologue
    const/high16 v2, 0x3f80

    .line 57
    new-instance v0, Lcom/jme3/scene/shape/Box;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    .line 58
    .local v0, box:Lcom/jme3/scene/shape/Box;
    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "placeholder"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 59
    .local v1, geom:Lcom/jme3/scene/Geometry;
    invoke-static {p0}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 60
    return-object v1
.end method
