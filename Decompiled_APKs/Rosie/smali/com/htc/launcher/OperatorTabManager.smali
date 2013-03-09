.class public Lcom/htc/launcher/OperatorTabManager;
.super Ljava/lang/Object;
.source "OperatorTabManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/OperatorTabManager$1;,
        Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
    }
.end annotation


# static fields
.field public static final ID_OPERATOR_TAB:Ljava/lang/String; = "OPERATOR_TAB"

.field public static final ID_PRELOADED_FREQUENT_TAB:Ljava/lang/String; = "FREQUENT_TAB"

.field protected static final TAG:Ljava/lang/String; = "OperatorTabManager"

.field private static instance:Lcom/htc/launcher/OperatorTabManager;

.field private static final localLOGV:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private final operatorTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/launcher/OperatorTab;",
            ">;"
        }
    .end annotation
.end field

.field private final res:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

.field private final sortedOperatorTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/OperatorTab;",
            ">;"
        }
    .end annotation
.end field

.field private tabNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/OperatorTabManager;->instance:Lcom/htc/launcher/OperatorTabManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;-><init>(Lcom/htc/launcher/OperatorTabManager;Lcom/htc/launcher/OperatorTabManager$1;)V

    iput-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->res:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/OperatorTabManager;->tabNum:I

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/htc/launcher/OperatorTabManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/OperatorTabManager;)Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->res:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    return-object v0
.end method

.method private addOperatorTab(Lcom/htc/launcher/OperatorTab;)V
    .locals 3
    .parameter "opTab"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getMinorNb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v2

    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/OperatorTab;

    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    return-void

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/htc/launcher/OperatorTabManager;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/htc/launcher/OperatorTabManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/launcher/OperatorTabManager;->instance:Lcom/htc/launcher/OperatorTabManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/htc/launcher/OperatorTabManager;

    invoke-direct {v0}, Lcom/htc/launcher/OperatorTabManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/OperatorTabManager;->instance:Lcom/htc/launcher/OperatorTabManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/htc/launcher/OperatorTabManager;->instance:Lcom/htc/launcher/OperatorTabManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadCustomizationForm()V
    .locals 8

    .prologue
    .line 145
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 146
    .local v1, form:Landroid/os/Bundle;
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    .line 171
    :cond_0
    return-void

    .line 145
    .end local v1           #form:Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 150
    .restart local v1       #form:Landroid/os/Bundle;
    :cond_2
    const-string v0, "operator_tab_"

    .line 151
    .local v0, OPERATOR_TAB:Ljava/lang/String;
    const/4 v4, 0x0

    .line 152
    .local v4, opTabBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "operator_tab_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 154
    invoke-direct {p0, v2, v4}, Lcom/htc/launcher/OperatorTabManager;->parseOpTabFunction(ILandroid/os/Bundle;)Lcom/htc/launcher/OperatorTab;

    move-result-object v3

    .line 155
    .local v3, opTab:Lcom/htc/launcher/OperatorTab;
    const-string v5, "OperatorTabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadCustomizationForm: opTab="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz v3, :cond_3

    .line 157
    invoke-direct {p0, v3}, Lcom/htc/launcher/OperatorTabManager;->addOperatorTab(Lcom/htc/launcher/OperatorTab;)V

    .line 152
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private loadTestData()V
    .locals 15

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, minorNb:I
    const-string v2, "test operator tab"

    .line 125
    .local v2, id:Ljava/lang/String;
    const/4 v3, 0x3

    .line 126
    .local v3, initOrder:I
    const/16 v4, 0x63

    .line 127
    .local v4, initPlace:I
    const-string v10, "/data/data/com.htc.launcher/files/"

    .line 128
    .local v10, dir:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "rest_icon.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, restIcon:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "on_icon.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v6, onIcon:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "overlay_icon.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v7, overlayIcon:Ljava/io/File;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v8, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    const/4 v11, 0x0

    const-string v12, "HTC"

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v9, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    new-instance v11, Lcom/htc/launcher/OperatorTabCore$Application;

    const-string v12, "com.futuredial"

    const-string v13, "com.futuredial.ui.DMIUI"

    const/16 v14, 0x9

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/launcher/OperatorTabCore$Application;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v11, Lcom/htc/launcher/OperatorTabCore$Application;

    const-string v12, "com.twitter.android"

    const-string v13, "com.twitter.android.LoginActivity"

    const/16 v14, 0x8

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/launcher/OperatorTabCore$Application;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v11, Lcom/htc/launcher/OperatorTabCore$Application;

    const-string v12, "com.htc.album"

    const-string v13, "com.htc.album.TabPluginDevice.ActivityAllVideos"

    const/4 v14, 0x7

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/launcher/OperatorTabCore$Application;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/htc/launcher/OperatorTab;

    invoke-direct/range {v0 .. v9}, Lcom/htc/launcher/OperatorTab;-><init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V

    .line 141
    .local v0, opTab:Lcom/htc/launcher/OperatorTab;
    invoke-direct {p0, v0}, Lcom/htc/launcher/OperatorTabManager;->addOperatorTab(Lcom/htc/launcher/OperatorTab;)V

    .line 142
    return-void
