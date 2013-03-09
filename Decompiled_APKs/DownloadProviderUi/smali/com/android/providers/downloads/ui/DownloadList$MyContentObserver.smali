.class Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->handleDownloadsChanged()V

    .line 137
    return-void
.end method
