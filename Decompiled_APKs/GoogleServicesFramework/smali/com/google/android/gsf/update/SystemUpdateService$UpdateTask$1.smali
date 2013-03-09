.class Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;
.super Ljava/lang/Thread;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->this$1:Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    iput-object p2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->val$filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    const-string v1, "SystemUpdateService"

    const-string v2, "reboot to install failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SystemUpdateService"

    const-string v2, "exception trying to install package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
