.class public Lcom/htc/wrap/android/graphics/HtcWrapPicture;
.super Landroid/graphics/Picture;
.source "HtcWrapPicture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/Picture;-><init>(Landroid/graphics/Picture;)V

    .line 22
    return-void
.end method


# virtual methods
.method public writeToStream(Ljava/io/OutputStream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "isAll"

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;Z)V

    .line 26
    return-void
.end method
