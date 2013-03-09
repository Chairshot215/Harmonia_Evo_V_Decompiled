.class public Lcom/android/providers/htcCheckin/apkInfo;
.super Ljava/lang/Object;
.source "apkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/apkInfo$FLOG;
    }
.end annotation


# instance fields
.field private final LOCAL_LOGV:Z

.field private final TAG:Ljava/lang/String;

.field protected apkId:Ljava/lang/String;

.field protected appSize:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field protected nAppSize:J

.field protected nOptionalCount:I

.field protected nVersionCode:I

.field protected source:Ljava/lang/String;

.field protected strOptionalCount:Ljava/lang/String;

.field protected timestamp:Ljava/lang/String;

.field protected versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "objJSon"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v3, p0, Lcom/android/providers/htcCheckin/apkInfo;->LOCAL_LOGV:Z

    .line 12
    const-string v1, "FOTA.AppUpdate"

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->TAG:Ljava/lang/String;

    .line 31
    if-nez p1, :cond_0

    .line 32
    iput-object v2, p0, Lcom/android/providers/htcCheckin/apkInfo;->apkId:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    .line 35
    iput v3, p0, Lcom/android/providers/htcCheckin/apkInfo;->nVersionCode:I

    .line 36
    iput-object v2, p0, Lcom/android/providers/htcCheckin/apkInfo;->source:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/providers/htcCheckin/apkInfo;->timestamp:Ljava/lang/String;

    .line 38
    iput v3, p0, Lcom/android/providers/htcCheckin/apkInfo;->nOptionalCount:I

    .line 87
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    const-string v1, "apkId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "apkId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->apkId:Ljava/lang/String;

    .line 48
    :goto_1
    const-string v1, "className"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const-string v1, "className"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    .line 53
    :goto_2
    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    .line 58
    :goto_3
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->source:Ljava/lang/String;

    .line 63
    :goto_4
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->timestamp:Ljava/lang/String;

    .line 68
    :goto_5
    const-string v1, "appSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const-string v1, "appSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->appSize:Ljava/lang/String;

    .line 73
    :goto_6
    const-string v1, "optionalCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const-string v1, "optionalCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->strOptionalCount:Ljava/lang/String;

    .line 79
    :goto_7
    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/htcCheckin/apkInfo;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->nVersionCode:I

    .line 80
    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->appSize:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/htcCheckin/apkInfo;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->nAppSize:J

    .line 81
    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->strOptionalCount:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/htcCheckin/apkInfo;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->nOptionalCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FOTA.AppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err in apkInfo():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 46
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->apkId:Ljava/lang/String;

    goto/16 :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    goto/16 :goto_2

    .line 56
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    goto/16 :goto_3

    .line 61
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->source:Ljava/lang/String;

    goto :goto_4

    .line 66
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->timestamp:Ljava/lang/String;

    goto :goto_5

    .line 71
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->appSize:Ljava/lang/String;

    goto :goto_6

    .line 76
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->strOptionalCount:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method private getInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "strNum"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "appSize"

    .prologue
    .line 100
    const-wide/16 v1, 0x0

    .line 102
    .local v1, num:J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 107
    :goto_0
    return-wide v1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apkId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->apkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->nVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->appSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nOptionalCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/htcCheckin/apkInfo;->nOptionalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
