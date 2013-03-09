.class Lcom/sprint/ce/updater/DeviceUtil$1;
.super Ljava/lang/Thread;
.source "DeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/DeviceUtil;->releaseDataSession(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cm:Lcom/sprint/internal/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/sprint/internal/ConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/DeviceUtil$1;->val$cm:Lcom/sprint/internal/ConnectionManager;

    .line 143
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/DeviceUtil$1;->val$cm:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->release()V

    .line 148
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Release data session"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "unexpected error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
