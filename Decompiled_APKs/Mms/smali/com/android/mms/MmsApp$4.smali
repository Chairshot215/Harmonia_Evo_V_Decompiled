.class Lcom/android/mms/MmsApp$4;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/mms/MmsApp$4;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    const-wide/16 v1, 0x5dc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1458
    :goto_0
    :try_start_1
    const-string v1, "Messaging"

    const-string v2, "ViewCache CreatePreload"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1460
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/ViewCache;->CreatePreload()V

    .line 1461
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->preloadFakeCursor()V

    .line 1462
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1466
    :goto_1
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1455
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
