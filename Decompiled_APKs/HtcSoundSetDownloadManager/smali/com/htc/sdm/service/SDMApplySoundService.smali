.class public Lcom/htc/sdm/service/SDMApplySoundService;
.super Landroid/app/IntentService;
.source "SDMApplySoundService.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMApplySoundService] "


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "SDMApplySoundService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    const-string v5, "GUID"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, GUID:Ljava/lang/String;
    const-string v5, "srcType"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 52
    .local v4, srcType:I
    const-string v5, "refType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, refType:Ljava/lang/String;
    const-string v5, "soundUri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 54
    .local v3, soundUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMApplySoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v4, v2, v3}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #GUID:Ljava/lang/String;
    .end local v2           #refType:Ljava/lang/String;
    .end local v3           #soundUri:Landroid/net/Uri;
    .end local v4           #srcType:I
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 22
    const/4 v0, 0x1

    return v0
.end method
