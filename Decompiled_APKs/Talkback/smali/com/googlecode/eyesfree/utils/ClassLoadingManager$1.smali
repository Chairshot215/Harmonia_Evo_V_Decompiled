.class Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;
.super Lcom/googlecode/eyesfree/utils/BasePackageMonitor;
.source "ClassLoadingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;->this$0:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    .line 221
    invoke-direct {p0}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;->this$0:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    #calls: Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->addInstalledPackageToCache(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->access$0(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 235
    return-void
.end method

.method protected onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;->this$0:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    #calls: Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->removeInstalledPackageFromCache(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->access$1(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;Ljava/lang/String;)V

    .line 230
    return-void
.end method
