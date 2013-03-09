.class Lcom/htc/musicenhancer/EnhancerService$2;
.super Landroid/os/Handler;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 1142
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1234
    const-string v7, "[EnhancerService]"

    const-string v8, "Receive unknown message"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1144
    :pswitch_0
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$600(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/GenerateFingerprint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/GenerateFingerprint;->isBusy()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1145
    const-string v7, "[EnhancerService]"

    const-string v8, "START_FINGERPRINT is Busy"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1147
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1149
    :cond_1
    const-string v7, "[EnhancerService]"

    const-string v8, "mHandler is null"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1153
    const-string v7, "[EnhancerService]"

    const-string v8, "START_FINGERPRINT go"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->getCurrentFingerprintAlbumInfo()Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v1

    .line 1156
    .local v1, albumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v1, :cond_3

    .line 1157
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mGenerateFingerprint:Lcom/htc/musicenhancer/GenerateFingerprint;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$600(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/GenerateFingerprint;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getSearchingAudioId()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/htc/musicenhancer/GenerateFingerprint;->start(Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V

    goto :goto_0

    .line 1159
    :cond_3
    const-string v7, "[EnhancerService]"

    const-string v8, "Album list is empty"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    .end local v1           #albumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :pswitch_1
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$800(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/RecognizeMusic;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/RecognizeMusic;->isBusy()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1167
    const-string v7, "[EnhancerService]"

    const-string v8, "START_RECOGNIZE is Busy"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1171
    :cond_4
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1172
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->getCurrentRecognizeAlbumInfo()Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v1

    .line 1174
    .restart local v1       #albumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v1, :cond_5

    .line 1175
    const-string v7, "[EnhancerService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START_RECOGNIZE go + albumInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mRecognizeMusic:Lcom/htc/musicenhancer/RecognizeMusic;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$800(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/RecognizeMusic;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/musicenhancer/RecognizeMusic;->start(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto/16 :goto_0

    .line 1178
    :cond_5
    const-string v7, "[EnhancerService]"

    const-string v8, "Album list is empty in start recognize"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1186
    .end local v1           #albumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :pswitch_2
    const-string v7, "[EnhancerService]"

    const-string v8, "Receive START_DOWNLOAD_AFTER_SCANNING"

    invoke-static {v7, v8}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->isInterruptWhenScanning()Z
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$900(Lcom/htc/musicenhancer/EnhancerService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1188
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->loadPrevAction()V
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$1000(Lcom/htc/musicenhancer/EnhancerService;)V

    .line 1189
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v7}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    goto/16 :goto_0

    .line 1195
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1196
    .local v0, albumId:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v7}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->remove(I)V

    goto/16 :goto_0

    .line 1201
    .end local v0           #albumId:Ljava/lang/Integer;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1202
    .restart local v0       #albumId:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #calls: Lcom/htc/musicenhancer/EnhancerService;->handleNetworkError(I)V
    invoke-static {v7, v8}, Lcom/htc/musicenhancer/EnhancerService;->access$1100(Lcom/htc/musicenhancer/EnhancerService;I)V

    goto/16 :goto_0

    .line 1207
    .end local v0           #albumId:Ljava/lang/Integer;
    :pswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-object v3, v7

    check-cast v3, [Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 1208
    .local v3, downloadAlbumInfos:[Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$1200()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1209
    .local v4, failCount:I
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v7, v3, v4}, Lcom/htc/musicenhancer/EnhancerService;->queryDownloadAlbumArtCompleted([Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V

    goto/16 :goto_0

    .line 1214
    .end local v3           #downloadAlbumInfos:[Lcom/htc/musicenhancer/DownloadAlbumInfo;
    .end local v4           #failCount:I
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 1215
    .local v2, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v7, v2}, Lcom/htc/musicenhancer/EnhancerService;->queryDownloadAlbumArtCompleted(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    goto/16 :goto_0

    .line 1220
    .end local v2           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/musicenhancer/FingerprintResult;

    .line 1221
    .local v5, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$1300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1222
    .local v0, albumId:I
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->generateFingerprintCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V
    invoke-static {v7, v0, v5}, Lcom/htc/musicenhancer/EnhancerService;->access$1400(Lcom/htc/musicenhancer/EnhancerService;ILcom/htc/musicenhancer/FingerprintResult;)V

    goto/16 :goto_0

    .line 1227
    .end local v0           #albumId:I
    .end local v5           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/musicenhancer/SearchResult;

    .line 1228
    .local v6, searchResult:Lcom/htc/musicenhancer/SearchResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$1300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1229
    .restart local v0       #albumId:I
    iget-object v7, p0, Lcom/htc/musicenhancer/EnhancerService$2;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->recognizeMusicListenerCompleted(ILcom/htc/musicenhancer/SearchResult;)V
    invoke-static {v7, v0, v6}, Lcom/htc/musicenhancer/EnhancerService;->access$1500(Lcom/htc/musicenhancer/EnhancerService;ILcom/htc/musicenhancer/SearchResult;)V

    goto/16 :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
