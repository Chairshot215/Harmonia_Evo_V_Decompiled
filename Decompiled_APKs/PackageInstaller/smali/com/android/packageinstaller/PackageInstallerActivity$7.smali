.class Lcom/android/packageinstaller/PackageInstallerActivity$7;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$7;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$7;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$7;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 174
    return-void
.end method
