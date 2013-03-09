.class public Lcom/sprint/ce/updater/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field force:Z

.field minVersionCode:I

.field packageName:Ljava/lang/String;

.field url:Ljava/lang/String;

.field validUntil:Ljava/util/Date;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    .line 24
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    .line 25
    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/ce/updater/Entry;->force:Z

    .line 26
    const-string v1, "version-code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/ce/updater/Entry;->versionCode:I

    .line 27
    const-string v1, "version-name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/ce/updater/Entry;->versionName:Ljava/lang/String;

    .line 28
    const-string v1, "valid-until"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, validUntilString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0}, Lcom/sprint/ce/updater/DownloadUtil;->parseInternetDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/ce/updater/Entry;->validUntil:Ljava/util/Date;

    .line 32
    :cond_0
    const-string v1, "min-version-code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/ce/updater/Entry;->minVersionCode:I

    .line 33
    return-void
.end method
