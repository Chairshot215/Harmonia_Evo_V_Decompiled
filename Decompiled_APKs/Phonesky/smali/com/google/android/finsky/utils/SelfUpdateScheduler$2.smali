.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler;->onComplete(Lcom/google/android/finsky/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field final synthetic val$download:Lcom/google/android/finsky/download/Download;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iput-object p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 158
    new-instance v6, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2$1;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;)V

    .line 169
    .local v6, listener:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-interface {v0}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-string v9, ""

    move-object v4, v1

    move v7, v5

    move v8, v5

    move-object v10, v1

    invoke-static/range {v0 .. v10}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V

    .line 171
    return-void
.end method
