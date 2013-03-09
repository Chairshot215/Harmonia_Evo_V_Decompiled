.class public Lcom/android/htccontacts/app/BaseTabActivity;
.super Lcom/htc/widget/TabSwitchActivity;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;,
        Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_REMOVE_WINDOW_BG:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundIsRemoved:Z

.field private mFromTabIndex:I

.field private mFromTabTag:Ljava/lang/String;

.field private mFromTabView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field protected mIndexTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextTabIndex:I

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/TabObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabsTag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTagIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/htccontacts/app/BaseTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/app/BaseTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTabs:Ljava/util/TreeMap;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTabsTag:Ljava/util/HashSet;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTagIndexMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mIndexTagMap:Ljava/util/HashMap;

    .line 364
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/app/BaseTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mBackgroundIsRemoved:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/htccontacts/app/BaseTabActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTabsTag:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/TreeMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTabs:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/app/BaseTabActivity;Lcom/htc/widget/TabSwitchHost;Ljava/util/TreeMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/app/BaseTabActivity;->addPluginTab(Lcom/htc/widget/TabSwitchHost;Ljava/util/TreeMap;)V

    return-void
.end method

.method private addPluginTab(Lcom/htc/widget/TabSwitchHost;Ljava/util/TreeMap;)V
    .locals 12
    .parameter "tabSwitchHost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/TabSwitchHost;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, tabMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;"
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 137
    .local v5, iteEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 138
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;

    .line 140
    .local v3, info:Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
    if-eqz v3, :cond_0

    iget-boolean v8, v3, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->isPlugged:Z

    if-nez v8, :cond_0

    .line 141
    iget-object v7, v3, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->tab:Lcom/htc/opensense/plugin/TabPluginWrapper;

    .line 142
    .local v7, wrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    .local v0, drawable:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabName()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, name:Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x3

    if-ge v8, v9, :cond_1

    .line 145
    const-string v8, "PluginLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to add component \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' to tab because the number of tab icon drawable is less than 3!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    :try_start_0
    const-string v8, "PluginLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding component <TAG:\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', NAME:\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'> to tab!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getActivityIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/app/BaseTabActivity;->processIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 153
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1, v6}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const/4 v10, 0x1

    aget-object v10, v0, v10

    const/4 v11, 0x2

    aget-object v11, v0, v11

    invoke-virtual {v8, v6, v9, v10, v11}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 159
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTagIndexMap:Ljava/util/HashMap;

    iget v9, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mIndexTagMap:Ljava/util/HashMap;

    iget v9, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget v8, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    .line 162
    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->isPlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 164
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "PluginLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to add component \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' to tab because: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 170
    .end local v0           #drawable:[Landroid/graphics/drawable/Drawable;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;"
    .end local v3           #info:Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #wrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    :cond_2
    return-void
.end method

.method private addSpecTab(Lcom/htc/widget/TabSwitchHost;Ljava/util/LinkedList;)V
    .locals 5
    .parameter "tabSwitchHost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/TabSwitchHost;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, specList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/widget/TabSwitchHost$TabSpec;>;"
    if-nez p2, :cond_1

    .line 180
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 175
    .local v1, spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {p1, v1}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 176
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTagIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mIndexTagMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget v2, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    goto :goto_0
.end method

