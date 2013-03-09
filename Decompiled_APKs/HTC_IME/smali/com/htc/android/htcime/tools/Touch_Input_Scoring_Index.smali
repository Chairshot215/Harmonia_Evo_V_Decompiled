.class public Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;
.super Landroid/app/Activity;
.source "Touch_Input_Scoring_Index.java"


# static fields
.field static final mFile_Prefix:Ljava/lang/String; = "Scoring_"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

.field mCheckBoxMode:Landroid/widget/CheckBox;

.field mListView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "Touch_Input_Scroing_Index"

    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->TAG:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mCheckBoxMode:Landroid/widget/CheckBox;

    .line 36
    iput-object v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    .line 37
    iput-object v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    return-void
.end method

.method private getScoringData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v6, 0x0

    .line 91
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/htcime/util/ScoringUtil;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, dataDir:Ljava/io/File;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MMdd\'.txt\'"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, formatter:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Scoring_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 97
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    const/4 v8, 0x0

    .line 101
    .local v8, str:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 102
    new-instance v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;

    invoke-direct {v1}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;-><init>()V

    .line 103
    .local v1, data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    invoke-static {v8}, Lcom/htc/android/htcime/util/ScoringUtil;->convertRawDataToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    .line 104
    invoke-static {v8}, Lcom/htc/android/htcime/util/ScoringUtil;->getItemKey(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->item_key:I

    .line 106
    iget-object v9, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 107
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    .end local v1           #data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 114
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #dataDir:Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #formatter:Ljava/text/SimpleDateFormat;
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .end local v8           #str:Ljava/lang/String;
    .local v3, e:Ljava/lang/Exception;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :goto_1
    const-string v9, "Touch_Input_Scroing_Index"

    const-string v10, "Read Scoring log file failed, skip it."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 109
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #dataDir:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v8       #str:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 110
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    goto :goto_2

    .line 111
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "There is no Today\'s data."

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 113
    .end local v2           #dataDir:Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #formatter:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f03004d

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "scoring_idx_mode"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, curMode:I
    const v3, 0x7f0e0051

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mCheckBoxMode:Landroid/widget/CheckBox;

    .line 49
    iget-object v6, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mCheckBoxMode:Landroid/widget/CheckBox;

    if-ne v1, v4, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mCheckBoxMode:Landroid/widget/CheckBox;

    new-instance v4, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;

    invoke-direct {v4, p0, v0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;-><init>(Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    const v3, 0x7f0e0052

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    .line 58
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->getScoringData()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    if-eqz v2, :cond_0

    .line 61
    new-instance v3, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    invoke-direct {v3, p0, v2}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    .line 62
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$2;

    invoke-direct {v4, p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$2;-><init>(Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 85
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 49
    goto :goto_0
.end method
