.class Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;
.super Ljava/lang/Thread;
.source "UpdaterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdaterFinishThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/UpdaterSettings;


# direct methods
.method private constructor <init>(Lcom/android/updater/ui/UpdaterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/ui/UpdaterSettings;Lcom/android/updater/ui/UpdaterSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;-><init>(Lcom/android/updater/ui/UpdaterSettings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;->sleep(J)V

    .line 101
    iget-object v1, p0, Lcom/android/updater/ui/UpdaterSettings$UpdaterFinishThread;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-virtual {v1}, Lcom/android/updater/ui/UpdaterSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | UpdaterSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdaterFinishThread run() error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
