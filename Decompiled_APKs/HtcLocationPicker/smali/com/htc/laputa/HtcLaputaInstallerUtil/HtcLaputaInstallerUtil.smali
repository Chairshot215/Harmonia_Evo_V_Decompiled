.class public Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;
.super Ljava/lang/Object;
.source "HtcLaputaInstallerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
    }
.end annotation


# static fields
.field public static final BROADCAST_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE_LAPUTA"

.field public static final BROADCAST_INSTALL_COMPLETED:Ljava/lang/String; = "android.htc.intent.action.LAPUTA_INSTALL_COMPLETED"

.field public static final BROADCAST_SD_MOUNTED:Ljava/lang/String; = "android.htc.intent.action.LAPUTA_SD_MOUNTED"

.field public static final BROADCAST_TERMINATE_FOR_INSTALL:Ljava/lang/String; = "android.htc.intent.action.LAPUTA_TERMINATE_FOR_INSTALL"

.field public static final DEFAULT_DB_PATH:Ljava/lang/String; = ".data/navigator"

.field public static final EXTRA_CUST2_REINSTALL:Ljava/lang/String; = "Cust2Reinstall"

.field public static final EXTRA_CUST2_RESET_CUSTOMIZATION:Ljava/lang/String; = "Cust2ResetCustomization"

.field public static final EXTRA_CUST2_SIM_CHANGED:Ljava/lang/String; = "Cust2SIMChanged"

.field public static final EXTRA_CUST_AFTER_COLDBOOT:Ljava/lang/String; = "CustAfterColdBoot"

.field public static final EXTRA_CUST_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "CustAfterCustomizationChanged"

.field public static final EXTRA_CUST_DATA_MISSING:Ljava/lang/String; = "CustAfterDataMissing"

.field public static final EXTRA_CUST_FIRST_INSTALL:Ljava/lang/String; = "CustAfterFirstInstallation"

.field public static final EXTRA_CUST_FORCE_RECOVERY:Ljava/lang/String; = "CustAfterForceRecovery"

.field public static final EXTRA_CUST_SIM_CHANGED:Ljava/lang/String; = "CustAfterSIMChanged"

.field public static final EXTRA_SKIP_RES_CHECKING:Ljava/lang/String; = "SkipResChecking"

.field public static final PROP_LAPUTA_DATA_PATH:Ljava/lang/String; = "com.htc.laputa.DataPath"

.field public static final PROP_LAPUTA_STORAGE_ROOT:Ljava/lang/String; = "com.htc.laputa.StorageRootType"

.field private static final TAG:Ljava/lang/String; = "HtcLaputaInstaller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static GetDataPath(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static GetDataPathIfAvailable(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetDataPathIfAvailable(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static GetLaputaPackageStatus(Landroid/content/Context;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->RefreshHLIServiceStatus(Landroid/content/Context;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    move-result-object v0

    .line 77
    .local v0, eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Installing:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    .line 88
    :goto_0
    return-object v1

    .line 80
    :cond_1
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v0, v1, :cond_2

    .line 81
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->IsR66ResourceExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->SYNC_LICENSE:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->SyncLicense:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Available:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    goto :goto_0

    .line 88
    :cond_4
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    goto :goto_0
.end method

.method public static GetStorageRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetStorageRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static IsLaputaPackageExist(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsR66MapExist(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, bResult:Z
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 106
    .local v4, fileDataPath:Ljava/io/File;
    if-nez v4, :cond_0

    move v2, v1

    .line 128
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 110
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v10, "Data/Maps"

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v5, fileMapFolder:Ljava/io/File;
    :try_start_0
    const-string v10, "HtcLaputaInstaller"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking map files under \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, strFiles:[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 116
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v8, v0, v6

    .line 117
    .local v8, strFileName:Ljava/lang/String;
    const-string v10, ".cmap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 118
    const/4 v1, 0x1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #strFileName:Ljava/lang/String;
    .end local v9           #strFiles:[Ljava/lang/String;
    :cond_1
    :goto_2
    move v2, v1

    .line 128
    .restart local v2       #bResult:I
    goto :goto_0

    .line 116
    .end local v2           #bResult:I
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #strFileName:Ljava/lang/String;
    .restart local v9       #strFiles:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #strFileName:Ljava/lang/String;
    .end local v9           #strFiles:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/SecurityException;
    const-string v10, "HtcLaputaInstaller"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HtcLaputaInstallerUtil::IsR66MapExist(): Fail to check path \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2
.end method

.method public static IsR66ResourceExist(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsR66ResourceExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsR66ResourceFileCompatible(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsR66ResourceFileCompatible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsR66ResourceFileExist(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsR66ResourceFileExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsResourcePathInDeviceStorage()Z
    .locals 1

    .prologue
    .line 92
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0x89 -> :sswitch_0
        0x8a -> :sswitch_0
        0xad -> :sswitch_0
    .end sparse-switch
.end method