.end method

.method private parseAppSet(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "set"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    const-string v1, "package"

    .line 273
    .local v1, PACKAGE_NAME:Ljava/lang/String;
    const-string v0, "class"

    .line 274
    .local v0, CLASS_NAME:Ljava/lang/String;
    const-string v2, "priority"

    .line 275
    .local v2, PRIORITY:Ljava/lang/String;
    iget v7, p0, Lcom/htc/launcher/OperatorTabManager;->tabNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/launcher/OperatorTabManager;->tabNum:I

    .line 277
    const-string v7, "package"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "class"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, className:Ljava/lang/String;
    const-string v7, "priority"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 292
    .local v6, priority:I
    new-instance v3, Lcom/htc/launcher/OperatorTabCore$Application;

    invoke-direct {v3, v5, v4, v6}, Lcom/htc/launcher/OperatorTabCore$Application;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    .local v3, app:Lcom/htc/launcher/OperatorTabCore$Application;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method private parseLabelSet(Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 9
    .parameter "set"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    const-string v0, "default"

    .line 300
    .local v0, LABEL_DEFAULT:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, value:Ljava/lang/String;
    const-string v7, "default"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :cond_0
    const/4 v5, 0x0

    .line 308
    .local v5, locale:Ljava/util/Locale;
    const/4 v7, -0x1

    const-string v8, "_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 309
    new-instance v5, Ljava/util/Locale;

    .end local v5           #locale:Ljava/util/Locale;
    invoke-direct {v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v5       #locale:Ljava/util/Locale;
    :goto_1
    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_1
    const/4 v7, 0x0

    const-string v8, "_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, language:Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, country:Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    .end local v5           #locale:Ljava/util/Locale;
    invoke-direct {v5, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #locale:Ljava/util/Locale;
    goto :goto_1

    .line 318
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseOpTabFunction(ILandroid/os/Bundle;)Lcom/htc/launcher/OperatorTab;
    .locals 12
    .parameter "i"
    .parameter "opTabBundle"

    .prologue
    .line 174
    const-string v0, "type"

    .line 175
    .local v0, SET_TYPE:Ljava/lang/String;
    const-string v3, "tab"

    .line 176
    .local v3, SET_TYPE_TAB:Ljava/lang/String;
    const-string v2, "label"

    .line 177
    .local v2, SET_TYPE_LABEL:Ljava/lang/String;
    const-string v1, "app"

    .line 179
    .local v1, SET_TYPE_APP:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v7, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    const/4 v8, 0x0

    .line 183
    .local v8, ret:Lcom/htc/launcher/OperatorTab;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 184
    .local v6, key:Ljava/lang/String;
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 185
    .local v9, set:Landroid/os/Bundle;
    const-string v11, "type"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, type:Ljava/lang/String;
    const-string v11, "label"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 187
    invoke-direct {p0, v9, v7}, Lcom/htc/launcher/OperatorTabManager;->parseLabelSet(Landroid/os/Bundle;Ljava/util/HashMap;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v11, "app"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 189
    invoke-direct {p0, v9, v4}, Lcom/htc/launcher/OperatorTabManager;->parseAppSet(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v11, "tab"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 191
    invoke-direct {p0, v9, v7, v4, p1}, Lcom/htc/launcher/OperatorTabManager;->parseTabSet(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/util/ArrayList;I)Lcom/htc/launcher/OperatorTab;

    move-result-object v8

    goto :goto_0

    .line 195
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #set:Landroid/os/Bundle;
    .end local v10           #type:Ljava/lang/String;
    :cond_3
    return-object v8
.end method

.method private parseTabSet(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/util/ArrayList;I)Lcom/htc/launcher/OperatorTab;
    .locals 30
    .parameter "set"
    .parameter
    .parameter
    .parameter "minorNb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/OperatorTabCore$Application;",
            ">;I)",
            "Lcom/htc/launcher/OperatorTab;"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, labelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    const-string v13, "id"

    .line 200
    .local v13, ID:Ljava/lang/String;
    const-string v14, "init_order"

    .line 201
    .local v14, INIT_ORDER:Ljava/lang/String;
    const/4 v15, 0x3

    .line 202
    .local v15, INIT_ORDER_DEFAULT:I
    const-string v24, "rest_icon"

    .line 203
    .local v24, REST_ICON:Ljava/lang/String;
    const-string v22, "on_icon"

    .line 204
    .local v22, ON_ICON:Ljava/lang/String;
    const-string v23, "overlay_icon"

    .line 205
    .local v23, OVERLAY_ICON:Ljava/lang/String;
    const-string v12, "default"

    .line 207
    .local v12, DEFAULT:Ljava/lang/String;
    const-string v16, "init_place"

    .line 208
    .local v16, INIT_PLACE:Ljava/lang/String;
    const/16 v17, 0x63

    .line 209
    .local v17, INIT_PLACE_DEFAULT:I
    const-string v20, "TAB"

    .line 210
    .local v20, INIT_PLACE_TAB:Ljava/lang/String;
    const-string v19, "POOL"

    .line 211
    .local v19, INIT_PLACE_POOL:Ljava/lang/String;
    const-string v18, "PERMANENT"

    .line 213
    .local v18, INIT_PLACE_PERMANENT:Ljava/lang/String;
    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, id:Ljava/lang/String;
    const-string v2, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 216
    .local v26, def:Ljava/lang/String;
    const/4 v4, 0x3

    .line 218
    .local v4, initOrder:I
    :try_start_0
    const-string v2, "init_order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 222
    :goto_0
    if-gez v4, :cond_0

    .line 223
    const-string v2, "OperatorTabManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseTabSet: invalid tab initOrder="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v4, 0x3

    .line 227
    :cond_0
    const-string v2, "init_place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 228
    .local v28, initPlaceString:Ljava/lang/String;
    const/16 v5, 0x63

    .line 229
    .local v5, initPlace:I
    const-string v2, "TAB"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const/16 v5, 0x63

    .line 237
    :cond_1
    :goto_1
    new-instance v6, Ljava/io/File;

    const-string v2, "rest_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, restIcon:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v2, "on_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v7, onIcon:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v2, "overlay_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v8, overlayIcon:Ljava/io/File;
    const/4 v1, 0x0

    .line 243
    .local v1, opTab:Lcom/htc/launcher/OperatorTab;
    const-string v2, "FREQUENT_TAB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 245
    .local v29, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0019

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 246
    .local v21, ITEMS_PER_ROW:I
    const v2, 0x7f0c000d

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 247
    .local v25, ROWS_PER_PAGE:I
    mul-int v11, v21, v25

    .line 248
    .local v11, ITEMS_PER_PAGE:I
    new-instance v1, Lcom/htc/launcher/PreloadedFrequentTab;

    .end local v1           #opTab:Lcom/htc/launcher/OperatorTab;
    move/from16 v2, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v11}, Lcom/htc/launcher/PreloadedFrequentTab;-><init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;I)V

    .line 268
    .end local v11           #ITEMS_PER_PAGE:I
    .end local v21           #ITEMS_PER_ROW:I
    .end local v25           #ROWS_PER_PAGE:I
    .end local v29           #res:Landroid/content/res/Resources;
    .restart local v1       #opTab:Lcom/htc/launcher/OperatorTab;
    :goto_2
    return-object v1

    .line 219
    .end local v1           #opTab:Lcom/htc/launcher/OperatorTab;
    .end local v5           #initPlace:I
    .end local v6           #restIcon:Ljava/io/File;
    .end local v7           #onIcon:Ljava/io/File;
    .end local v8           #overlayIcon:Ljava/io/File;
    .end local v28           #initPlaceString:Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 220
    .local v27, e:Ljava/lang/NumberFormatException;
    const-string v2, "OperatorTabManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseTabSet: INIT_ORDER="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "init_order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-static {v2, v9, v0}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 231
    .end local v27           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #initPlace:I
    .restart local v28       #initPlaceString:Ljava/lang/String;
    :cond_2
    const-string v2, "POOL"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    const/16 v5, 0x64

    goto/16 :goto_1

    .line 233
    :cond_3
    const-string v2, "PERMANENT"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const/16 v5, 0x65

    goto/16 :goto_1

    .line 258
    .restart local v1       #opTab:Lcom/htc/launcher/OperatorTab;
    .restart local v6       #restIcon:Ljava/io/File;
    .restart local v7       #onIcon:Ljava/io/File;
    .restart local v8       #overlayIcon:Ljava/io/File;
    :cond_4
    new-instance v1, Lcom/htc/launcher/OperatorTab;

    .end local v1           #opTab:Lcom/htc/launcher/OperatorTab;
    move/from16 v2, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/htc/launcher/OperatorTab;-><init>(ILjava/lang/String;IILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V

    .restart local v1       #opTab:Lcom/htc/launcher/OperatorTab;
    goto :goto_2
.end method


# virtual methods
.method public getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;
    .locals 1
    .parameter "i"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/OperatorTab;

    return-object v0
.end method

.method public getOperatorTabByMinorNb(I)Lcom/htc/launcher/OperatorTab;
    .locals 2
    .parameter "minorNb"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/OperatorTab;

    return-object v0
.end method

.method public getOperatorTabCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getResources()Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->res:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    return-object v0
.end method

.method reload()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->sortedOperatorTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    invoke-direct {p0}, Lcom/htc/launcher/OperatorTabManager;->loadCustomizationForm()V

    .line 119
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 71
    const-string v0, "OperatorTabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext: ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this.ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;

    .line 75
    :cond_0
    return-void
.end method
