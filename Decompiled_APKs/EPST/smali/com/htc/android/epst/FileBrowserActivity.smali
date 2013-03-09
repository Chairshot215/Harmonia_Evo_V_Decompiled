.class public Lcom/htc/android/epst/FileBrowserActivity;
.super Landroid/app/Activity;
.source "FileBrowserActivity.java"


# static fields
.field private static final ALL_EXT:Ljava/lang/String; = ""

.field private static final ALL_FOLDERS_PATH:Ljava/lang/String; = "/*/"

.field private static final ERI_EXT:Ljava/lang/String; = ".bin"

.field private static final EVENT_GET_FILE_LIST:I = 0x1

.field private static final EVENT_SETUP_LISTVIEW:I = 0x2

.field private static final EVENT_SHOW_DIALOG:I = 0x0

.field public static final GET_FILE:I = 0x0

.field public static final KEY_EXT:Ljava/lang/String; = "KEY_EXT"

.field public static final KEY_PATH:Ljava/lang/String; = "KEY_PATH"

.field public static final KEY_SELECTED_FILE:Ljava/lang/String; = "KEY_SELECTED_FILE"

.field private static final PHONE_DATA_PATH:Ljava/lang/String; = "/data/data/com.android.phone/"

.field private static final PRL_EXT:Ljava/lang/String; = ".prl"

.field private static final SDCARD_PATH:Ljava/lang/String; = "/sdcard/"

.field private static final VIEW_MAP_KEY:Ljava/lang/String; = "ITEM"

.field private static extArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/FileExt;",
            ">;"
        }
    .end annotation
.end field

.field private static fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static fileListView:Landroid/widget/ListView;

.field private static fileNameEdit:Landroid/widget/EditText;

.field private static gFile_Browser_Type:I

.field private static pathArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/FilePath;",
            ">;"
        }
    .end annotation
.end field

.field private static selectedFileExt:Lcom/htc/android/epst/FileExt;

.field private static selectedFileName:Ljava/lang/String;

.field private static selectedFilePath:Lcom/htc/android/epst/FilePath;


# instance fields
.field private DBG:Z

.field private ERI_TYPE:I

.field private EXT_FILE:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private Mylooper:Landroid/os/Looper;

.field private PRL_TYPE:I

.field private final PROGREE_DIALOG_ID:I

.field private mHandler:Landroid/os/Handler;

.field private mSearchDialog:Landroid/app/ProgressDialog;

.field mThread:Landroid/os/HandlerThread;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/epst/FileBrowserActivity;->gFile_Browser_Type:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "FileBrowserActivity"

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->PRL_TYPE:I

    .line 85
    iput v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->ERI_TYPE:I

    .line 87
    const-string v0, ".prl"

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->EXT_FILE:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->PROGREE_DIALOG_ID:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mThread:Landroid/os/HandlerThread;

    .line 94
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->DBG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/FileBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getFileList()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/android/epst/FileExt;)Lcom/htc/android/epst/FileExt;
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-object p0, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileExt:Lcom/htc/android/epst/FileExt;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->setupFileListView()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/epst/FileBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-object p0, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->fileNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/android/epst/FilePath;)Lcom/htc/android/epst/FilePath;
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-object p0, Lcom/htc/android/epst/FileBrowserActivity;->selectedFilePath:Lcom/htc/android/epst/FilePath;

    return-object p0
.end method

