.class Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SkinCustomizeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinUninstallObserver"
.end annotation


# instance fields
.field private mListener:Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Ljava/lang/String;Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V
    .locals 1
    .parameter
    .parameter "packageName"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mListener:Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;

    .line 118
    iput-object p2, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mListener:Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;

    .line 120
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method public packageDeleted(Z)V
    .locals 3
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 126
    const-string v0, "SkinCustomizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been uninstalled. result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->this$0:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;

    #calls: Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->cleanPreSkinPackage()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->access$300(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)V

    .line 128
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mListener:Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;->mListener:Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;

    invoke-interface {v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;->notifyComplete()V

    .line 132
    :cond_0
    return-void
.end method
