.class Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/util/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedDataSet"
.end annotation


# static fields
.field public static final DEVICE_FRIENDLY_NAME:I = 0x2

.field public static final DEVICE_MODULE:I = 0x0

.field public static final DEVICE_NAME:I = 0x1


# instance fields
.field public deviceFriendlyName:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceModel:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceFriendlyName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceName:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->initCustomizedData(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initCustomizedData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 57
    const-string v2, "deviceModel"

    .line 58
    .local v2, tag_deviceModel:Ljava/lang/String;
    const-string v3, "deviceName"

    .line 59
    .local v3, tag_deviceName:Ljava/lang/String;
    const-string v1, "deviceFriendName"

    .line 60
    .local v1, tag_deviceFriendlyName:Ljava/lang/String;
    new-instance v4, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v4}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    invoke-virtual {v4, p1}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getMailCustomizationData() failed."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v4, "eas_sync_option"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    .line 72
    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No eas_sync_option exists."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v4, "plenty_set1"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    if-nez v0, :cond_3

    .line 80
    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No elements exist."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    const-string v4, "deviceModel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceModel:Ljava/lang/String;

    .line 84
    const-string v4, "deviceFriendName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceFriendlyName:Ljava/lang/String;

    .line 85
    const-string v4, "deviceName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/util/DeviceInfo$CustomizedDataSet;->deviceName:Ljava/lang/String;

    goto :goto_0
.end method
