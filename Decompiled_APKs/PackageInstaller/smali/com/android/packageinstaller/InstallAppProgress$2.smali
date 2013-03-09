.class Lcom/android/packageinstaller/InstallAppProgress$2;
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
    .line 183
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$2;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    const-string v0, "InstallAppProgress"

    const-string v1, "Canceling installation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress$2;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    .line 187
    return-void
.end method
