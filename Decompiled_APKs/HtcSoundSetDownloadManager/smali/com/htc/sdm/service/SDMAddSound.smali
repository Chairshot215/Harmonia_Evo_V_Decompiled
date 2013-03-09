.class public Lcom/htc/sdm/service/SDMAddSound;
.super Landroid/app/IntentService;
.source "SDMAddSound.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "SDMAddSound"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 28
    const-string v1, "SoundUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, musicUri:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 36
    .end local v0           #musicUri:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v0       #musicUri:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMAddSound;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 20
    const/4 v0, 0x1

    return v0
.end method
