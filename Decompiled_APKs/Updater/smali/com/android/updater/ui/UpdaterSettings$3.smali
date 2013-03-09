.class Lcom/android/updater/ui/UpdaterSettings$3;
.super Ljava/lang/Object;
.source "UpdaterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterSettings$3;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$3;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$200(Lcom/android/updater/ui/UpdaterSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$3;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #calls: Lcom/android/updater/ui/UpdaterSettings;->setFotaOption(Z)V
    invoke-static {v0, v1}, Lcom/android/updater/ui/UpdaterSettings;->access$300(Lcom/android/updater/ui/UpdaterSettings;Z)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$3;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #setter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinConfirmed:Z
    invoke-static {v0, v2}, Lcom/android/updater/ui/UpdaterSettings;->access$402(Lcom/android/updater/ui/UpdaterSettings;Z)Z

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterSettings$3;->this$0:Lcom/android/updater/ui/UpdaterSettings;

    #getter for: Lcom/android/updater/ui/UpdaterSettings;->mPeriodicCheckinPerference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/updater/ui/UpdaterSettings;->access$200(Lcom/android/updater/ui/UpdaterSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
