.class public Lcom/android/updater/service/AcuParserService;
.super Landroid/app/Service;
.source "AcuParserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/service/AcuParserService$1;,
        Lcom/android/updater/service/AcuParserService$ParserThread;
    }
.end annotation


# static fields
.field public static final ACU_VAR_APP_NAME:Ljava/lang/String; = "appName"

.field public static final ACU_VAR_APP_SIZE:Ljava/lang/String; = "appSize"

.field public static final ACU_VAR_APSTATUS:Ljava/lang/String; = "ApStatus"

.field public static final ACU_VAR_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final ACU_VAR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ACU_VAR_DETAIL:Ljava/lang/String; = "Detail"

.field private static final ACU_VAR_ELEMENT_APK:Ljava/lang/String; = "apk"

.field public static final ACU_VAR_ICON:Ljava/lang/String; = "icon"

.field public static final ACU_VAR_LIST:Ljava/lang/String; = "apkDetailList"

.field private static final ACU_VAR_NEW:Ljava/lang/String; = "new"

.field public static final ACU_VAR_OPTIONAL_COUNT:Ljava/lang/String; = "optionalCount"

.field public static final ACU_VAR_SOURCE:Ljava/lang/String; = "source"

.field public static final ACU_VAR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ACU_VAR_UPDATE:Ljava/lang/String; = "update"

.field public static final ACU_VAR_VERSION_COE:Ljava/lang/String; = "versionCode"

.field public static final ACU_VAR_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final APK_DESC_INDEX:I = 0x4

.field public static final APK_ICON_DOWNLOAD_PATH_INDEX:I = 0x5

.field public static final APK_NAME_INDEX:I = 0x0

.field public static final APK_OPTIONAL_COUNT_INDEX:I = 0x7

.field public static final APK_SIZE_INDEX:I = 0x2

.field public static final APK_SOURCE_INDEX:I = 0x6

.field public static final APK_STATUS_INDEX:I = 0x1

.field public static final APK_VERSION_INDEX:I = 0x3

.field public static final CHECKIN_SERVICE_SEPARATOR:Ljava/lang/String; = ","

.field private static final LOG:Z = false

.field public static final SEPARATOR:Ljava/lang/String; = "@~"

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | AcuParserService"


# instance fields
.field private mApStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApkDetailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mJsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/updater/service/AcuParserService;->mApStatus:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/service/AcuParserService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/updater/service/AcuParserService;->mJsonString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/service/AcuParserService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/updater/service/AcuParserService;->getApkStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/service/AcuParserService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/service/AcuParserService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/updater/service/AcuParserService;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getApkStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apkClassName"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, returnStatus:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/updater/service/AcuParserService;->mApStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #returnStatus:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 165
    .restart local v0       #returnStatus:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/updater/service/AcuParserService;->mIntent:Landroid/content/Intent;

    .line 174
    const-string v6, "Detail"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/updater/service/AcuParserService;->mJsonString:Ljava/lang/String;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, apStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "ApStatus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, apStatus:Ljava/lang/String;
    const/4 v5, 0x0

    .line 180
    .local v5, tempString:[Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 181
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-string v7, "new"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const/4 v6, 0x1

    const v7, 0x7f060058

    invoke-virtual {p0, v7}, Lcom/android/updater/service/AcuParserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 186
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/updater/service/AcuParserService;->mApStatus:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v0           #apStatus:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #tempString:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | AcuParserService"

    const-string v7, "ERROR! onStartCommand() can not split the ApStatus data"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v4, Lcom/android/updater/service/AcuParserService$ParserThread;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/updater/service/AcuParserService$ParserThread;-><init>(Lcom/android/updater/service/AcuParserService;Lcom/android/updater/service/AcuParserService$1;)V

    .line 193
    .local v4, parserThread:Lcom/android/updater/service/AcuParserService$ParserThread;
    invoke-virtual {v4}, Lcom/android/updater/service/AcuParserService$ParserThread;->start()V

    .line 194
    const/4 v6, 0x2

    return v6

    .line 183
    .end local v4           #parserThread:Lcom/android/updater/service/AcuParserService$ParserThread;
    .restart local v0       #apStatus:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #tempString:[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v5, v6

    const-string v7, "update"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    const/4 v6, 0x1

    const v7, 0x7f060057

    invoke-virtual {p0, v7}, Lcom/android/updater/service/AcuParserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
