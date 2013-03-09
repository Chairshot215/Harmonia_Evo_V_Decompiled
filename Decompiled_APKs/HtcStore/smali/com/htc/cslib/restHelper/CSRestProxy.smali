.class public Lcom/htc/cslib/restHelper/CSRestProxy;
.super Ljava/lang/Object;
.source "CSRestProxy.java"

# interfaces
.implements Lcom/htc/cslib/restHelper/RestHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;,
        Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    }
.end annotation


# static fields
.field private static final CommandAndControl:I = 0xfb

.field private static final InvalidAuthKey:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "CSRestProxy"

.field private static updated_:Z


# instance fields
.field private final ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

.field private accountId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private baseURL_:Ljava/lang/String;

.field private contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

.field private deviceId_:Ljava/lang/String;

.field private handler_:Landroid/os/Handler;

.field private hasAppProvisioning:Z

.field private hasProvisioning:Z

.field private isPersonalize:Z

.field private final mContext_:Landroid/content/Context;

.field private provData_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 83
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 84
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSDatabaseUtil;->getBaseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSRestProxy Init Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 113
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 114
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSDatabaseUtil;->getBaseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 117
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSRestProxy Init Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "isPer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 131
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 132
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 133
    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 135
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 136
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 137
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 140
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAppProvisioning;->clearConfig(Landroid/content/Context;)V

    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSRestProxy Init Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 159
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 163
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 166
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAppProvisioning;->clearConfig(Landroid/content/Context;)V

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSRestProxy Init Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "URL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "com.htc.cs.provisioning.fail"

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 102
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "URL"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "com.htc.cs.provisioning.fail"

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 179
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cslib/restHelper/CSRestProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput-boolean p0, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    return p0
.end method

.method private checkPreCondition()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    iget-object v8, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 261
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.htc.cs"

    const/16 v9, 0x80

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 265
    .local v2, pInfo1:Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, temp:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 270
    .local v1, f:F
    float-to-double v8, v1

    const-wide v10, 0x400599999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 286
    .end local v1           #f:F
    .end local v2           #pInfo1:Landroid/content/pm/PackageInfo;
    .end local v5           #temp:Ljava/lang/String;
    :goto_0
    return v6

    .line 274
    .restart local v1       #f:F
    .restart local v2       #pInfo1:Landroid/content/pm/PackageInfo;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_0
    const-string v8, "com.htc.csengine"

    const/16 v9, 0x2000

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 276
    .local v3, pInfo2:Landroid/content/pm/PackageInfo;
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.htc.csengine"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 279
    goto :goto_0

    .line 282
    .end local v1           #f:F
    .end local v2           #pInfo1:Landroid/content/pm/PackageInfo;
    .end local v3           #pInfo2:Landroid/content/pm/PackageInfo;
    .end local v5           #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #f:F
    .restart local v2       #pInfo1:Landroid/content/pm/PackageInfo;
    .restart local v3       #pInfo2:Landroid/content/pm/PackageInfo;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 286
    goto :goto_0
.end method

.method private httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .parameter "payload"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x32

    const/4 v7, 0x0

    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, time:I
    iget-boolean v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v4, :cond_1

    .line 419
    :goto_0
    sget-boolean v4, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v4, :cond_0

    if-ge v2, v6, :cond_0

    .line 421
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 428
    sget-boolean v4, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v4, :cond_1

    if-lt v2, v6, :cond_1

    .line 429
    new-instance v4, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v5, "Provisioning time out! Fail to perform provisioning"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Time out"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 436
    :cond_1
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "stores"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "personalize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 438
    const-string v1, ""

    .line 441
    .local v1, jsonRec:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 491
    :goto_1
    return-object v1

    .line 443
    :catch_1
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    throw v0

    .line 451
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonRec:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 452
    :cond_3
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unknown App Type"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    :cond_4
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "stores"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 455
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 459
    :goto_2
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 461
    :try_start_2
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 468
    :cond_5
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "stores"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 469
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 474
    :goto_3
    iput-boolean v7, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 477
    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, url:Ljava/lang/String;
    const-string v1, ""

    .line 485
    .restart local v1       #jsonRec:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0, v3, p3, p2}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_1

    .line 457
    .end local v1           #jsonRec:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_2

    .line 463
    :catch_2
    move-exception v0

    .line 464
    .restart local v0       #e:Ljava/lang/Exception;
    throw v0

    .line 471
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_3

    .line 487
    .restart local v1       #jsonRec:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 489
    .restart local v0       #e:Ljava/lang/Exception;
    throw v0
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 196
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->checkPreCondition()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Incompatible CS engine version!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v2, v3, :cond_2

    .line 202
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 204
    sput-boolean v6, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    .line 205
    iput-boolean v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.csengine.startservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, csIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    new-instance v2, Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-direct {v2, p0}, Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;-><init>(Lcom/htc/cslib/restHelper/CSRestProxy;)V

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 209
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    .end local v0           #csIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Handler is null - Fail to create content observer; Please use CSRestProxy(Context context, String URL, Handler handle)."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v2, v3, :cond_7

    .line 218
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown App Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "stores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/Exception;
    throw v1

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "personalize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getProvisioningData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_7
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    :cond_8
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown App Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_9
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "stores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 244
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 250
    :goto_1
    const-string v2, "base url %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_a
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "personalize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 246
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_1

    .line 248
    :cond_b
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getProvisioningData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    goto :goto_1
.end method

