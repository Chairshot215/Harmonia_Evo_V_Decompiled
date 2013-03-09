.class Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "MigrateToAccountManagerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->this$0:Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;

    iput-object p3, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$componentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$componentName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 178
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 179
    return-void
.end method
