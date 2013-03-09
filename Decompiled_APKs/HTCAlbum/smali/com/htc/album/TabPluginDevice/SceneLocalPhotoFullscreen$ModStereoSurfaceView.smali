.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
.super Landroid/opengl/StereoSurfaceView;
.source "SceneLocalPhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModStereoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "format"

    .prologue
    .line 4173
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .line 4174
    invoke-direct {p0, p2, p3}, Landroid/opengl/StereoSurfaceView;-><init>(Landroid/content/Context;I)V

    .line 4175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setRenderMode(I)V

    .line 4176
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 4209
    invoke-super {p0, p1}, Landroid/opengl/StereoSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4210
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->requestRender()V

    .line 4211
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 4181
    invoke-super {p0, p1}, Landroid/opengl/StereoSurfaceView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4182
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][ModStereoSurfaceView][onDrawFrame]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4188
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/StereoSurfaceView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 4189
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->requestRender()V

    .line 4190
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 0
    .parameter "bitmap_in"
    .parameter "iCenterX"
    .parameter "iCenterY"
    .parameter "iWidth"
    .parameter "iHeight"

    .prologue
    .line 4195
    invoke-super/range {p0 .. p5}, Landroid/opengl/StereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 4196
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->requestRender()V

    .line 4197
    return-void
.end method

.method public setImageShiftOffset(F)V
    .locals 0
    .parameter "fOffset"

    .prologue
    .line 4202
    invoke-super {p0, p1}, Landroid/opengl/StereoSurfaceView;->setImageShiftOffset(F)V

    .line 4203
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->requestRender()V

    .line 4204
    return-void
.end method
