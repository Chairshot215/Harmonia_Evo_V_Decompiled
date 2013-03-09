.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiApplicationInvocator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnknownSourcesStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, status:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    const-string v1, "extra_status"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v1, "extra_successful"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public getUnknownSourcesVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getUnknownSourcesVisibility(Landroid/content/Context;)Z

    move-result v0

    .line 40
    .local v0, visible:Z
    const-string v1, "extra_visibility"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v1, "extra_successful"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 32
    return-void
.end method

.method public setUnknownSourcesStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 83
    .local v1, status:Z
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .end local v1           #status:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public setUnknownSourcesVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, result:Z
    const-string v2, "extra_visibility"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "extra_visibility"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 52
    .local v1, visible:Z
    const-string v2, "extra_visibility"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-static {p1, v1}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->setUnknownSourcesVisibility(Landroid/content/Context;Z)Z

    move-result v0

    .line 57
    .end local v1           #visible:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
