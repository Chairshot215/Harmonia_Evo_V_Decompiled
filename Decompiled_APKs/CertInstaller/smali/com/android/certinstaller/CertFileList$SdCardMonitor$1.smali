.class Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;
.super Landroid/os/FileObserver;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertFileList$SdCardMonitor;-><init>(Lcom/android/certinstaller/CertFileList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

.field final synthetic val$this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    iput-object p3, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;->val$this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;->this$1:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    #calls: Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->access$000(Lcom/android/certinstaller/CertFileList$SdCardMonitor;ILjava/lang/String;)V

    .line 182
    return-void
.end method
