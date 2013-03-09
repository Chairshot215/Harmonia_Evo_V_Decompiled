.class Lcom/android/mms/MmsApp$MmsDbCleanupTask;
.super Landroid/os/AsyncTask;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsDbCleanupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/mms/MmsApp$MmsDbCleanupTask;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1084
    iput-object p2, p0, Lcom/android/mms/MmsApp$MmsDbCleanupTask;->mContext:Landroid/content/Context;

    .line 1085
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x3

    .line 1089
    const-string v2, "Messaging"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1090
    const-string v2, "Messaging"

    const-string v3, "MmsDbCleanupTask.doInBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    const/4 v0, 0x0

    .line 1096
    .local v0, cleanupSuccess:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/MmsApp$MmsDbCleanupTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 1097
    iget-object v2, p0, Lcom/android/mms/MmsApp$MmsDbCleanupTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->clearTempParts(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    const/4 v0, 0x1

    .line 1103
    :goto_0
    const-string v2, "Messaging"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    const-string v3, "Messaging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmsDbCleanupTask.doInBackground() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v2, "success"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1099
    :catch_0
    move-exception v1

    .line 1100
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Messaging"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1104
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "failed"

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1080
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/MmsApp$MmsDbCleanupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
