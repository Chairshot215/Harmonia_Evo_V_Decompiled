.class public Lcom/htc/cs/util/CloudProxyUtil;
.super Ljava/lang/Object;
.source "CloudProxyUtil.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "[CloudProxyUtil] "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;Ljava/util/UUID;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "handsetVerificationId"
    .parameter
    .parameter "password"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    sget-boolean v1, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "MyHTC"

    const-string v2, "[CloudProxyUtil] bindService(): begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 197
    .local v0, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    if-nez v0, :cond_1

    .line 198
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "Proxy is null"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_1
    :try_start_0
    new-instance v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;

    invoke-direct {v8}, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;-><init>()V

    .line 203
    .local v8, bindRequest:Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;
    iput-object p1, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;->BindRequestId:Ljava/util/UUID;

    .line 204
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;->CountryCode:Ljava/lang/String;

    .line 205
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;->EmailAddress:Ljava/lang/String;

    .line 206
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;->HandsetDeviceId:Ljava/util/UUID;

    .line 209
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;->PhoneNumber:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->bindHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;)V

    .line 213
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    sget-boolean v1, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 215
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CloudProxyUtil] setLegalDocResponses(): versionList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, legalEmail:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSentLegalDocVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSentLegalDocAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    const-string v1, "Accept"

    invoke-virtual {v0, p2, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setLegalDocResponses(Ljava/util/List;Ljava/lang/String;)V

    .line 223
    sget-boolean v1, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 224
    const-string v1, "MyHTC"

    const-string v2, "[CloudProxyUtil]  sent versionList "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSentLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    invoke-static {p0, v10}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSentLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    .end local v10           #legalEmail:Ljava/lang/String;
    :cond_4
    invoke-static {p0, v0}, Lcom/htc/cs/util/CloudProxyUtil;->checkFullMergeStatus(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    .line 234
    invoke-static {p0}, Lcom/htc/cs/service/DashboardService;->checkLegalDoc(Landroid/content/Context;)Z

    .line 236
    const-string v1, "profiler.csserialnum"

    const-string v2, "ro.serialno"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 238
    .local v11, serialNo:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setSerialNumber(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v9

    .line 242
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :try_start_2
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CloudProxyUtil] sendSerialNumber CSException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 246
    .end local v8           #bindRequest:Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;
    .end local v9           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v11           #serialNo:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 248
    .restart local v9       #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    .line 249
    throw v9
.end method

.method public static checkFullMergeStatus(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V
    .locals 5
    .parameter "context"
    .parameter "restServicesProxy"

    .prologue
    .line 304
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getFullMergeStopFlag()Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;

    move-result-object v1

    .line 305
    .local v1, fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    iget-boolean v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;->IsFullMergeSyncEnabled:Z

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSyncStatus(Landroid/content/Context;Z)V

    .line 306
    iget v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;->TryAgainInterval:I

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSyncCheckInterval(Landroid/content/Context;I)V

    .line 307
    sget-boolean v2, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 308
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CloudProxyUtil] checkFullMergeStatus fmStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;->IsFullMergeSyncEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1           #fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MyHTC"

    const-string v3, "[CloudProxyUtil]  checkFullMergeStatus Exception "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createCSAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/util/UUID;
    .locals 23
    .parameter "context"
    .parameter "region_uuid"
    .parameter "SendEmailAboutProducts"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v11, 0x0

    .line 42
    .local v11, bindRequestId:Ljava/util/UUID;
    new-instance v2, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    .local v2, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    if-eqz v2, :cond_4

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, firstName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 51
    .local v18, lastName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 52
    .local v20, phoneNumber:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, deviceID:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, countryCode:Ljava/lang/String;
    new-instance v22, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;

    invoke-direct/range {v22 .. v22}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;-><init>()V

    .line 55
    .local v22, virtualDev:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->PhoneNumberString:Ljava/lang/String;

    .line 56
    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->HandsetDeviceId:Ljava/util/UUID;

    .line 57
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ForceRingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 58
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->RemoteDataWipeState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 59
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockedHandsetState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 60
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStateEmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 61
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStatePhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 62
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 63
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->BindRequestId:Ljava/util/UUID;

    .line 64
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AlternateNumber:Ljava/lang/String;

    .line 65
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardEmailAddress:Ljava/lang/String;

    .line 66
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardPhoneNumber:Ljava/lang/String;

    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardPhoneNumber:Ljava/lang/String;

    .line 68
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetPin:Ljava/lang/String;

    .line 69
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetMessage:Ljava/lang/String;

    .line 70
    const-string v3, "510"

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AreaCode:Ljava/lang/String;

    .line 71
    move-object/from16 v0, v22

    iput-object v12, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CountryCode:Ljava/lang/String;

    .line 72
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 73
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncStateDate:Ljava/util/Date;

    .line 75
    new-instance v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v10}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    .line 76
    .local v10, account:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->EmailAddress:Ljava/lang/String;

    .line 77
    invoke-static/range {p3 .. p3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->NewPassword:Ljava/lang/String;

    .line 78
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AuthTicket:Ljava/lang/String;

    .line 79
    sget-object v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AccountStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    .line 80
    iput-object v15, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->FirstName:Ljava/lang/String;

    .line 81
    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LastName:Ljava/lang/String;

    .line 82
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->Region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    .line 87
    invoke-static/range {p1 .. p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->RegionId:Ljava/util/UUID;

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    .line 94
    .local v19, locale:Ljava/util/Locale;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, language:Ljava/lang/String;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    sget-boolean v3, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "MyHTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CloudProxyUtil] createCSAccount(): language is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LanguageCode:Ljava/lang/String;

    .line 104
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    .line 105
    iget-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->DateOfBirth:Ljava/util/Date;

    .line 107
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SendEmailAboutProducts:Z

    .line 108
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSecurityQuestion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityQuestion:Ljava/lang/String;

    .line 109
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSecurityAnswer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityAnswer:Ljava/lang/String;

    .line 110
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CreateTime:Ljava/util/Date;

    .line 111
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VerifyEmailId:Ljava/util/UUID;

    .line 112
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->IpAddress:Ljava/lang/String;

    .line 113
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaChallengeField:Ljava/lang/String;

    .line 114
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaResponseField:Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {v2, v10}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->CreateAccountFromHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Ljava/lang/String;

    move-result-object v21

    .line 119
    .local v21, retval:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v16

    .line 130
    .local v16, handsetVerificationId:Ljava/util/UUID;
    if-eqz v16, :cond_3

    .line 132
    sget-boolean v3, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 133
    const-string v3, "MyHTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CloudProxyUtil] createCSAccount(): Device ID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    return-object v11

    .line 102
    .end local v16           #handsetVerificationId:Ljava/util/UUID;
    .end local v21           #retval:Ljava/lang/String;
    :cond_2
    const-string v3, "en_US"

    iput-object v3, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LanguageCode:Ljava/lang/String;

    goto :goto_0

    .line 138
    .restart local v16       #handsetVerificationId:Ljava/util/UUID;
    .restart local v21       #retval:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v4, "Unable to create a new account on the server."

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .end local v16           #handsetVerificationId:Ljava/util/UUID;
    .end local v21           #retval:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 142
    .local v14, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v14}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    .line 143
    throw v14

    .line 147
    .end local v10           #account:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    .end local v12           #countryCode:Ljava/lang/String;
    .end local v13           #deviceID:Ljava/lang/String;
    .end local v14           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v15           #firstName:Ljava/lang/String;
    .end local v17           #language:Ljava/lang/String;
    .end local v18           #lastName:Ljava/lang/String;
    .end local v19           #locale:Ljava/util/Locale;
    .end local v20           #phoneNumber:Ljava/lang/String;
    .end local v22           #virtualDev:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
    :cond_4
    new-instance v3, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v4, "Proxy is null"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static requestBinding(Landroid/content/Context;Ljava/lang/String;)Ljava/util/UUID;
    .locals 12
    .parameter "context"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 154
    sget-boolean v1, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "MyHTC"

    const-string v2, "[CloudProxyUtil] bindService(): begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    .local v0, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    if-nez v0, :cond_1

    .line 164
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "restServicesProxy is null"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :cond_1
    const/4 v10, 0x0

    .line 166
    .local v10, handsetVerificationId:Ljava/util/UUID;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, countryCode:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, phoneNum:Ljava/lang/String;
    if-eqz v8, :cond_2

    if-nez v11, :cond_3

    .line 170
    :cond_2
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "null point exception"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_3
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->requestBinding(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 183
    return-object v10

    .line 178
    :catch_0
    move-exception v9

    .line 180
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    .line 181
    throw v9
.end method

.method public static sendSerialNumber(Landroid/content/Context;)V
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 256
    sget-boolean v1, Lcom/htc/cs/util/CloudProxyUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "MyHTC"

    const-string v2, "[CloudProxyUtil] sendSerialNumber(): begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    const/4 v10, 0x0

    .line 269
    .local v10, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v10           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .local v0, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_1
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v8

    .line 279
    .local v8, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 288
    if-nez v0, :cond_1

    .line 289
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "Proxy is null"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 281
    .end local v0           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v8           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .restart local v10       #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :catch_0
    move-exception v9

    move-object v0, v10

    .line 283
    .end local v10           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .restart local v0       #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .local v9, e:Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v9           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 290
    .restart local v8       #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_1
    const-string v1, "profiler.csserialnum"

    const-string v2, "ro.serialno"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 292
    .local v11, serialNo:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setSerialNumber(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v9

    .line 296
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CloudProxyUtil] sendSerialNumber CSException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto :goto_1

    .line 281
    .end local v8           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .end local v9           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v11           #serialNo:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_0
.end method
