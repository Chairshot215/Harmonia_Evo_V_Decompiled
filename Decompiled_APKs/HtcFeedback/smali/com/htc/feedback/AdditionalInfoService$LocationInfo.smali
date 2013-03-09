.class final Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
.super Ljava/lang/Object;
.source "AdditionalInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/AdditionalInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocationInfo"
.end annotation


# static fields
.field public static final LISTEN_CELL_LOCATION:I = 0x1

.field public static final LISTEN_COMPLETE:I = 0x7

.field public static final LISTEN_LOCATION:I = 0x4

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2


# instance fields
.field bid:I

.field cid:I

.field public flag:I

.field lac:I

.field latitude:F

.field longitude:F

.field mcc:I

.field mnc:I

.field nid:I

.field phoneType:I

.field rscp:I

.field sid:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 41
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    .line 43
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mcc:I

    .line 44
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mnc:I

    .line 45
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->lac:I

    .line 46
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->cid:I

    .line 48
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->sid:I

    .line 49
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->nid:I

    .line 50
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->bid:I

    .line 52
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    .line 54
    iput v1, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->latitude:F

    .line 55
    iput v1, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->longitude:F

    return-void
.end method


# virtual methods
.method public ready()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    .line 59
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 61
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mcc:I

    .line 62
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mnc:I

    .line 63
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->lac:I

    .line 64
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->cid:I

    .line 66
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->sid:I

    .line 67
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->nid:I

    .line 68
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->bid:I

    .line 70
    iput v0, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    .line 72
    iput v1, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->latitude:F

    .line 73
    iput v1, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->longitude:F

    .line 74
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, radio:Lorg/json/JSONObject;
    :try_start_0
    iget v3, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1           #radio:Lorg/json/JSONObject;
    .local v2, radio:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "MCC"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mcc:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v3, "MNC"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mnc:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v3, "LAC"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->lac:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v3, "CID"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->cid:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v3, "RSCP"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 97
    .end local v2           #radio:Lorg/json/JSONObject;
    .restart local v1       #radio:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 98
    :try_start_2
    const-string v3, "latitude"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->latitude:F

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 99
    const-string v3, "longitude"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->longitude:F

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_2
    return-object v3

    .line 90
    :cond_2
    :try_start_3
    iget v3, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    .end local v1           #radio:Lorg/json/JSONObject;
    .restart local v2       #radio:Lorg/json/JSONObject;
    :try_start_4
    const-string v3, "SID"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->sid:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v3, "NID"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->nid:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v3, "BID"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->bid:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v3, "RSCP"

    iget v4, p0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .end local v2           #radio:Lorg/json/JSONObject;
    .restart local v1       #radio:Lorg/json/JSONObject;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Lorg/json/JSONException;
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 108
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 101
    .end local v1           #radio:Lorg/json/JSONObject;
    .restart local v2       #radio:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #radio:Lorg/json/JSONObject;
    .restart local v1       #radio:Lorg/json/JSONObject;
    goto :goto_3
.end method
