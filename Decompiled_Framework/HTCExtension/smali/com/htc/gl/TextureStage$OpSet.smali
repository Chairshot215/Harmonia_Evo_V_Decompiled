.class public Lcom/htc/gl/TextureStage$OpSet;
.super Ljava/lang/Object;
.source "TextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gl/TextureStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpSet"
.end annotation


# instance fields
.field public m_Arg0:I

.field public m_Arg1:I

.field public m_Op:I

.field public m_Src0:I

.field public m_Src1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2100

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    const v0, 0x8578

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    const/16 v0, 0x1702

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    const v0, 0x8580

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    const v0, 0x8581

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2100

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    const v0, 0x8578

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    const/16 v0, 0x1702

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    const v0, 0x8580

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    const v0, 0x8581

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    iput p1, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    iput p2, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    iput p3, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    iput p4, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    iput p5, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    return-void
.end method
