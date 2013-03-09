.class public abstract Lcom/google/android/finsky/widget/TrampolineActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/TrampolineActivity;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/TrampolineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->showNetworkNecessaryDialog()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/TrampolineActivity;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/finsky/widget/TrampolineActivity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private initialize(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->enableMultiCorpus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->shouldAllowConfiguration()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt v0, v1, :cond_2

    .line 113
    :cond_0
    const/4 v0, -0x1

    const-string v1, "apps"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    .line 146
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 110
    goto :goto_0

    .line 118
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v0, "enableMultiCorpus"

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->enableMultiCorpus()Z

    move-result v3

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v0, "dfeToc"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backend_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/widget/TrampolineActivity;->isBackendEnabled(I)Z

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/widget/TrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_3
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 139
    :cond_3
    const-string v0, "name_0"

    .line 141
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/TrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v0, "dialog_title"

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getDialogTitle()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v4, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_3
.end method

.method private showNetworkNecessaryDialog()V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 83
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    const-string v2, "Dialog.NoNetworkConnection"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const v2, 0x7f07026d

    const v3, 0x7f07019f

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 89
    .local v1, sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const-string v2, "Dialog.NoNetworkConnection"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract enableMultiCorpus()Z
.end method

.method public finish(ILjava/lang/String;)V
    .locals 8
    .parameter "resultCode"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, appWidgetId:I
    if-eqz p2, :cond_0

    .line 173
    invoke-static {p0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v3

    .line 174
    .local v3, map:Lcom/google/android/finsky/widget/WidgetTypeMap;
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getWidgetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5, v0, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    .line 177
    .end local v3           #map:Lcom/google/android/finsky/widget/WidgetTypeMap;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v4, result:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, p1, v4}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    .line 182
    const/4 v5, 0x1

    new-array v1, v5, [I

    aput v0, v1, v7

    .line 183
    .local v1, appWidgetIds:[I
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "appWidgetIds"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getWidgetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/TrampolineActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    .line 189
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    const v6, 0x7f0801d0

    invoke-virtual {v5, v1, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 192
    :cond_1
    return-void
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 1
    .parameter "backend"

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f0700d1

    return v0
.end method

.method protected abstract getWidgetClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;"
        }
    .end annotation
.end method

.method protected isBackendEnabled(I)Z
    .locals 1
    .parameter "backend"

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, type:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 198
    const-string v1, "backend"

    const/4 v2, 0x3

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 50
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    if-nez v0, :cond_0

    .line 53
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 58
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Lcom/google/android/finsky/widget/TrampolineActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/widget/TrampolineActivity$1;-><init>(Lcom/google/android/finsky/widget/TrampolineActivity;)V

    new-instance v3, Lcom/google/android/finsky/widget/TrampolineActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/widget/TrampolineActivity$2;-><init>(Lcom/google/android/finsky/widget/TrampolineActivity;)V

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->getToc(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    .line 107
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    .line 97
    return-void
.end method

.method protected shouldAllowConfiguration()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method
