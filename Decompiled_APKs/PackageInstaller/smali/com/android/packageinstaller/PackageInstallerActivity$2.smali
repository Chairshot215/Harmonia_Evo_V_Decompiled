.class Lcom/android/packageinstaller/PackageInstallerActivity$2;
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
    .line 118
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 121
    return-void
.end method
