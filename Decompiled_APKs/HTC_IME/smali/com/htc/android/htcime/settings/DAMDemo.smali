.class public Lcom/htc/android/htcime/settings/DAMDemo;
.super Landroid/app/Activity;
.source "DAMDemo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;
    }
.end annotation


# instance fields
.field private langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

.field private langList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private langNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected mPosition:I

.field protected mSelectedLang:Ljava/lang/String;

.field private mWordsLV:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    .line 34
    iput-object v1, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mPosition:I

    .line 36
    iput-object v1, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mSelectedLang:Ljava/lang/String;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/settings/DAMDemo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/settings/DAMDemo;->getLangIdByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/settings/DAMDemo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/settings/DAMDemo;)Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/settings/DAMDemo;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method private getLangIdByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 131
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, splitedfolder:[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v9, 0x7f03000d

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/DAMDemo;->setContentView(I)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, DAMpath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcime/util/htcDAM;->hasStorage()Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, storageState:Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, toast:Landroid/widget/Toast;
    const-string v9, "removed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-string v10, "No SD card found"

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 54
    :goto_0
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->finish()V

    .line 128
    .end local v8           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 48
    .restart local v8       #toast:Landroid/widget/Toast;
    :cond_0
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-string v10, "SD card shared with computer"

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    goto :goto_0

    .line 50
    :cond_1
    const-string v9, "unmounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-string v10, "SD card unmounted"

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    goto :goto_0

    .line 58
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-static {}, Lcom/htc/android/htcime/util/htcDAM;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, imeDir:Ljava/io/File;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_5

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-string v10, "No DAM Data"

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 62
    .restart local v8       #toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 63
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->finish()V

    goto :goto_1

    .line 66
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_7

    aget-object v2, v1, v3

    .line 67
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_6

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/android/htcime/settings/DAMDemo;->getLangIdByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, lang:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;

    const/16 v10, 0x10

    invoke-static {v5, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/htc/android/htcime/util/htcDAM;->getDAMName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v5           #lang:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 74
    .end local v2           #file:Ljava/io/File;
    :cond_7
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "Options"

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0900a8

    new-instance v11, Lcom/htc/android/htcime/settings/DAMDemo$2;

    invoke-direct {v11, p0}, Lcom/htc/android/htcime/settings/DAMDemo$2;-><init>(Lcom/htc/android/htcime/settings/DAMDemo;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0900a7

    new-instance v11, Lcom/htc/android/htcime/settings/DAMDemo$1;

    invoke-direct {v11, p0}, Lcom/htc/android/htcime/settings/DAMDemo$1;-><init>(Lcom/htc/android/htcime/settings/DAMDemo;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 113
    const v9, 0x7f0e0011

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/settings/DAMDemo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListView;

    iput-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    .line 114
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    invoke-virtual {v9, v12}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 116
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/DAMDemo;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x7

    invoke-static {v11}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    new-instance v10, Lcom/htc/android/htcime/settings/DAMDemo$3;

    invoke-direct {v10, p0}, Lcom/htc/android/htcime/settings/DAMDemo$3;-><init>(Lcom/htc/android/htcime/settings/DAMDemo;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 126
    new-instance v9, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    iget-object v10, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langNameList:Ljava/util/List;

    invoke-direct {v9, p0, v10}, Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;-><init>(Lcom/htc/android/htcime/settings/DAMDemo;Ljava/util/List;)V

    iput-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    .line 127
    iget-object v9, p0, Lcom/htc/android/htcime/settings/DAMDemo;->mWordsLV:Lcom/htc/widget/HtcListView;

    iget-object v10, p0, Lcom/htc/android/htcime/settings/DAMDemo;->langAdapter:Lcom/htc/android/htcime/settings/DAMDemo$DAMAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1
.end method
