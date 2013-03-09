.class Lcom/android/packageinstaller/PackageInstallerActivity$10;
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
    .line 206
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(I)V

    .line 209
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$10;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 210
    return-void
.end method
