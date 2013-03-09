.class public Lcom/google/android/finsky/widget/WidgetConfigurationActivity;
.super Landroid/app/Activity;
.source "WidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;,
        Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 174
    return-void
.end method

.method private getCorpusName(I)Ljava/lang/String;
    .locals 3
    .parameter "backend"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v10, 0x7f040114

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setContentView(I)V

    .line 49
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "dialog_title"

    const v12, 0x7f0700d1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setTitle(I)V

    .line 53
    const v10, 0x7f08022c

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 55
    .local v2, container:Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "dfeToc"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/api/model/DfeToc;

    .line 56
    .local v9, toc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v4

    .line 58
    .local v4, corpusList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 60
    .local v5, enabledCorpora:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "enableMultiCorpus"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 61
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;-><init>()V

    .line 62
    .local v1, all:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 63
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 64
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1           #all:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 68
    .local v3, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backend_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 70
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 72
    invoke-virtual {v3, v8}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 74
    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v3           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 80
    new-instance v0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

    invoke-direct {v0, p0, v5}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 81
    .local v0, adapter:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    return-void
.end method
