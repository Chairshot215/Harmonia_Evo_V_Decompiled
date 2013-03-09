.class Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;
.super Ljava/lang/Object;
.source "LiveFullscreenviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighQualityLiveImageDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "position"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    .line 643
    const/4 v0, 0x0

    .line 648
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1500(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1600(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->OnConfigChange(II)V

    .line 649
    invoke-static {p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapByScalado(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v5, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 654
    const/4 v0, 0x0

    .line 655
    const-string v2, "LiveFullscreenviewTemplateBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LiveFullscreenviewTemplate][onDoImageDecode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "potentially decode fail..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    :goto_0
    return-object v0

    .line 659
    :catch_0
    move-exception v1

    .line 661
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LiveFullscreenviewTemplateBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LiveFullscreenviewTemplate][onDoImageDecode]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
