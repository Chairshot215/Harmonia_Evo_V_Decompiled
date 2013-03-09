.class public Lcom/htc/reportagent/policy/HandsetPolicyUpdater;
.super Ljava/lang/Object;
.source "HandsetPolicyUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mUBLManager:Lcom/htc/service/UserBehaviorLoggingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v1, "userbehavior"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lcom/htc/service/UserBehaviorLoggingManager;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/htc/service/UserBehaviorLoggingManager;

    .end local v0           #obj:Ljava/lang/Object;
    iput-object v0, p0, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->mUBLManager:Lcom/htc/service/UserBehaviorLoggingManager;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public applyPolicy2Provider(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "policy"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, result:Z
    iget-object v3, p0, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->mUBLManager:Lcom/htc/service/UserBehaviorLoggingManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v1

    .line 40
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 31
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->mUBLManager:Lcom/htc/service/UserBehaviorLoggingManager;

    invoke-virtual {v3, p1}, Lcom/htc/service/UserBehaviorLoggingManager;->setPolicy(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_1
    move v2, v1

    .line 40
    .restart local v2       #result:I
    goto :goto_0

    .line 32
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->TAG:Ljava/lang/String;

    const-string v4, "applyPolicy2Provider()"

    const-string v5, "Exception happen during setPolicy"

    invoke-static {v3, v4, v5}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 35
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->TAG:Ljava/lang/String;

    const-string v4, "applyPolicy2Provider()"

    const-string v5, "OutOfMemoryError happen during setPolicy"

    invoke-static {v3, v4, v5}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method
