.class final Lcom/android/phone/util/CbsUtils$1;
.super Ljava/lang/Object;
.source "CbsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/util/CbsUtils;->checkCbsCustomizeInited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->isMmsCustomizeInitiated()Z

    move-result v0

    .line 147
    .local v0, inited:Z
    const-string v1, "CbsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCbsCustomizeInited> initd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;

    invoke-direct {v1, v4, v4, v4}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    :cond_0
    return-void
.end method
