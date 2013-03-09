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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpRGB:Lcom/htc/gl/TextureStage$OpSet;

    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpA:Lcom/htc/gl/TextureStage$OpSet;

    return-void
.end method

.method public constructor <init>(Lcom/htc/gl/resource/Texture;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpRGB:Lcom/htc/gl/TextureStage$OpSet;

    new-instance v0, Lcom/htc/gl/TextureStage$OpSet;

    invoke-direct {v0}, Lcom/htc/gl/TextureStage$OpSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/TextureStage;->m_OpA:Lcom/htc/gl/TextureStage$OpSet;

    iput-object p1, p0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    return-void
.end method
