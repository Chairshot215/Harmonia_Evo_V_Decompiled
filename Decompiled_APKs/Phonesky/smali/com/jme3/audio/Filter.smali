.class public abstract Lcom/jme3/audio/Filter;
.super Lcom/jme3/util/NativeObject;
.source "Filter.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jme3/audio/Filter;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 67
    check-cast p1, Lcom/jme3/audio/AudioRenderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/audio/AudioRenderer;->deleteFilter(Lcom/jme3/audio/Filter;)V

    .line 68
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/audio/Filter;->id:I

    .line 62
    invoke-virtual {p0}, Lcom/jme3/audio/Filter;->setUpdateNeeded()V

    .line 63
    return-void
.end method
