.class final Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;
.super Landroid/os/Handler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceInfoManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    return-object v0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcutInfoList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$2400()Landroid/net/Uri;

    move-result-object v1

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "shortcut_app_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "shortcut_class_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    invoke-direct {v0, v7, v6}, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_1
    move-object v2, v10

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v8, 0x0

    :cond_7
    throw v0
.end method

.method private getShortcutVisibility()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$2300()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shortcut_visibility"

    invoke-direct {p0, v6, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x1

    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_2
    move v9, v8

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v6, 0x0

    :cond_7
    throw v0
.end method

.method private getSimState()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getWeatherRes()Lcom/htc/weather/StateResources;
    .locals 2

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private logHWInfoTime()V
    .locals 2

    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    return-void
.end method

.method private logInstalledApp()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ";"

    invoke-virtual {v6, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    const/4 v6, 0x0

    throw v8
.end method

.method private logLocationInfo()V
    .locals 14

    iget-object v12, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v11, "unknown"

    const-string v5, "unknown"

    const-string v1, "unknown"

    const-string v6, "unknown"

    const-string v10, "unknown"

    :try_start_0
    const-string v12, "gsm.operator.alpha"

    const-string v13, "unknown"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v12, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getWeatherRes()Lcom/htc/weather/StateResources;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v11, "unknown"

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_3
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, ""

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v12, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v12, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string v11, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "logLocationInfo occures exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "encrypt exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    const/4 v7, 0x0

    throw v12
.end method

.method private logLockscreenShortcutInfo()V
    .locals 11

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "keyguard"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v9, v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2202(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2200(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getShortcutVisibility()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getShortcutInfoList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "logLockscreenShortcutInfo exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    const/4 v5, 0x0

    throw v8
.end method

.method private logSWInfoTime()V
    .locals 2

    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    return-void
.end method

.method private logStatusbarInfo()V
    .locals 2

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;

    const-string v1, "logStatusbar"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;-><init>(Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private logWallpaperInfo()V
    .locals 8

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6, v7}, Lcom/htc/server/HtcDeviceInfoManager;->access$2102(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/WallpaperManager;)Landroid/app/WallpaperManager;

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2100(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/WallpaperManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2100(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v6, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v6, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "android"

    const-string v7, "ImageWallpaper"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    const/4 v5, 0x0

    throw v6
.end method

.method private update(Ljava/lang/String;)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    if-eqz v6, :cond_0

    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1900(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/android/internal/os/ProcessStats;

    move-result-object v10

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1300(Lcom/htc/server/HtcDeviceInfoManager;)J

    move-result-wide v10

    sub-long v3, v8, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    :goto_1
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    if-eqz v6, :cond_2

    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/server/HtcDeviceInfoManager;->access$1400(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1300(Lcom/htc/server/HtcDeviceInfoManager;)J

    move-result-wide v10

    sub-long v3, v8, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    :cond_4
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10, v8, v9}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1900(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/android/internal/os/ProcessStats;

    move-result-object v10

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->updateTime()V

    :cond_8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$600()Landroid/os/PowerManager;

    move-result-object v23

    const/16 v24, 0x1

    const-string v25, "HtcUBFlushWakeLock"

    invoke-virtual/range {v23 .. v25}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getSimState()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/HtcDeviceInfo;->simState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v24 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLocationInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logStatusbarInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logWallpaperInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLockscreenShortcutInfo()V

    sget-wide v23, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1000(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v24 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$802(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_1

    const/16 v23, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$1100()J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x1

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$1200()J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static/range {v23 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1402(Lcom/htc/server/HtcDeviceInfoManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    if-eqz v9, :cond_2

    iget v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v24

    goto/16 :goto_0

    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v23

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    if-eqz v9, :cond_0

    iget v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    if-nez v9, :cond_4

    new-instance v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v9}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    move/from16 v0, v18

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    iput v8, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v9, v0

    if-eqz v9, :cond_3

    :cond_3
    new-instance v10, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v10}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    move/from16 v0, v18

    iput v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    iput v8, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    iput-wide v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v9, v10

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v18

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    iput v8, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    :catchall_2
    move-exception v23

    :goto_2
    :try_start_5
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v23

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    if-eqz v9, :cond_5

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v24

    goto/16 :goto_0

    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v23

    :pswitch_8
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_3

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    const-string v24, "ro.build.changelist"

    const-string v25, "unknown"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/HtcDeviceInfo;->simState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static/range {v23 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    goto/16 :goto_0

    :pswitch_a
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    monitor-exit v24

    goto/16 :goto_0

    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v23

    :pswitch_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1600(Lcom/htc/server/HtcDeviceInfoManager;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    move-wide/from16 v23, v0

    sub-long v6, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$1602(Lcom/htc/server/HtcDeviceInfoManager;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1600(Lcom/htc/server/HtcDeviceInfoManager;)Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    move-wide/from16 v23, v0

    sub-long v6, v14, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$1602(Lcom/htc/server/HtcDeviceInfoManager;Z)Z

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v23, "time"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isVoiceInUse()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    const-wide/16 v6, 0x0

    const-wide/16 v23, 0x0

    cmp-long v23, v20, v23

    if-lez v23, :cond_8

    const-wide/16 v23, 0x0

    cmp-long v23, v12, v23

    if-lez v23, :cond_8

    cmp-long v23, v12, v20

    if-gez v23, :cond_8

    sub-long v6, v20, v12

    sget-wide v23, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    cmp-long v23, v6, v23

    if-gtz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const-string v24, "user activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    goto/16 :goto_0

    :cond_9
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_8

    const-string v23, "HtcDeviceInfoManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "userActivity, over max duration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-wide v25, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_8

    const-string v23, "HtcDeviceInfoManager"

    const-string v24, "userActivity, voiceInUse!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_e
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_b

    const-string v23, "HtcDeviceInfoManager"

    const-string v24, "APP_DIED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v23, "pid"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->stop(II)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startPhoneCall()V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->stopPhoneCall()V

    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logInstalledApp()V

    goto/16 :goto_0

    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logSWInfoTime()V

    goto/16 :goto_0

    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logHWInfoTime()V

    goto/16 :goto_0

    :pswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLocationInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logInstalledApp()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logStatusbarInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logWallpaperInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLockscreenShortcutInfo()V

    goto/16 :goto_0

    :catchall_5
    move-exception v23

    move-object v9, v10

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