.method private createmHandler(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/htc/android/epst/FileBrowserActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/epst/FileBrowserActivity$1;-><init>(Lcom/htc/android/epst/FileBrowserActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mHandler:Landroid/os/Handler;

    .line 136
    :cond_0
    return-void
.end method

.method private createmainHandler()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/htc/android/epst/FileBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/FileBrowserActivity$2;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;

    .line 164
    :cond_0
    return-void
.end method

.method private findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "path"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, files:Ljava/io/File;
    new-instance v1, Lcom/htc/android/epst/ExtFilter;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Lcom/htc/android/epst/ExtFilter;-><init>(Ljava/lang/String;Z)V

    .line 394
    .local v1, filter:Lcom/htc/android/epst/ExtFilter;
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/epst/FileBrowserActivity;->scanFolder(Ljava/io/File;Lcom/htc/android/epst/ExtFilter;Ljava/util/List;)V

    .line 395
    return-object v2
.end method

.method private getFileList()V
    .locals 4

    .prologue
    .line 375
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 378
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    .line 379
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->selectedFilePath:Lcom/htc/android/epst/FilePath;

    invoke-virtual {v1}, Lcom/htc/android/epst/FilePath;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/*/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 381
    sget-object v2, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/FilePath;

    invoke-virtual {v1}, Lcom/htc/android/epst/FilePath;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileExt:Lcom/htc/android/epst/FileExt;

    invoke-virtual {v3}, Lcom/htc/android/epst/FileExt;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/htc/android/epst/FileBrowserActivity;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    sget-object v2, Lcom/htc/android/epst/FileBrowserActivity;->selectedFilePath:Lcom/htc/android/epst/FilePath;

    invoke-virtual {v2}, Lcom/htc/android/epst/FilePath;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileExt:Lcom/htc/android/epst/FileExt;

    invoke-virtual {v3}, Lcom/htc/android/epst/FileExt;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/htc/android/epst/FileBrowserActivity;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    :cond_2
    return-void
.end method

.method private getPathList()V
    .locals 5

    .prologue
    .line 99
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    :cond_0
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    new-instance v2, Lcom/htc/android/epst/FilePath;

    const v3, 0x7f040085

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/*/"

    invoke-direct {v2, v3, v4}, Lcom/htc/android/epst/FilePath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    new-instance v2, Lcom/htc/android/epst/FilePath;

    const v3, 0x7f040087

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/com.android.phone/"

    invoke-direct {v2, v3, v4}, Lcom/htc/android/epst/FilePath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, sdfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 109
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    new-instance v2, Lcom/htc/android/epst/FilePath;

    const v3, 0x7f040086

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sdcard/"

    invoke-direct {v2, v3, v4}, Lcom/htc/android/epst/FilePath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    return-void
.end method

.method private getViewMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    const-string v3, "ITEM"

    sget-object v4, Lcom/htc/android/epst/FileBrowserActivity;->fileList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    :cond_0
    return-object v2
.end method

.method private populateFields()V
    .locals 4

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->setupFilePathSpinner()V

    .line 245
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->setupFileExtSpinner()V

    .line 251
    const v2, 0x7f060011

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/htc/android/epst/FileBrowserActivity;->fileNameEdit:Landroid/widget/EditText;

    .line 253
    sget-object v2, Lcom/htc/android/epst/FileBrowserActivity;->fileNameEdit:Landroid/widget/EditText;

    sget-object v3, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 257
    .local v1, okBtn:Landroid/widget/Button;
    new-instance v2, Lcom/htc/android/epst/FileBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/android/epst/FileBrowserActivity$3;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, cancelBtn:Landroid/widget/Button;
    new-instance v2, Lcom/htc/android/epst/FileBrowserActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/android/epst/FileBrowserActivity$4;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method private scanFolder(Ljava/io/File;Lcom/htc/android/epst/ExtFilter;Ljava/util/List;)V
    .locals 5
    .parameter "directory"
    .parameter "iFilter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/htc/android/epst/ExtFilter;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, iRet:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 405
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 437
    :cond_0
    return-void

    .line 413
    :cond_1
    if-eqz p2, :cond_3

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 418
    .local v1, subFiles:[Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 423
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    .line 424
    aget-object v2, v1, v0

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    .end local v0           #i:I
    .end local v1           #subFiles:[Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .restart local v1       #subFiles:[Ljava/io/File;
    goto :goto_0

    .line 429
    .restart local v0       #i:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_0

    .line 432
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 433
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_5

    .line 434
    aget-object v2, v1, v0

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/android/epst/FileBrowserActivity;->scanFolder(Ljava/io/File;Lcom/htc/android/epst/ExtFilter;Ljava/util/List;)V

    .line 432
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setupFileExtSpinner()V
    .locals 6

    .prologue
    .line 347
    const v5, 0x7f060010

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 348
    .local v2, fileExt:Landroid/widget/Spinner;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v1, exts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/FileExt;

    .line 350
    .local v0, ext:Lcom/htc/android/epst/FileExt;
    invoke-virtual {v0}, Lcom/htc/android/epst/FileExt;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v0           #ext:Lcom/htc/android/epst/FileExt;
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 354
    .local v3, fileExtAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 355
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 357
    new-instance v5, Lcom/htc/android/epst/FileBrowserActivity$7;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/FileBrowserActivity$7;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 371
    return-void
.end method

.method private setupFileListView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 290
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getViewMap()Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f020008

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "ITEM"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    const v1, 0x7f060015

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 296
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/android/epst/CheckedItemViewBinder;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/CheckedItemViewBinder;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 298
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileListView:Landroid/widget/ListView;

    .line 299
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 300
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 301
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->fileListView:Landroid/widget/ListView;

    new-instance v3, Lcom/htc/android/epst/FileBrowserActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/android/epst/FileBrowserActivity$5;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    return-void
.end method

.method private setupFilePathSpinner()V
    .locals 6

    .prologue
    .line 315
    const v5, 0x7f06000f

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/FileBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 316
    .local v0, filePath:Landroid/widget/Spinner;
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getPathList()V

    .line 317
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v4, pathes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/htc/android/epst/FileBrowserActivity;->pathArrayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/FilePath;

    .line 319
    .local v3, path:Lcom/htc/android/epst/FilePath;
    invoke-virtual {v3}, Lcom/htc/android/epst/FilePath;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v3           #path:Lcom/htc/android/epst/FilePath;
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v1, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 325
    .local v1, filePathAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    new-instance v5, Lcom/htc/android/epst/FileBrowserActivity$6;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/FileBrowserActivity$6;-><init>(Lcom/htc/android/epst/FileBrowserActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 344
    return-void
.end method


# virtual methods
.method public getSelectedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BROWSER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, value:Ljava/lang/String;
    const v1, 0x7f0401d5

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 173
    iget v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->ERI_TYPE:I

    sput v1, Lcom/htc/android/epst/FileBrowserActivity;->gFile_Browser_Type:I

    .line 174
    const-string v1, ".bin"

    iput-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->EXT_FILE:Ljava/lang/String;

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EXT_FILE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/FileBrowserActivity;->EXT_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gFile_Browser_Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/android/epst/FileBrowserActivity;->gFile_Browser_Type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getPathList()V

    .line 184
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 185
    sget-object v2, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    new-instance v3, Lcom/htc/android/epst/FileExt;

    sget v1, Lcom/htc/android/epst/FileBrowserActivity;->gFile_Browser_Type:I

    iget v4, p0, Lcom/htc/android/epst/FileBrowserActivity;->PRL_TYPE:I

    if-ne v1, v4, :cond_3

    const v1, 0x7f040089

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/htc/android/epst/FileBrowserActivity;->EXT_FILE:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/htc/android/epst/FileExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->extArrayList:Ljava/util/List;

    new-instance v2, Lcom/htc/android/epst/FileExt;

    const v3, 0x7f040088

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/htc/android/epst/FileExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v1, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/htc/android/epst/FileBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_SELECTED_FILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/FileBrowserActivity;->selectedFileName:Ljava/lang/String;

    .line 197
    :cond_0
    const v1, 0x7f020007

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->setContentView(I)V

    .line 199
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->populateFields()V

    .line 201
    invoke-direct {p0}, Lcom/htc/android/epst/FileBrowserActivity;->createmainHandler()V

    .line 202
    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 203
    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->Mylooper:Landroid/os/Looper;

    .line 204
    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->Mylooper:Landroid/os/Looper;

    invoke-direct {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->createmHandler(Landroid/os/Looper;)V

    .line 206
    return-void

    .line 175
    :cond_1
    const v1, 0x7f0401d6

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 176
    iget v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->PRL_TYPE:I

    sput v1, Lcom/htc/android/epst/FileBrowserActivity;->gFile_Browser_Type:I

    .line 177
    const-string v1, ".prl"

    iput-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->EXT_FILE:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No support type!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_3
    const v1, 0x7f04008a

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    .line 225
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f04008b

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 227
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity;->mSearchDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    return-void
.end method

.method public removePDialog()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/FileBrowserActivity;->removeDialog(I)V

    .line 239
    return-void
.end method
