.class Lcom/android/updater/ui/UpdaterSettings$5;
.super Ljava/lang/Object;
.source "UpdaterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterSettings;
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
    .line 151
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$400(Lcom/android/updater/ui/UpdaterSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$200(Lcom/android/updater/ui/UpdaterSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z
    invoke-static {v0, v2}, Lcom/android/updater/ui/UpdaterSettings;->access$402(Lcom/android/updater/ui/UpdaterSettings;Z)Z

    .line 157
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->removeDialog(I)V

    .line 158
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$5;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mIsPeriodicCheckinChecked:Z
    invoke-static {v0, v2}, Lcom/android/updater/ui/UpdaterSettings;->access$502(Lcom/android/updater/ui/UpdaterSettings;Z)Z

    .line 159
    return-void
.end method
