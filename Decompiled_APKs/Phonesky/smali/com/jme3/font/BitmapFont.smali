.class public Lcom/jme3/font/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private charSet:Lcom/jme3/font/BitmapCharacterSet;

.field private pages:[Lcom/jme3/material/Material;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 163
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 164
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v2, "charSet"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/font/BitmapCharacterSet;

    iput-object v2, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    .line 165
    const-string v2, "pages"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 166
    .local v1, pagesSavable:[Lcom/jme3/export/Savable;
    array-length v2, v1

    new-array v2, v2, [Lcom/jme3/material/Material;

    iput-object v2, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    .line 167
    iget-object v2, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-void
.end method

.method public setCharSet(Lcom/jme3/font/BitmapCharacterSet;)V
    .locals 0
    .parameter "charSet"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    .line 109
    return-void
.end method

.method public setPages([Lcom/jme3/material/Material;)V
    .locals 2
    .parameter "pages"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jme3/font/BitmapFont;->pages:[Lcom/jme3/material/Material;

    .line 113
    iget-object v0, p0, Lcom/jme3/font/BitmapFont;->charSet:Lcom/jme3/font/BitmapCharacterSet;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/jme3/font/BitmapCharacterSet;->setPageSize(I)V

    .line 114
    return-void
.end method
