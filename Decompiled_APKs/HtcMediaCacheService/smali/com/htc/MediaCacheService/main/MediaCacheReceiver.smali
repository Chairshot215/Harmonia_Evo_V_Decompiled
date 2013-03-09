.class public Lcom/htc/MediaCacheService/main/MediaCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaCacheReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 52
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][scan]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "ACTION_SCANFINISH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/MediaCacheService/main/MediaCacheService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][scan]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private scan2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 67
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][scan2]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "ACTION_EJECT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/MediaCacheService/main/MediaCacheService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][scan2]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][onReceive]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-nez p2, :cond_0

    .line 29
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][onReceive]-null1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 36
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][onReceive]-null2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/htc/MediaCacheService/main/MediaCacheReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    :cond_2
    :goto_1
    const-string v1, "MediaScannerReceiver"

    const-string v2, "[MediaCacheReceiver][onReceive]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_3
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/htc/MediaCacheService/main/MediaCacheReceiver;->scan2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
