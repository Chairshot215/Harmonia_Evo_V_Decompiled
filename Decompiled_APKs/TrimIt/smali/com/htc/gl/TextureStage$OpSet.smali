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

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x2100

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    .line 45
    const v0, 0x8578

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    .line 46
    const/16 v0, 0x1702

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    .line 47
    const v0, 0x8580

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    .line 48
    const v0, 0x8581

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    .line 33
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "op"
    .parameter "src0"
    .parameter "src1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x2100

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    .line 45
    const v0, 0x8578

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    .line 46
    const/16 v0, 0x1702

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    .line 47
    const v0, 0x8580

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    .line 48
    const v0, 0x8581

    iput v0, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    .line 37
    iput p1, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Op:I

    .line 38
    iput p2, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src0:I

    .line 39
    iput p3, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Src1:I

    .line 40
    iput p4, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg0:I

    .line 41
    iput p5, p0, Lcom/htc/gl/TextureStage$OpSet;->m_Arg1:I

    .line 42
    return-void
.end method
