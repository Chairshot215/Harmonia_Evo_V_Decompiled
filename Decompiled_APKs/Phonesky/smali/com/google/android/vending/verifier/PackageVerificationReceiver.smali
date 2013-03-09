.class public Lcom/google/android/vending/verifier/PackageVerificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageVerificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkPrerequisites(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v2, v5, :cond_0

    .line 73
    const-string v2, "Skipping verification because SDK=%d"

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 94
    :goto_0
    return v2

    .line 77
    :cond_0
    sget-object v2, Lcom/google/android/finsky/config/G;->platformAntiMalwareEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const-string v2, "Skipping verification because disabled"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->hasNetwork()Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    const-string v2, "Skipping verification because network inactive"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    const-string v2, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, installingUid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 89
    .local v0, finskyUid:I
    if-ne v1, v0, :cond_3

    .line 90
    const-string v2, "Skipping verification because own installation"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 91
    goto :goto_0

    :cond_3
    move v2, v4

    .line 94
    goto :goto_0
.end method

.method private reportVerificationOk(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 41
    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, id:I
    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationReceiver;->checkPrerequisites(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    const-string v3, "Verification requested, id = %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #id:I
    :cond_1
    :goto_0
    return-void

    .line 48
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v2       #id:I
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/google/android/vending/verifier/PackageVerificationReceiver;->reportVerificationOk(Landroid/content/Context;I)V

    goto :goto_0

    .line 52
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #id:I
    :cond_3
    const-string v3, "Unexpected action %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
