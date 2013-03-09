.class Lcom/htc/omadm/tool/SUCHeroSetting$8;
.super Ljava/lang/Object;
.source "SUCHeroSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/SUCHeroSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SUCHeroSetting;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/omadm/tool/SUCHeroSetting$8;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting$8;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    invoke-static {p2}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/omadm/aidl/IDmFutureDial;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 256
    const-string v0, "SUCHeroSetting"

    const-string v1, "Client:onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/omadm/tool/SUCHeroSetting$8;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 260
    const-string v0, "SUCHeroSetting"

    const-string v1, "Client:onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method
