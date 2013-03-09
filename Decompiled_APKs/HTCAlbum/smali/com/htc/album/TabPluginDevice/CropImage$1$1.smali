.class Lcom/htc/album/TabPluginDevice/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1074
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, resultDataPath:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1077
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HtcAlbum][CropImage][onOK][r]resultDataPath is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_0
    return-void

    .line 1081
    :cond_0
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1082
    .local v5, split:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1085
    .local v4, resultFolder:Ljava/lang/String;
    :try_start_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    aget-object v4, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1093
    const/4 v1, 0x0

    .line 1096
    .local v1, fullFolderPath:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mnt/sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1099
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1101
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$1$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$1;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v7, 0x1

    invoke-static {v6, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1104
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcAlbum][CropImage][onOK][r]can\'t get fullFolderPath, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fullFolderPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1089
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcAlbum][CropImage][onOK][r]resultDataPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resultFolder is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
