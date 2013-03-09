.class Lcom/google/android/gm/provider/MailEngine$6;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->enqueueCleanupTempFilesTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$6;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1104
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine$6;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, files:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1106
    .local v1, file:Ljava/lang/String;
    const-string v5, "gmail"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1105
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1109
    :cond_0
    const-string v5, "Gmail"

    const-string v6, "Cleaning up old temp file (do we have a leak?): %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1110
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine$6;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 1112
    .end local v1           #file:Ljava/lang/String;
    :cond_1
    return-void
.end method
