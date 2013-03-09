.class public Lcom/htc/dockmode/shortcut/ShortcutSetting;
.super Landroid/app/Activity;
.source "ShortcutSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APP_SELECT:I = 0x1

.field public static final KEY_APP_INFO:Ljava/lang/String; = "appinfo"

.field private static final KEY_TEMP_APPS:Ljava/lang/String; = "temp_apps"

.field private static final KEY_TEMP_CHECKED:Ljava/lang/String; = "temp_checked"

.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutSetting"

.field static mIndex:I


# instance fields
.field private RES_AP_ICONS:[I

.field private mCancelBtn:Lcom/htc/widget/HtcFooterButton;

.field mChandged:Z

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mFooter:Landroid/widget/TextView;

.field private mIconsLayout:Landroid/widget/LinearLayout;

.field private mIconsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mOkBtn:Lcom/htc/widget/HtcFooterButton;

.field private mReceiverRegistered:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput v0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mChandged:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->RES_AP_ICONS:[I

    .line 49
    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mReceiverRegistered:Z

    .line 104
    new-instance v0, Lcom/htc/dockmode/shortcut/ShortcutSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting$1;-><init>(Lcom/htc/dockmode/shortcut/ShortcutSetting;)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x4at 0x0t 0xat 0x7ft
        0x4bt 0x0t 0xat 0x7ft
        0x4ct 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mChandged:Z

    .line 73
    const-string v3, "temp_apps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 75
    .local v0, appArray:[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 78
    aget-object v3, v0, v2

    check-cast v3, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0           #appArray:[Landroid/os/Parcelable;
    .end local v2           #i:I
    :cond_0
    if-nez v1, :cond_1

    .line 84
    invoke-static {}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getInstance()Lcom/htc/dockmode/shortcut/ShortcutDB;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 86
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->initApInfo(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method private initApInfo(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/dockmode/shortcut/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    monitor-enter v4

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->RES_AP_ICONS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->RES_AP_ICONS:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 140
    .local v2, settingIcon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    .line 141
    .local v0, apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    invoke-virtual {v2, v0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setApInfo(Lcom/htc/dockmode/shortcut/ApplicationInfo;)V

    .line 142
    invoke-virtual {v2, p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0           #apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .end local v2           #settingIcon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    :cond_0
    monitor-exit v4

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, dockfilter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mReceiverRegistered:Z

    .line 101
    .end local v0           #dockfilter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveSetting()V
    .locals 7

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, appArray:[Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    monitor-enter v6

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/pm/ActivityInfo;

    .line 187
    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    const/4 v3, 0x0

    .line 189
    .local v3, index:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 191
    .local v2, icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    invoke-virtual {v2}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    aput-object v5, v0, v3

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    .end local v2           #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    .end local v3           #index:I
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v4, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/dockmode/shortcut/ShortcutDBService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    const-string v5, "extra_update"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v5, "applist"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v4}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 195
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private startAppListActivity()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dockmode.selectapp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, applIntent:Landroid/content/Intent;
    const-string v1, "com.htc.dockmode"

    const-string v2, "com.htc.dockmode.shortcut.SelectAppActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 213
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    if-ne p1, v4, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 219
    iput-boolean v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mChandged:Z

    .line 220
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    monitor-enter v4

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    sget v5, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 222
    .local v2, icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    const-string v3, "appinfo"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 224
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {p0, v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getApplicationInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Lcom/htc/dockmode/shortcut/ApplicationInfo;

    move-result-object v1

    .line 226
    .local v1, apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    invoke-virtual {v2, v1}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setApInfo(Lcom/htc/dockmode/shortcut/ApplicationInfo;)V

    .line 227
    monitor-exit v4

    .line 229
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .end local v2           #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    :cond_0
    return-void

    .line 227
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v3, :cond_1

    .line 153
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->setResult(I)V

    .line 154
    iget-boolean v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mChandged:Z

    if-eqz v3, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->saveSetting()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->finish()V

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v3, :cond_2

    .line 159
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    monitor-enter v4

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    const/4 v2, 0x0

    .line 166
    .local v2, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 168
    .local v1, icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    if-ne p1, v1, :cond_4

    .line 169
    sput v2, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIndex:I

    .line 174
    .end local v1           #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->startAppListActivity()V

    goto :goto_0

    .line 172
    .restart local v1       #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    .end local v1           #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    .end local v2           #index:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->setContentView(I)V

    .line 56
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mTitle:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mFooter:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsLayout:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 60
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    .line 62
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mOkBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->init(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->initReceiver()V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->releaseReceiver()V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-boolean v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mChandged:Z

    if-eqz v4, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, appArray:[Lcom/htc/dockmode/shortcut/ApplicationInfo;
    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    monitor-enter v5

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lcom/htc/dockmode/shortcut/ApplicationInfo;

    .line 239
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mIconsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    const/4 v3, 0x0

    .line 241
    .local v3, index:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 243
    .local v2, icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    invoke-virtual {v2}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->getApplicationInfo()Lcom/htc/dockmode/shortcut/ApplicationInfo;

    move-result-object v4

    aput-object v4, v0, v3

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;>;"
    .end local v2           #icon:Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
    .end local v3           #index:I
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    const-string v4, "temp_apps"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 250
    .end local v0           #appArray:[Lcom/htc/dockmode/shortcut/ApplicationInfo;
    :cond_1
    return-void

    .line 247
    .restart local v0       #appArray:[Lcom/htc/dockmode/shortcut/ApplicationInfo;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting;->mReceiverRegistered:Z

    .line 121
    :cond_0
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