.method private removeBackground()V
    .locals 4

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mBackgroundIsRemoved:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/htccontacts/app/BaseTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/BaseTabActivity$1;-><init>(Lcom/android/htccontacts/app/BaseTabActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mHandler:Landroid/os/Handler;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    :cond_1
    return-void
.end method

.method private removePluginTab(Lcom/htc/widget/TabSwitchHost;)V
    .locals 6
    .parameter "mTabHost"

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mTabs:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 184
    .local v2, iteEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;

    .line 187
    .local v1, info:Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->isPlugged:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 188
    iget-object v3, v1, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->tab:Lcom/htc/opensense/plugin/TabPluginWrapper;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/widget/TabSwitchHost;->removeTab(Ljava/lang/String;)V

    .line 189
    iput-boolean v5, v1, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->isPlugged:Z

    goto :goto_0

    .line 192
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;>;"
    .end local v1           #info:Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
    :cond_1
    iput v5, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    .line 193
    return-void
.end method


# virtual methods
.method protected LoadPlugins()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getPluginFeature()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;-><init>(Lcom/android/htccontacts/app/BaseTabActivity;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method protected getLocalTabSpec(Lcom/htc/widget/TabSwitchHost;)Ljava/util/LinkedList;
    .locals 1
    .parameter "tabSwitchHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/TabSwitchHost;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/TabSwitchHost$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getNextTabIndex()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mNextTabIndex:I

    return v0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/htc/widget/TabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, htcContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 207
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x20900b2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 212
    .local v5, vw:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 214
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/app/BaseTabActivity;->setContentView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v4

    .line 230
    .local v4, tabHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/app/BaseTabActivity;->getLocalTabSpec(Lcom/htc/widget/TabSwitchHost;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/htccontacts/app/BaseTabActivity;->addSpecTab(Lcom/htc/widget/TabSwitchHost;Ljava/util/LinkedList;)V

    .line 232
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->LoadPlugins()V

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/app/BaseTabActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 202
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #parent:Landroid/view/ViewGroup;
    .end local v4           #tabHost:Lcom/htc/widget/TabSwitchHost;
    .end local v5           #vw:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/htccontacts/app/BaseTabActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onResume()V

    .line 245
    return-void
.end method

.method public onTabTouchDown()V
    .locals 13

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v3

    .line 308
    .local v3, tabHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getTabWidget()Lcom/htc/widget/TabSwitchWidget;

    move-result-object v8

    .line 309
    .local v8, tabWidget:Lcom/htc/widget/TabSwitchWidget;
    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v4

    .line 310
    .local v4, tabIndex:I
    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, tabTag:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v7

    .line 312
    .local v7, tabView:Landroid/view/View;
    invoke-virtual {v8}, Lcom/htc/widget/TabSwitchWidget;->getJumpNextId()I

    move-result v5

    .line 313
    .local v5, tabJumpIndex:I
    const/4 v1, 0x1

    .line 314
    .local v1, isSameTab:Z
    if-eq v4, v5, :cond_0

    .line 315
    const/4 v1, 0x0

    .line 317
    :cond_0
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/TabObserver;

    .line 318
    .local v2, o:Lcom/android/htccontacts/widget/TabObserver;
    invoke-interface {v2, v4, v6}, Lcom/android/htccontacts/widget/TabObserver;->onTabControlPressed(ILjava/lang/String;)V

    .line 319
    if-nez v1, :cond_1

    .line 320
    iget-object v10, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mIndexTagMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 321
    .local v9, toTag:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 322
    invoke-interface {v2, v4, v5, v6, v9}, Lcom/android/htccontacts/widget/TabObserver;->onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    sget-object v10, Lcom/android/htccontacts/app/BaseTabActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The tab tag is empty string [TabIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v2           #o:Lcom/android/htccontacts/widget/TabObserver;
    .end local v9           #toTag:Ljava/lang/String;
    :cond_3
    iput v4, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mFromTabIndex:I

    .line 330
    iput-object v6, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mFromTabTag:Ljava/lang/String;

    .line 331
    iput-object v7, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mFromTabView:Landroid/view/View;

    .line 332
    return-void
.end method

.method public onTabTouchMove()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onTabTouchUp()V
    .locals 8

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v2

    .line 336
    .local v2, tabHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v3

    .line 337
    .local v3, tabIndex:I
    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, tabTag:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v5

    .line 339
    .local v5, tabView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/TabObserver;

    .line 340
    .local v1, o:Lcom/android/htccontacts/widget/TabObserver;
    invoke-interface {v1, v3, v4}, Lcom/android/htccontacts/widget/TabObserver;->onTabControlReleased(ILjava/lang/String;)V

    .line 341
    iget v6, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mFromTabIndex:I

    iget-object v7, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mFromTabTag:Ljava/lang/String;

    invoke-interface {v1, v6, v3, v7, v4}, Lcom/android/htccontacts/widget/TabObserver;->onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    .end local v1           #o:Lcom/android/htccontacts/widget/TabObserver;
    :cond_0
    return-void
.end method

.method protected processIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "intent"

    .prologue
    .line 299
    return-object p1
.end method

.method public registerTabObserver(Lcom/android/htccontacts/widget/TabObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    return-void
.end method

.method protected setCurrentTab(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 293
    return-void
.end method

.method public unregisterTabObserver(Lcom/android/htccontacts/widget/TabObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    return-void
.end method
