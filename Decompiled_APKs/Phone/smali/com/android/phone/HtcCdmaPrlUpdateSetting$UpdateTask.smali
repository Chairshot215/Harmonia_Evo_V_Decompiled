.class public Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;
.super Landroid/os/AsyncTask;
.source "HtcCdmaPrlUpdateSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPrlUpdateSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1200(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 370
    .local v1, file:Ljava/io/File;
    const-string v2, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO get Cache Dir ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update.prl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, FilePath:Ljava/lang/String;
    const-string v2, "KDDI_HtcCdmaPrlUpdateSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurerntUserAgent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getCurrentUserAgent()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1300(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const-string v3, "http://au-pro.kddi.com/IS-683C/latest/IS-683C.prl"

    invoke-virtual {v2, v3, v0}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->DownloadFromUrl2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$UpdateTask;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_IN_PROCESSING:I
    invoke-static {v3}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1400(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)I

    move-result v3

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->sendResult(I)V
    invoke-static {v2, v3}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V

    .line 391
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
