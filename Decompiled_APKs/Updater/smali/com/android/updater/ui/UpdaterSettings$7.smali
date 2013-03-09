.class Lcom/android/updater/ui/UpdaterSettings$7;
.super Ljava/lang/Object;
.source "UpdaterSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ui/UpdaterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ui/UpdaterSettings;


# direct methods
.method constructor <init>(Lcom/android/updater/ui/UpdaterSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$7;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$7;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$7;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-static {v0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$7;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/updater/ui/UpdaterSettings;->startCheckin(Z)V
    invoke-static {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->access$800(Lcom/android/updater/ui/UpdaterSettings;Z)V

    .line 194
    return-void
.end method