.method private isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    .locals 10

    .prologue
    .line 295
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSDatabaseUtil;->getTTL(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    .line 300
    .local v5, ttl:Ljava/lang/Long;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 301
    :cond_0
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    .line 338
    :goto_0
    return-object v6

    .line 305
    :cond_1
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v7, "stores"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 307
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getTTL(Landroid/content/Context;)J

    move-result-wide v0

    .line 318
    .local v0, appttl:J
    :goto_1
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v7, "stores"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v7, "personalize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 320
    :cond_2
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 321
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0

    .line 309
    .end local v0           #appttl:J
    :cond_3
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v7, "personalize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 311
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesTTL(Landroid/content/Context;)J

    move-result-wide v0

    .restart local v0       #appttl:J
    goto :goto_1

    .line 314
    .end local v0           #appttl:J
    :cond_4
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getProvisioningData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    .line 315
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getTTL(Landroid/content/Context;)J

    move-result-wide v0

    .restart local v0       #appttl:J
    goto :goto_1

    .line 325
    :cond_5
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0

    .line 332
    :cond_6
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 333
    .local v2, calendar:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 335
    .local v3, currentTime:J
    cmp-long v6, v0, v3

    if-lez v6, :cond_7

    .line 336
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->no_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0

    .line 338
    :cond_7
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto/16 :goto_0
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v1, "stores"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v1, "personalize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public cmsURL()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    .line 729
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "stores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "personalize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 730
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "This method does not support this namespace"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unsupported"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 732
    :cond_0
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_3

    .line 733
    const/4 v2, 0x0

    .line 734
    .local v2, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-ge v2, v5, :cond_1

    .line 736
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 742
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_2

    if-lt v2, v5, :cond_2

    .line 743
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 746
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 748
    .end local v2           #time:I
    :cond_3
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->getCMSURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, cmsURL:Ljava/lang/String;
    return-object v0
.end method

.method public getProvisioningProperty()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    .line 758
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "stores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "personalize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    :cond_0
    new-instance v2, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "This method does not support this namespace"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unsupported"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 761
    :cond_1
    iget-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v2, :cond_4

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, time:I
    :goto_0
    sget-boolean v2, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v2, :cond_2

    if-ge v1, v4, :cond_2

    .line 765
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 771
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    sget-boolean v2, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v2, :cond_3

    if-lt v1, v4, :cond_3

    .line 772
    new-instance v2, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Provisioning time out! Fail to perform provisioning"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Time out"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 775
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 777
    .end local v1           #time:I
    :cond_4
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getProvisioningData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    .line 778
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->provData_:Ljava/lang/String;

    return-object v2
.end method

.method public httpDelete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 396
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    throw v0
.end method

.method public httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    const-string v2, "retry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v2, Lcom/htc/cslib/exceptions/CommandAndControlException;

    const-string v3, "callSetUp"

    const/16 v4, 0xfb

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/cslib/exceptions/CommandAndControlException;-><init>(Ljava/lang/String;ILjava/lang/Exception;)V

    throw v2

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 351
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    throw v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    throw v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 374
    return-object v1

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    throw v0
.end method

.method public sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "url"
    .parameter "method"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v8, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    const-string v1, "\\\\"

    const-string v3, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>(Ljava/lang/String;)V

    .line 497
    .local v8, outParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    invoke-direct {v9}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>()V

    .line 498
    .local v9, inParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v2, Lcom/htc/cslib/util/CSCookie;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/htc/cslib/util/CSCookie;-><init>(Landroid/content/Context;)V

    .line 499
    .local v2, cookie:Lcom/htc/cslib/util/CSCookie;
    const/16 v23, 0x0

    .line 500
    .local v23, retry:I
    :cond_0
    :goto_0
    const/4 v1, 0x3

    move/from16 v0, v23

    if-ge v0, v1, :cond_8

    .line 502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, authkey:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 506
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v9}, Lcom/htc/cslib/util/JSONRequest;->sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V

    .line 511
    .end local v7           #authkey:Ljava/lang/String;
    :goto_1
    const/16 v23, 0x3

    goto :goto_0

    .line 509
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    const-string v16, ""

    move-object v11, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/htc/cslib/util/JSONRequest;->sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 513
    :catch_0
    move-exception v20

    .line 515
    .local v20, csException:Lcom/htc/cslib/exceptions/MyCSException;
    add-int/lit8 v23, v23, 0x1

    .line 516
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getErrorType()Lcom/htc/cslib/exceptions/ErrorType;

    move-result-object v1

    sget-object v3, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    if-ne v1, v3, :cond_4

    .line 518
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomCode()I

    move-result v22

    .line 523
    .local v22, err:I
    const/16 v1, 0xc8

    move/from16 v0, v22

    if-ne v0, v1, :cond_3

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 526
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 527
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 529
    .end local v7           #authkey:Ljava/lang/String;
    :cond_3
    const/16 v1, 0xfb

    move/from16 v0, v22

    if-ne v0, v1, :cond_0

    .line 531
    new-instance v1, Lcom/htc/cslib/exceptions/CommandAndControlException;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    move/from16 v0, v22

    invoke-direct {v1, v3, v0, v4}, Lcom/htc/cslib/exceptions/CommandAndControlException;-><init>(Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    .line 537
    .end local v22           #err:I
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v22

    .line 542
    .local v22, err:Lcom/htc/cslib/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->TicketExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_6

    .line 544
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 545
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_6

    .line 546
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (InvalidCredential)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 548
    .end local v7           #authkey:Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_7

    .line 550
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v19

    .line 555
    .local v19, cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->setServiceUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 559
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (WrongDataCenter)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 562
    .end local v7           #authkey:Ljava/lang/String;
    .end local v19           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :cond_7
    throw v20

    .line 566
    .end local v20           #csException:Lcom/htc/cslib/exceptions/MyCSException;
    .end local v22           #err:Lcom/htc/cslib/exceptions/ErrorCode;
    :catch_1
    move-exception v21

    .line 571
    .local v21, e:Ljava/lang/Exception;
    add-int/lit8 v23, v23, 0x1

    .line 572
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 573
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to make http request"

    move-object/from16 v0, v21

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 582
    .end local v21           #e:Ljava/lang/Exception;
    :cond_8
    iget-object v1, v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;->_s:Ljava/lang/String;

    return-object v1
.end method

.method public serverURL()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    .line 700
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "stores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "personalize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 701
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "This method does not support this namespace"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unsupported"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 703
    :cond_0
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_3

    .line 704
    const/4 v2, 0x0

    .line 705
    .local v2, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-ge v2, v5, :cond_1

    .line 707
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 713
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_2

    if-lt v2, v5, :cond_2

    .line 714
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 717
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 719
    .end local v2           #time:I
    :cond_3
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->getServiceURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, serverURL:Ljava/lang/String;
    return-object v1
.end method

.method public setAccountID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 640
    return-void
.end method

.method public setupURI()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    .line 649
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "stores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "personalize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "This method does not support this namespace"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unsupported"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 652
    :cond_0
    const-string v2, ""

    .line 654
    .local v2, uri:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_2

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-ge v1, v5, :cond_1

    .line 658
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 664
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_2

    if-lt v1, v5, :cond_2

    .line 665
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 670
    .end local v1           #time:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v3

    sget-object v4, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v3, v4, :cond_5

    .line 672
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 673
    :cond_3
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unknown App Type"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 676
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 684
    :cond_5
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "stores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 685
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 689
    :goto_1
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getSetUpURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 691
    return-object v2

    .line 678
    :catch_1
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/Exception;
    throw v0

    .line 687
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_1
.end method
