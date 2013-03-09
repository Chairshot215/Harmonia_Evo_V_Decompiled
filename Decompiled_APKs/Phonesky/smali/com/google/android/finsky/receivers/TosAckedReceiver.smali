.class public Lcom/google/android/finsky/receivers/TosAckedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TosAckedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method private ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    .locals 5
    .parameter "account"
    .parameter "optIn"
    .parameter "toc"

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 78
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    if-nez v0, :cond_0

    .line 79
    const-string v1, "Could not get DFE API, returning."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;

    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    new-instance v4, Lcom/google/android/finsky/receivers/TosAckedReceiver$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/receivers/TosAckedReceiver$4;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private fetchToc(Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "optIn"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 57
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    if-nez v0, :cond_0

    .line 58
    const-string v1, "Could not get DFE API, returning."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v1, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Z)V

    new-instance v2, Lcom/google/android/finsky/receivers/TosAckedReceiver$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/receivers/TosAckedReceiver$2;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 36
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 38
    :cond_0
    const-string v3, "Invalid Broadcast: requires extras."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    .local v1, args:Landroid/os/Bundle;
    const-string v3, "TosAckedReceiver.account"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, account:Ljava/lang/String;
    const-string v3, "TosAckedReceiver.optIn"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 46
    .local v2, optIn:Z
    if-nez v0, :cond_2

    .line 48
    const-string v3, "Invalid Broadcast: no account."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->fetchToc(Ljava/lang/String;Z)V

    goto :goto_0
.end method
