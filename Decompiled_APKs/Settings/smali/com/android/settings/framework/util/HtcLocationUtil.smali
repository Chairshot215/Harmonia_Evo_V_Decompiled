.class public Lcom/android/settings/framework/util/HtcLocationUtil;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"


# static fields
.field private static AGPS_FileName:Ljava/lang/String;

.field private static AGPS_SyncTime_FileName:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static cfg:[Ljava/lang/String;

.field private static mDAGPS:Ljava/lang/String;

.field private static mGpsSyncTime:Ljava/lang/String;

.field private static readAGpsConfig:Z

.field private static readGpsTimeSync:Z


# instance fields
.field private enableAGpsInConfig:Z

.field private enableGpsTimeSync:Z

.field private mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

.field private mContext:Landroid/content/Context;

.field private mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mWarnInfoAGpsOn:Landroid/content/DialogInterface;

.field private mWarnInfoMobileNetwork:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    .line 51
    sput-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    .line 53
    const-string v0, "/data/sph.cfg"

    sput-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    .line 54
    sput-boolean v1, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    .line 56
    sput-boolean v1, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    .line 195
    sput-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    .line 196
    const-string v0, "/data/gps_time.syn"

    sput-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableAGpsInConfig:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGpsTimeSync:Z

    .line 58
    iput-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    .line 249
    iput-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    .line 43
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAssistedGPSVisibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static changeFileMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/xbin/su 0 /system/bin/chmod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, tmp:Ljava/lang/String;
    const-string v3, "tmp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmp :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 185
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isMobileDataEnable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 442
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 444
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static readGPSTimefile()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 199
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "readGPSTimefile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, reader:Ljava/io/BufferedReader;
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    const-string v5, "777"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/HtcLocationUtil;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    .line 206
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGpsSyncTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const-string v4, ""

    sput-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 216
    if-eqz v2, :cond_0

    .line 217
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 223
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v3

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 212
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "readGPSTimefile fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    if-eqz v1, :cond_0

    .line 217
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "reader: Gps Time file close fail"

    .end local v1           #reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    .line 216
    :goto_3
    if-eqz v1, :cond_1

    .line 217
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 215
    :cond_1
    :goto_4
    throw v3

    .line 216
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    .line 217
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 223
    :cond_3
    :goto_5
    const/4 v3, 0x1

    goto :goto_0

    .line 219
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "reader: Gps Time file close fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "reader: Gps Time file close fail"

    goto :goto_2

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v4, "reader: Gps Time file close fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 211
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static readSiRFfile()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 110
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "readSiRFfile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, reader:Ljava/io/BufferedReader;
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    const-string v6, "777"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/HtcLocationUtil;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, s:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    .line 119
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sput-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    .line 120
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDAGPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 131
    if-eqz v2, :cond_0

    .line 132
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 138
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .local v0, e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v4

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "readSiRFfile fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    if-eqz v1, :cond_1

    .line 132
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "reader: AGps config file close fail"

    .end local v1           #reader:Ljava/io/BufferedReader;
    :goto_3
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    .line 131
    :goto_4
    if-eqz v1, :cond_2

    .line 132
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 130
    :cond_2
    :goto_5
    throw v4

    .line 134
    :catch_2
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "reader: AGps config file close fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v5, "reader: AGps config file close fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    if-eqz v2, :cond_1

    .line 132
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 134
    :catch_4
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "reader: AGps config file close fail"

    goto :goto_3

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #s:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 124
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 176
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 171
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeGpsTimeSync(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 227
    const-string v0, ""

    .line 228
    .local v0, val:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "1"

    :goto_0
    sput-object v1, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    .line 229
    sget-object v1, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeGpsTimeSync mGpsSyncTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-boolean v1, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    if-nez v1, :cond_1

    .line 231
    sget-object v1, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_1
    return-void

    .line 228
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 235
    :cond_1
    sget-object v1, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_SyncTime_FileName:Ljava/lang/String;

    const-string v2, "777"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static writeSirf(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 142
    const-string v2, ""

    .line 143
    .local v2, val:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, "1"

    :goto_0
    sput-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    .line 144
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSirf mDAGPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-boolean v3, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    if-nez v3, :cond_1

    .line 146
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_1
    return-void

    .line 143
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 149
    :cond_1
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 150
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 152
    .local v1, last:I
    const/4 v0, 0x0

    .local v0, item:I
    :goto_2
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 153
    if-eq v0, v1, :cond_2

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/framework/util/HtcLocationUtil;->cfg:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 159
    :cond_3
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v3, Lcom/android/settings/framework/util/HtcLocationUtil;->AGPS_FileName:Ljava/lang/String;

    const-string v4, "777"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/HtcLocationUtil;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public LocManagerSendExtraCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 456
    :cond_0
    return-void
.end method

.method public getEnableAGpsInConfig()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableAGpsInConfig:Z

    return v0
.end method

.method public getEnableGpsTimeSync()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGpsTimeSync:Z

    return v0
.end method

.method public getreadAGpsConfig()Z
    .locals 1

    .prologue
    .line 498
    sget-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    return v0
.end method

.method public getreadGpsTimeSync()Z
    .locals 1

    .prologue
    .line 494
    sget-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    return v0
.end method

.method public updateAGpsInConfig()V
    .locals 3

    .prologue
    .line 459
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->readSiRFfile()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    .line 460
    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAGpsConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDAGPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readAGpsConfig:Z

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->mDAGPS:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableAGpsInConfig:Z

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableAGpsInConfig:Z

    goto :goto_0
.end method

.method public updateGpsTimeSync()V
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Lcom/android/settings/framework/util/HtcLocationUtil;->readGPSTimefile()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    .line 476
    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readGpsTimeSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mGpsSyncTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-boolean v0, Lcom/android/settings/framework/util/HtcLocationUtil;->readGpsTimeSync:Z

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/util/HtcLocationUtil;->mGpsSyncTime:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGpsTimeSync:Z

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGpsTimeSync:Z

    goto :goto_0
.end method

.method public updateSystemAGpsSettings(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "agps_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->writeSirf(Z)V

    .line 243
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warnInfoAGpsOn(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    .line 252
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$3;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$3;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$2;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/util/HtcLocationUtil$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$1;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mWarnInfoAGpsOn:Landroid/content/DialogInterface;

    .line 304
    return-void
.end method

.method public warnInfoAGpsOnQCT(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 312
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    .line 315
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 318
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c05d5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c05d3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$6;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$6;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$5;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$5;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/util/HtcLocationUtil$4;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$4;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mWarnInfoAGpsOn:Landroid/content/DialogInterface;

    .line 387
    return-void
.end method

.method public warnInfoMobileNetwork(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    .line 395
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 398
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0c05d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0c05d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    const v2, 0x20c0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$9;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$9;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;

    const v2, 0x20c0164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/util/HtcLocationUtil$8;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$8;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/util/HtcLocationUtil$7;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/HtcLocationUtil$7;-><init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil;->mWarnInfoMobileNetwork:Landroid/content/DialogInterface;

    .line 439
    return-void
.end method
