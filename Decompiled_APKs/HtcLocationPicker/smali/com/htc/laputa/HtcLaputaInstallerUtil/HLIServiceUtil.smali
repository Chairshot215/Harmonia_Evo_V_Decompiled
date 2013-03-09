.class public Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;
.super Ljava/lang/Object;
.source "HLIServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_DB_PATH:Ljava/lang/String; = ".data/navigator"

.field public static final PROP_FILE_COMMENT:Ljava/lang/String; = "HLIService Properties"

.field public static final PROP_HLISERVICE_STATUS:Ljava/lang/String; = "Status"

.field public static final PROP_SETTING_FILE_NAME:Ljava/lang/String; = "HLIServiceStatus.prop"

.field private static final SIE_DATA_FOLDER:Ljava/lang/String; = "com.htc.laputa.DataFolder"

.field private static final SIE_STORAGE_ROOT_TYPE:Ljava/lang/String; = "com.htc.laputa.StorageRootType"

.field private static final SYSPROP_DATA_PATH:Ljava/lang/String; = "com.htc.laputa.DataPath"

.field private static final SYSPROP_SETTING_PATH:Ljava/lang/String; = "com.htc.laputa.HtcLaputaInstaller.SettingPath"

.field private static final TAG:Ljava/lang/String; = "HtcLaputaInstaller"

