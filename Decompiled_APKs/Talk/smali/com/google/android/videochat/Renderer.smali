.class public abstract Lcom/google/android/videochat/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/Renderer$DrawOutputParams;,
        Lcom/google/android/videochat/Renderer$DrawInputParams;,
        Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;,
        Lcom/google/android/videochat/Renderer$RendererThreadCallback;
    }
.end annotation


# instance fields
.field protected mRendererID:I

.field protected mRendererManager:Lcom/google/android/videochat/RendererManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method
