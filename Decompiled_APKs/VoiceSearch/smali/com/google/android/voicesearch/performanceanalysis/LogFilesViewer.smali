.class public Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;
.super Landroid/app/ListActivity;
.source "LogFilesViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;,
        Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private getFilesList()[Ljava/io/File;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.google.android.voicesearch/files/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$2;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;

    invoke-direct {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getFilesList()[Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;[Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a06fc

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 58
    .local v0, lv:Landroid/widget/ListView;
    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method
