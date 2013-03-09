.class public Lcom/google/android/talk/videochat/FilterSetupInputParameters;
.super Ljava/lang/Object;
.source "FilterSetupInputParameters.java"


# instance fields
.field public effectCallback:Landroid/media/effect/EffectUpdateListener;

.field public effectId:I

.field public effectParam:Ljava/lang/Object;

.field public inputTextureHeight:I

.field public inputTextureName:I

.field public inputTextureWidth:I

.field public outputTextureName:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureName:I

    .line 14
    iput v0, p0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->outputTextureName:I

    .line 21
    return-void
.end method
