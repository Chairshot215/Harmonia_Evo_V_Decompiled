.class Lcom/android/mms/CloseMmsAppActivity$1;
.super Ljava/lang/Object;
.source "CloseMmsAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/CloseMmsAppActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/CloseMmsAppActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/CloseMmsAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mms/CloseMmsAppActivity$1;->this$0:Lcom/android/mms/CloseMmsAppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v3, p0, Lcom/android/mms/CloseMmsAppActivity$1;->this$0:Lcom/android/mms/CloseMmsAppActivity;

    invoke-virtual {v3}, Lcom/android/mms/CloseMmsAppActivity;->finish()V

    .line 40
    iget-object v3, p0, Lcom/android/mms/CloseMmsAppActivity$1;->this$0:Lcom/android/mms/CloseMmsAppActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/android/mms/CloseMmsAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 41
    .local v2, myActivityManager:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 45
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    .line 52
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
