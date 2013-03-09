.class Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 149
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$300(Lcom/android/providers/downloads/ui/DownloadList;)V

    goto :goto_0
.end method
