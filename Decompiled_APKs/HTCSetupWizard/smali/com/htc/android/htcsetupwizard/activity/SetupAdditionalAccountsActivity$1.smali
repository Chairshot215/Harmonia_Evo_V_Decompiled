.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 168
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-static {p2}, Lcom/htc/android/pim/hux/IHuxManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/pim/hux/IHuxManager;

    move-result-object v1

    #setter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Lcom/htc/android/pim/hux/IHuxManager;)Lcom/htc/android/pim/hux/IHuxManager;

    .line 171
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 175
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Lcom/htc/android/pim/hux/IHuxManager;)Lcom/htc/android/pim/hux/IHuxManager;

    .line 177
    return-void
.end method