.field private static final m_strLaputaEntryActions:[Ljava/lang/String;

.field private static final m_strLaputaNecessaryFiles:[Ljava/lang/String;

.field private static ms_bInitialized:Z

.field private static ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field private static ms_objProp:Ljava/util/Properties;

.field private static ms_strDataPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.htc.laputa.navipanel.action.VIEW"

    aput-object v1, v0, v3

    const-string v1, "com.htc.laputa.lb.action.BROWSER_FROM_INSTALLER"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->m_strLaputaEntryActions:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Data/Res"

    aput-object v1, v0, v3

    const-string v1, "Data/Res/earth.stx"

    aput-object v1, v0, v2

    const-string v1, "Data/Res/Fonts.chf"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "Data/Res/horz_d.stx"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Data/Res/horz_n.stx"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Data/Res/WWM.mmd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Data/Res/Icon.db"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->m_strLaputaNecessaryFiles:[Ljava/lang/String;

    .line 327
    sput-boolean v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_bInitialized:Z

    .line 329
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_objProp:Ljava/util/Properties;

    .line 331
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 333
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static GetDataPath(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.laputa.DataPath"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "HtcLaputaInstaller"

    const-string v1, "HLIServiceUtil::GetDataPathIfAvailable(): DATAPATH is empty, reinit!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->InitLaputaDataPath(Landroid/content/Context;)V

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 73
    const-string v0, "HtcLaputaInstaller"

    const-string v1, "HLIServiceUtil::GetDataPathIfAvailable(): DATAPATH is still empty after reinit!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string v0, "HtcLaputaInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HLIServiceUtil::GetDataPathIfAvailable(): DATAPATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDataPathIfAvailable(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 84
    .local v1, fileDataPath:Ljava/io/File;
    if-nez v1, :cond_1

    .line 85
    const-string v3, "HtcLaputaInstaller"

    const-string v4, "HLIServiceUtil::GetDataPathIfAvailable(): DATAPATH is null!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 97
    .end local v1           #fileDataPath:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 89
    .restart local v1       #fileDataPath:Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 90
    .local v0, extStorage:Ljava/io/File;
    sget-object v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string v3, "HtcLaputaInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HLIServiceUtil::GetDataPathIfAvailable(): SD card is not ready ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 93
    goto :goto_0
.end method

.method public static GetHLIServiceStatus()Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    return-object v0
.end method

.method public static GetStorageRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.laputa.StorageRootType"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, storageRootType:I
    packed-switch v0, :pswitch_data_0

    .line 204
    invoke-static {}, Landroid/os/Environment;->getDefaultStorageDirectory()Ljava/io/File;

    move-result-object v1

    :goto_0
    return-object v1

    .line 200
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static Init(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 211
    sget-boolean v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_bInitialized:Z

    if-eqz v2, :cond_0

    .line 236
    :goto_0
    return v1

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.laputa.HtcLaputaInstaller.SettingPath"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, strSettingPath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 216
    const-string v2, "HLIServiceStatus.prop"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.laputa.HtcLaputaInstaller.SettingPath"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->LoadStatus(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->SaveStatus(Landroid/content/Context;)V

    .line 227
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.laputa.DataPath"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    .line 228
    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 229
    const-string v1, "HtcLaputaInstaller"

    const-string v2, "HLIServiceUtil::Init(): DATAPATH is empty!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    .line 231
    const/4 v1, 0x0

    goto :goto_0

    .line 233
    :cond_3
    const-string v2, "HtcLaputaInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HLIServiceUtil::Init(): DATAPATH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput-boolean v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_bInitialized:Z

    goto :goto_0
.end method

.method public static InitLaputaDataPath(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, strDataFolder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.laputa.DataFolder"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    if-nez v2, :cond_0

    .line 257
    const-string v2, ".data/navigator"

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetStorageRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 261
    .local v1, fileStorageRoot:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v0, fileDataPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.laputa.DataPath"

    sget-object v5, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_strDataPath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    return-void
.end method

.method public static IsInited()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_bInitialized:Z

    return v0
.end method

.method public static IsLaputaPackageExist(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, bIsPackageInstalled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 106
    .local v4, objPM:Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->m_strLaputaEntryActions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 107
    .local v7, strActionName:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v6, objTryIntent:Landroid/content/Intent;
    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 109
    .local v5, objResolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_0

    .line 110
    const-string v8, "HtcLaputaInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcLaputaInstallerUtil::IsLaputaPackageExist(): Missing intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 106
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v5           #objResolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #objTryIntent:Landroid/content/Intent;
    .end local v7           #strActionName:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static IsR66ResourceExist(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsR66ResourceFileExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsR66ResourceFileCompatible(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 157
    new-instance v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;

    invoke-direct {v1, p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, objResChecker:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;
    invoke-virtual {v1}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->isResourceVerionCorrect()Z

    move-result v0

    .line 159
    .local v0, bIsCompatible:Z
    if-nez v0, :cond_0

    .line 160
    const-string v2, "HtcLaputaInstaller"

    const-string v3, "HtcLaputaInstallerUtil::IsR66ResourceExist(): Incorrect resource version"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return v0
.end method

.method public static IsR66ResourceFileExist(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->GetDataPathIfAvailable(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 127
    .local v3, desDir:Ljava/io/File;
    if-nez v3, :cond_1

    .line 128
    const-string v8, "HtcLaputaInstaller"

    const-string v9, "HtcLaputaInstallerUtil::IsR66ResourceFileExist(): DataPath is not available"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, strDesDirPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, checkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    const-string v8, "HtcLaputaInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcLaputaInstallerUtil::IsR66ResourceFileExist(): Missing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_2
    const/4 v1, 0x1

    .line 144
    .local v1, bIsDataExist:Z
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->m_strLaputaNecessaryFiles:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 145
    .local v7, strFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #checkFile:Ljava/io/File;
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .restart local v2       #checkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 147
    const-string v8, "HtcLaputaInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcLaputaInstallerUtil::IsR66ResourceFileExist(): Missing file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    .line 144
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static declared-synchronized LoadStatus(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 271
    const-class v8, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sput-object v7, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "com.htc.laputa.HtcLaputaInstaller.SettingPath"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, strSettingPath:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 276
    const-string v7, "HtcLaputaInstaller"

    const-string v9, "HLIServiceUtil::LoadStatus(): setting path is not initialized yet"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 301
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    monitor-exit v8

    return v1

    .line 281
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, fileInput:Ljava/io/FileInputStream;
    sget-object v7, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_objProp:Ljava/util/Properties;

    invoke-virtual {v7, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :try_start_2
    sget-object v7, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_objProp:Ljava/util/Properties;

    const-string v9, "Status"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, strProp:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 287
    .local v4, nStatusOrdinal:I
    if-ltz v4, :cond_1

    invoke-static {}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->values()[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 288
    invoke-static {}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->values()[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    move-result-object v7

    aget-object v7, v7, v4

    sput-object v7, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    :cond_1
    const/4 v0, 0x1

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #nStatusOrdinal:I
    .end local v5           #strProp:Ljava/lang/String;
    :goto_1
    move v1, v0

    .line 301
    .restart local v1       #bResult:I
    goto :goto_0

    .line 291
    .end local v1           #bResult:I
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 292
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "HtcLaputaInstaller"

    const-string v9, "HLIServiceUtil::LoadStatus(): Failed to load PROP_HLISERVICE_STATUS!!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 294
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 295
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v7, "HtcLaputaInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HLIServiceUtil::LoadStatus(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 271
    .end local v0           #bResult:Z
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #strSettingPath:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static RefreshHLIServiceStatus(Landroid/content/Context;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v1, v2, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.laputa.HtcLaputaInstaller.SettingPath"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, strSettingPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ReinitHLIServiceStatus(Landroid/content/Context;)V

    .line 192
    .end local v0           #strSettingPath:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    return-object v1

    .line 190
    :cond_1
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->LoadStatus(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method public static ReinitHLIServiceStatus(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 166
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->LoadStatus(Landroid/content/Context;)Z

    .line 168
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->IsR66ResourceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    invoke-static {p0, v0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->SetHLIServiceStatus(Landroid/content/Context;Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->STANDBY:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    invoke-static {p0, v0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->SetHLIServiceStatus(Landroid/content/Context;Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;)V

    goto :goto_0
.end method

.method private static declared-synchronized SaveStatus(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 305
    const-class v4, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.htc.laputa.HtcLaputaInstaller.SettingPath"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, strSettingPath:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 307
    const-string v3, "HtcLaputaInstaller"

    const-string v5, "HLIServiceUtil::SaveStatus(): setting path is not initialized yet"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    monitor-exit v4

    return-void

    .line 310
    :cond_0
    :try_start_1
    const-string v3, "HLIServiceStatus.prop"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    const-string v3, "HtcLaputaInstaller"

    const-string v5, "HLIServiceUtil::SaveStatus(): Try to save status from other context"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v2           #strSettingPath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 316
    .restart local v2       #strSettingPath:Ljava/lang/String;
    :cond_1
    :try_start_2
    sget-object v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_objProp:Ljava/util/Properties;

    const-string v5, "Status"

    sget-object v6, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    invoke-virtual {v6}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    const-string v3, "HLIServiceStatus.prop"

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 320
    .local v1, fileOutput:Ljava/io/FileOutputStream;
    sget-object v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_objProp:Ljava/util/Properties;

    const-string v5, "HLIService Properties"

    invoke-virtual {v3, v1, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 321
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "HtcLaputaInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HLIServiceUtil::SaveStatus(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static SetHLIServiceStatus(Landroid/content/Context;Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;)V
    .locals 0
    .parameter "context"
    .parameter "eNewStatus"

    .prologue
    .line 248
    sput-object p1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->ms_eStatus:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 249
    invoke-static {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;->SaveStatus(Landroid/content/Context;)V

    .line 250
    return-void
.end method
