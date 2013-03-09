.class Lcom/android/certinstaller/CertInstallerMain$1;
.super Ljava/lang/Object;
.source "CertInstallerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstallerMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstallerMain;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstallerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/certinstaller/CertInstallerMain$1;->this$0:Lcom/android/certinstaller/CertInstallerMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/certinstaller/CertInstallerMain$1;->this$0:Lcom/android/certinstaller/CertInstallerMain;

    iget-object v1, p0, Lcom/android/certinstaller/CertInstallerMain$1;->this$0:Lcom/android/certinstaller/CertInstallerMain;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstallerMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
