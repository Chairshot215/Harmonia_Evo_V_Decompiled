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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
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

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 82
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSDatabaseUtil;->getBaseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 84
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 86
    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
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

    .line 95
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

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 112
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSDatabaseUtil;->getBaseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 114
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 115
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
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

    .line 125
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

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 130
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 131
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 132
    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 134
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 135
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 136
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 139
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAppProvisioning;->clearConfig(Landroid/content/Context;)V

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
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

    .line 146
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

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v1, "com.htc.cs.provisioning.fail"

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 158
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 160
    iput-object p3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 161
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 165
    iget-object v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAppProvisioning;->clearConfig(Landroid/content/Context;)V

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 171
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

    .line 172
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

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "com.htc.cs.provisioning.fail"

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 101
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 108
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

    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "com.htc.cs.provisioning.fail"

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 178
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 184
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

    .line 251
    iget-object v8, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 253
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.htc.cs"

    const/16 v9, 0x80

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 257
    .local v2, pInfo1:Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, temp:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 262
    .local v1, f:F
    float-to-double v8, v1

    const-wide v10, 0x400599999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 278
    .end local v1           #f:F
    .end local v2           #pInfo1:Landroid/content/pm/PackageInfo;
    .end local v5           #temp:Ljava/lang/String;
    :goto_0
    return v6

    .line 266
    .restart local v1       #f:F
    .restart local v2       #pInfo1:Landroid/content/pm/PackageInfo;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_0
    const-string v8, "com.htc.csengine"

    const/16 v9, 0x2000

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 268
    .local v3, pInfo2:Landroid/content/pm/PackageInfo;
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.htc.csengine"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 271
    goto :goto_0

    .line 274
    .end local v1           #f:F
    .end local v2           #pInfo1:Landroid/content/pm/PackageInfo;
    .end local v3           #pInfo2:Landroid/content/pm/PackageInfo;
    .end local v5           #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #f:F
    .restart local v2       #pInfo1:Landroid/content/pm/PackageInfo;
    .restart local v3       #pInfo2:Landroid/content/pm/PackageInfo;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 278
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

    .line 394
    const/4 v2, 0x0

    .line 396
    .local v2, time:I
    iget-boolean v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v4, :cond_1

    .line 398
    :goto_0
    sget-boolean v4, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v4, :cond_0

    if-ge v2, v6, :cond_0

    .line 400
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 407
    sget-boolean v4, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v4, :cond_1

    if-lt v2, v6, :cond_1

    .line 408
    new-instance v4, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v5, "Provisioning time out! Fail to perform provisioning"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Time out"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Unknown App Type"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "stores"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 424
    :goto_1
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 426
    :try_start_1
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    :cond_4
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v5, "stores"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 439
    :goto_2
    iput-boolean v7, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 442
    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, url:Ljava/lang/String;
    const-string v1, ""

    .line 450
    .local v1, jsonRec:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v3, p3, p2}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 456
    return-object v1

    .line 422
    .end local v1           #jsonRec:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_1

    .line 428
    :catch_1
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    throw v0

    .line 436
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_2

    .line 452
    .restart local v1       #jsonRec:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 454
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

    .line 195
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->checkPreCondition()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Incompatible CS engine version!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v2, v3, :cond_2

    .line 201
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 203
    sput-boolean v6, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    .line 204
    iput-boolean v5, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.csengine.startservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, csIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    new-instance v2, Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-direct {v2, p0}, Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;-><init>(Lcom/htc/cslib/restHelper/CSRestProxy;)V

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    .line 208
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->contentObserverDeviceConfig:Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    .end local v0           #csIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Handler is null - Fail to create content observer; Please use CSRestProxy(Context context, String URL, Handler handle)."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v2

    sget-object v3, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v2, v3, :cond_6

    .line 217
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown App Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "stores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 229
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    throw v1

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_6
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 235
    :cond_7
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown App Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v3, "stores"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 242
    :goto_1
    const-string v2, "base url %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_9
    iget-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_1
.end method

