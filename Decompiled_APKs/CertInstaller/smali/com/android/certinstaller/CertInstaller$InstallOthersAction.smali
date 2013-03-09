.class Lcom/android/certinstaller/CertInstaller$InstallOthersAction;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Lcom/android/certinstaller/CertInstaller$MyAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallOthersAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/certinstaller/CertInstaller$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/certinstaller/CertInstaller;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 490
    const/4 v0, 0x0

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-static {p1, v0}, Lcom/android/certinstaller/CertInstaller;->access$502(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 491
    invoke-virtual {p1}, Lcom/android/certinstaller/CertInstaller;->installOthers()V

    .line 492
    return-void
.end method
