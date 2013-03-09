.class Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PhoneSkinPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkinUninstallObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 410
    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mContext:Landroid/content/Context;

    .line 411
    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mHandler:Landroid/os/Handler;

    .line 416
    iput-object p1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mContext:Landroid/content/Context;

    .line 417
    iput-object p2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    .line 418
    iput-object p3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mHandler:Landroid/os/Handler;

    .line 419
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    const-string v1, "SkinPicker.SkinPickerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been uninstalled. result packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatusByPackageName(Ljava/lang/String;I)V

    .line 425
    sget-object v1, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 426
    sget-object v1, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
