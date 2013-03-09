.class public Lcom/jme3/renderer/android/Android22Workaround;
.super Ljava/lang/Object;
.source "Android22Workaround.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glVertexAttribPointer(IIIZII)V
    .locals 0
    .parameter "location"
    .parameter "components"
    .parameter "format"
    .parameter "normalize"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 7
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 13
    return-void
.end method
