.class public Lcom/scalado/caps/codec/encoder/BitmapEncoder;
.super Lcom/scalado/caps/Encoder;
.source "BitmapEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private preserveAspectRatio:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Encoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->preserveAspectRatio:Z

    return-void
.end method


# virtual methods
.method protected final render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .locals 4

    new-instance v0, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;

    iget-object v1, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/scalado/caps/codec/encoder/BitmapEncoder;->preserveAspectRatio:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scalado/caps/codec/encoder/BitmapEncoder$BitmapEncoderRenderIterator;-><init>(Lcom/scalado/caps/codec/encoder/BitmapEncoder;Landroid/graphics/Bitmap;Lcom/scalado/caps/Decoder;Z)V

    return-object v0
.end method
