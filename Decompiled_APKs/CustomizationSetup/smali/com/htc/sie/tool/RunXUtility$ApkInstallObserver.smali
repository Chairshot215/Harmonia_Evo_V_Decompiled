.class public Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "RunXUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sie/tool/RunXUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApkInstallObserver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/sie/tool/RunXUtility;


# direct methods
.method public constructor <init>(Lcom/htc/sie/tool/RunXUtility;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;->this$0:Lcom/htc/sie/tool/RunXUtility;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;->context:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;->context:Landroid/content/Context;

    .line 157
    iput-object p3, p0, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;->packageName:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 161
    if-ne p2, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;->this$0:Lcom/htc/sie/tool/RunXUtility;

    #setter for: Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z
    invoke-static {v0, v1}, Lcom/htc/sie/tool/RunXUtility;->access$002(Lcom/htc/sie/tool/RunXUtility;Z)Z

    .line 164
    :cond_0
    sget-object v0, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    const-string v1, "packageInstalled is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/htc/sie/tool/RunXUtility;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 166
    return-void
.end method
