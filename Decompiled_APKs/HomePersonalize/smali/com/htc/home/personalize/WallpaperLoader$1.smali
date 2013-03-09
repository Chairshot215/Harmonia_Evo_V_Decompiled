.class Lcom/htc/home/personalize/WallpaperLoader$1;
.super Landroid/os/Handler;
.source "WallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperLoader;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLoader;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperLoader;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader$1;->this$0:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader$1;->this$0:Lcom/htc/home/personalize/WallpaperLoader;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperLoader;->setImageView(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLoader$1;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader$1;->this$0:Lcom/htc/home/personalize/WallpaperLoader;

    invoke-virtual {v0}, Lcom/htc/home/personalize/WallpaperLoader;->onRemoveCaches()V

    .line 148
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
