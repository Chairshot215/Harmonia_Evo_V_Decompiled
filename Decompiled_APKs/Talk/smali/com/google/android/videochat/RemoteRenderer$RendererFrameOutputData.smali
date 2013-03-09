.class public Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;
.super Lcom/google/android/videochat/Renderer$DrawOutputParams;
.source "RemoteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/RemoteRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererFrameOutputData"
.end annotation


# instance fields
.field public frameHeight:I

.field public frameSizeChanged:Z

.field public frameWidth:I

.field public updatedTexture:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/videochat/Renderer$DrawOutputParams;-><init>()V

    return-void
.end method