.method private isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    .locals 10

    .prologue
    .line 287
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSDatabaseUtil;->getTTL(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    .line 292
    .local v5, ttl:Ljava/lang/Long;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 293
    :cond_0
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->call_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    .line 317
    :goto_0
    return-object v6

    .line 297
    :cond_1
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v7, "stores"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 299
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getTTL(Landroid/content/Context;)J

    move-result-wide v0

    .line 306
    .local v0, appttl:J
    :goto_1
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0

    .line 302
    .end local v0           #appttl:J
    :cond_2
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 303
    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesTTL(Landroid/content/Context;)J

    move-result-wide v0

    .restart local v0       #appttl:J
    goto :goto_1

    .line 311
    :cond_3
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 312
    .local v2, calendar:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 314
    .local v3, currentTime:J
    cmp-long v6, v0, v3

    if-lez v6, :cond_4

    .line 315
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->no_provisioning:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0

    .line 317
    :cond_4
    sget-object v6, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    goto :goto_0
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v1, "stores"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

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

    .line 685
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_2

    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_0

    if-ge v2, v5, :cond_0

    .line 689
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 695
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-lt v2, v5, :cond_1

    .line 696
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 699
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 701
    .end local v2           #time:I
    :cond_2
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->getCMSURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, cmsURL:Ljava/lang/String;
    return-object v0
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
    .line 373
    const/4 v1, 0x0

    .line 375
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 382
    return-object v1

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
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
    .line 324
    const-string v2, "retry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    new-instance v2, Lcom/htc/cslib/exceptions/CommandAndControlException;

    const-string v3, "callSetUp"

    const/16 v4, 0xfb

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/cslib/exceptions/CommandAndControlException;-><init>(Ljava/lang/String;ILjava/lang/Exception;)V

    throw v2

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 330
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 338
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
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
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
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
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
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
    .line 461
    new-instance v8, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    const-string v1, "\\\\"

    const-string v3, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>(Ljava/lang/String;)V

    .line 462
    .local v8, outParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    invoke-direct {v9}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>()V

    .line 463
    .local v9, inParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v2, Lcom/htc/cslib/util/CSCookie;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/htc/cslib/util/CSCookie;-><init>(Landroid/content/Context;)V

    .line 464
    .local v2, cookie:Lcom/htc/cslib/util/CSCookie;
    const/16 v23, 0x0

    .line 465
    .local v23, retry:I
    :cond_0
    :goto_0
    const/4 v1, 0x3

    move/from16 v0, v23

    if-ge v0, v1, :cond_7

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, authkey:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 471
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

    .line 476
    .end local v7           #authkey:Ljava/lang/String;
    :goto_1
    const/16 v23, 0x3

    goto :goto_0

    .line 474
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

    .line 478
    :catch_0
    move-exception v20

    .line 480
    .local v20, csException:Lcom/htc/cslib/exceptions/MyCSException;
    add-int/lit8 v23, v23, 0x1

    .line 481
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getErrorType()Lcom/htc/cslib/exceptions/ErrorType;

    move-result-object v1

    sget-object v3, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    if-ne v1, v3, :cond_4

    .line 483
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomCode()I

    move-result v22

    .line 488
    .local v22, err:I
    const/16 v1, 0xc8

    move/from16 v0, v22

    if-ne v0, v1, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 491
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 492
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 494
    .end local v7           #authkey:Ljava/lang/String;
    :cond_3
    const/16 v1, 0xfb

    move/from16 v0, v22

    if-ne v0, v1, :cond_0

    .line 496
    new-instance v1, Lcom/htc/cslib/exceptions/CommandAndControlException;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    move/from16 v0, v22

    invoke-direct {v1, v3, v0, v4}, Lcom/htc/cslib/exceptions/CommandAndControlException;-><init>(Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    .line 502
    .end local v22           #err:I
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v22

    .line 507
    .local v22, err:Lcom/htc/cslib/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 510
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_5

    .line 511
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (InvalidCredential)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 513
    .end local v7           #authkey:Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_6

    .line 515
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v19

    .line 520
    .local v19, cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->setServiceUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 523
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 524
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (WrongDataCenter)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 527
    .end local v7           #authkey:Ljava/lang/String;
    .end local v19           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :cond_6
    throw v20

    .line 531
    .end local v20           #csException:Lcom/htc/cslib/exceptions/MyCSException;
    .end local v22           #err:Lcom/htc/cslib/exceptions/ErrorCode;
    :catch_1
    move-exception v21

    .line 536
    .local v21, e:Ljava/lang/Exception;
    add-int/lit8 v23, v23, 0x1

    .line 537
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 538
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to make http request"

    move-object/from16 v0, v21

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 547
    .end local v21           #e:Ljava/lang/Exception;
    :cond_7
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

    .line 659
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_2

    .line 660
    const/4 v2, 0x0

    .line 661
    .local v2, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_0

    if-ge v2, v5, :cond_0

    .line 663
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-lt v2, v5, :cond_1

    .line 670
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 673
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 675
    .end local v2           #time:I
    :cond_2
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->getServiceURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, serverURL:Ljava/lang/String;
    return-object v1
.end method

.method public setAccountID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 602
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

    .line 610
    const-string v2, ""

    .line 612
    .local v2, uri:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    if-eqz v3, :cond_1

    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, time:I
    :goto_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_0

    if-ge v1, v5, :cond_0

    .line 616
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 622
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sget-boolean v3, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    if-nez v3, :cond_1

    if-lt v1, v5, :cond_1

    .line 623
    new-instance v3, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v4, "Provisioning time out! Fail to perform provisioning"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Time out"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 628
    .end local v1           #time:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/cslib/restHelper/CSRestProxy;->isTtlExpired()Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    move-result-object v3

    sget-object v4, Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;->recall_provising:Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;

    if-ne v3, v4, :cond_4

    .line 630
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unknown App Type"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 642
    :cond_4
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    const-string v4, "stores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 643
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 647
    :goto_1
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getSetUpURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 649
    return-object v2

    .line 636
    :catch_1
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    throw v0

    .line 645
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cslib/util/CSAppProvisioning;->getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    goto :goto_1
.end method
