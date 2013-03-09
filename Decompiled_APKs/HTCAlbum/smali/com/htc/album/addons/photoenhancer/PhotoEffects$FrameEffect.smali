.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameEffect"
.end annotation


# instance fields
.field private isThumbnail:Z

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)V
    .locals 1
    .parameter
    .parameter "isThumbnail"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->isThumbnail:Z

    .line 794
    iput-boolean p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->isThumbnail:Z

    .line 795
    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 11
    .parameter "sess"

    .prologue
    .line 798
    const/4 v4, 0x0

    .line 799
    .local v4, frameEffect:Lcom/scalado/caps/filter/photoart/Frame;
    const/4 v0, 0x0

    .line 800
    .local v0, boolRotate:Z
    const/4 v7, 0x0

    .line 802
    .local v7, rotate:Lcom/scalado/caps/filter/Rotate;
    :try_start_0
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 803
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FrameEffect: mContext is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :goto_0
    return-void

    .line 806
    :cond_0
    const/4 v3, 0x0

    .line 807
    .local v3, fileName:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 808
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    :goto_1
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v9, "value"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 813
    .local v6, frameId:I
    if-nez v6, :cond_2

    .line 814
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Frame id is 0, 0 means not apply frame effect"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #frameId:I
    :catch_0
    move-exception v2

    .line 840
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FrameEffect: Frame Image Decode fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 810
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #fileName:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 817
    .restart local v6       #frameId:I
    :cond_2
    iget-boolean v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->isThumbnail:Z

    if-nez v8, :cond_3

    .line 818
    add-int/lit8 v6, v6, 0x8

    .line 820
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 821
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Frame id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$500()[Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 825
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Frame name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_5
    new-instance v8, Lcom/scalado/stream/FileStream;

    sget-object v9, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v8, v3, v9}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/PngDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 838
    .local v1, decoder:Lcom/scalado/base/Iterator;
    new-instance v5, Lcom/scalado/caps/filter/photoart/Frame;

    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/scalado/caps/Decoder;

    invoke-direct {v5, p1, v8}, Lcom/scalado/caps/filter/photoart/Frame;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Decoder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 844
    .end local v4           #frameEffect:Lcom/scalado/caps/filter/photoart/Frame;
    .local v5, frameEffect:Lcom/scalado/caps/filter/photoart/Frame;
    invoke-virtual {v5}, Lcom/scalado/caps/filter/photoart/Frame;->commit()V

    move-object v4, v5

    .line 853
    .end local v5           #frameEffect:Lcom/scalado/caps/filter/photoart/Frame;
    .restart local v4       #frameEffect:Lcom/scalado/caps/filter/photoart/Frame;
    goto/16 :goto_0
.end method
