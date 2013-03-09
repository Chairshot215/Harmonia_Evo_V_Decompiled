.class public Lcom/htc/album/TabPluginDevice/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final CROP_DONE:I = 0x2

.field private static final Log_TAG:Ljava/lang/String; = null

.field private static final PHOTO_PICKED:I = 0x1


# instance fields
.field private mShowDoneMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const-class v0, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/Wallpaper;->Log_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 290
    const/16 v0, 0x7f04

    if-ne p1, v0, :cond_1

    .line 292
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    .line 296
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/Wallpaper;->setResult(I)V

    .line 297
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/Wallpaper;->finish()V

    .line 299
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x7f04

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 256
    .local v3, source:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 257
    .local v0, imageToUse:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 261
    const-string v4, "drm_content"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 263
    .local v2, noCrop:Z
    if-eqz v2, :cond_0

    .line 265
    const-class v4, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .end local v2           #noCrop:Z
    :goto_1
    const-string v4, "cropType"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v1, v6}, Lcom/htc/album/TabPluginDevice/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    return-void

    .line 269
    .restart local v2       #noCrop:Z
    :cond_0
    const-class v4, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 277
    .end local v2           #noCrop:Z
    :cond_1
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v4, "show_drm_settable"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 304
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/Wallpaper;->mShowDoneMsg:Z

    if-eqz v0, :cond_0

    .line 305
    const v0, 0x7f0b0067

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    :cond_0
    return-void
.end method
