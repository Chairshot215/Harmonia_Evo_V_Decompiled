.class final Lcom/android/settings/framework/os/HtcStorageManager$2;
.super Lcom/android/settings/framework/os/HtcConditionScanner;
.source "HtcStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/os/HtcStorageManager;->unmountInternalSdCardVolume(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpStates(I)V
    .locals 2
    .parameter "round"

    .prologue
    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t InternalSdCard:status["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcStorageManager$2;->getTimeInterval()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->access$000(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method protected finish(Z)V
    .locals 0
    .parameter "successful"

    .prologue
    .line 1081
    return-void
.end method

.method protected until()Z
    .locals 2

    .prologue
    .line 1062
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, state:Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    const/4 v1, 0x1

    .line 1068
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
