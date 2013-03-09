.class Lcom/htc/android/locationpicker/LocationPickerManager$1;
.super Landroid/os/Handler;
.source "LocationPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationPickerManager;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationPickerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x96

    .line 186
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerUtils;->isLaputaExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #getter for: Lcom/htc/android/locationpicker/LocationPickerManager;->m_fullAddressStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$000(Lcom/htc/android/locationpicker/LocationPickerManager;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/android/locationpicker/LocationPickerManager;->launchGoogleMapByAddress(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$100(Lcom/htc/android/locationpicker/LocationPickerManager;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->finish()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-static {v1}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetLaputaPackageStatus(Landroid/content/Context;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    move-result-object v0

    .line 196
    .local v0, status:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Available:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    if-ne v0, v1, :cond_7

    .line 198
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2

    .line 200
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->cancelReverseGeoCode()V

    .line 201
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    goto :goto_0

    .line 203
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_3

    .line 205
    const-string v1, "LocationPickerManager"

    const-string v2, "++ #@@startPickerActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->startPickerActivity()V

    .line 207
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@startPickerActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x82

    if-ne v1, v2, :cond_4

    .line 211
    const-string v1, "LocationPickerManager"

    const-string v2, "++ #@@doReverseGeoCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->doReverseGeoCode()V

    .line 213
    const-string v1, "LocationPickerManager"

    const-string v2, "-- #@@doReverseGeoCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_5

    .line 217
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    goto :goto_0

    .line 219
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_6

    .line 221
    const-string v1, "LocationPickerManager"

    const-string v2, "REVERSE_ADDR_ON_MAP_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->reverseAddrToGeoCode()V

    goto :goto_0

    .line 224
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 226
    const-string v1, "LocationPickerManager"

    const-string v2, "PROCESS_REVERSE_ADDR_RESULT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #calls: Lcom/htc/android/locationpicker/LocationPickerManager;->processAddressListToMap()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$200(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    goto :goto_0

    .line 234
    :cond_7
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    if-ne v0, v1, :cond_8

    .line 235
    const-string v1, "LocationPickerManager"

    const-string v2, "LaputaPackageStatus: Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    #calls: Lcom/htc/android/locationpicker/LocationPickerManager;->doReInstallLaputa()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->access$300(Lcom/htc/android/locationpicker/LocationPickerManager;)V

    .line 240
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationPickerManager$1;->this$0:Lcom/htc/android/locationpicker/LocationPickerManager;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationPickerManager;->returnFinalResult()V

    goto/16 :goto_0

    .line 237
    :cond_8
    const-string v1, "LocationPickerManager"

    const-string v2, "LaputaPackageStatus: Installing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
