.class public Lcom/google/android/gsf/loginservice/TokenService;
.super Landroid/app/IntentService;
.source "TokenService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "TokenService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static processIntent(Lcom/google/android/gsf/loginservice/GLSUser;Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 59
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->setCaptcha(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 72
    invoke-virtual {p0, v1, p3, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v2

    .line 73
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_4

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v3, "intent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    invoke-static {p1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v3

    .line 80
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v4, v3, :cond_1

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v4, v3, :cond_2

    .line 83
    :cond_1
    const-string v3, "exception"

    const-class v4, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 90
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_3
    :goto_1
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "req"

    .prologue
    .line 41
    const-string v4, "pendingIntent"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 42
    .local v1, pi:Landroid/app/PendingIntent;
    if-nez v1, :cond_0

    .line 44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Required pendingIntent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    .local v2, uid:I
    const-string v4, "authAccount"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, username:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 52
    .local v0, accounts:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-static {v0, p0, p1, v2}, Lcom/google/android/gsf/loginservice/TokenService;->processIntent(Lcom/google/android/gsf/loginservice/GLSUser;Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    .line 53
    return-void
.end method
