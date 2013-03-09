.class public Lcom/htc/gl/TextureStage;
.super Ljava/lang/Object;
.source "TextureStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gl/TextureStage$OpSet;
    }
.end annotation


# instance fields
.field m_OpA:Lcom/htc/gl/TextureStage$OpSet;

.field m_OpRGB:Lcom/htc/gl/TextureStage$OpSet;

.field m_Tex:Lcom/htc/gl/resource/Texture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 54
    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpRGB:Lcom/htc/gl/TextureStage$OpSet;

    .line 55
    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpA:Lcom/htc/gl/TextureStage$OpSet;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/htc/gl/resource/Texture;)V
    .locals 1
    .parameter "tex"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 54
    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpRGB:Lcom/htc/gl/TextureStage$OpSet;

    .line 55
    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpA:Lcom/htc/gl/TextureStage$OpSet;

    .line 24
    iput-object p1, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 25
    return-void
.end method
