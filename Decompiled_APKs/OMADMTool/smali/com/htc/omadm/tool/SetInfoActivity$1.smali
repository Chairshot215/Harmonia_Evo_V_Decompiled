.class Lcom/htc/omadm/tool/SetInfoActivity$1;
.super Ljava/lang/Object;
.source "SetInfoActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/SetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iget-object v0, v0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    invoke-static {p2}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/omadm/aidl/IDmFutureDial;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 43
    const-string v0, "SetInfoActivity"

    const-string v1, "Client:onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    #calls: Lcom/htc/omadm/tool/SetInfoActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/htc/omadm/tool/SetInfoActivity;->access$000(Lcom/htc/omadm/tool/SetInfoActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/tool/SetInfoActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 46
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 49
    const-string v0, "SetInfoActivity"

    const-string v1, "Client:onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
