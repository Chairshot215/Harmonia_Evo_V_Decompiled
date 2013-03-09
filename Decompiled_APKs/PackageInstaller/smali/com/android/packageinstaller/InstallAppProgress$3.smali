.class Lcom/android/packageinstaller/InstallAppProgress$3;
.super Ljava/lang/Object;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/InstallAppProgress;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    .line 181
    return-void
.end method
