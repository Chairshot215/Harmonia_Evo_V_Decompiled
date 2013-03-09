.class public Lcom/htc/launcher/FolderInfo;
.super Lcom/htc/launcher/FxShortcutInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/FolderInfo$FolderListener;,
        Lcom/htc/launcher/FolderInfo$Observer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UserFolderInfo"

.field private static s_Context:Landroid/content/Context;


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDropTarget:Lcom/htc/launcher/DropTarget;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/FolderInfo$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Comperator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m_bIsRemoved:Z

.field public opened:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "title"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/launcher/FxShortcutInfo;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/htc/launcher/FolderInfo$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/FolderInfo$1;-><init>(Lcom/htc/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/htc/launcher/FolderInfo;->m_Comperator:Ljava/util/Comparator;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/FolderInfo;->mDropTarget:Lcom/htc/launcher/DropTarget;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/FolderInfo;->m_bIsRemoved:Z

    .line 87
    sput-object p1, Lcom/htc/launcher/FolderInfo;->s_Context:Landroid/content/Context;

    .line 88
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.OPEN_LAUNCHER_BAR_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public static isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 3
    .parameter "infoFrom"
    .parameter "infoTo"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "UserFolderInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate icon on add!\tApplicationInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private itemsChanged()V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/htc/launcher/FolderInfo$FolderListener;->onItemsChanged()V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method private sortContents()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->m_Comperator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public add(Lcom/htc/launcher/ApplicationInfo;Z)Z
    .locals 12
    .parameter "info"
    .parameter "bUpdateDatabase"

    .prologue
    const/4 v11, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, bIsItemDuplicate:Z
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, size:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 196
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-static {p1, v0}, Lcom/htc/launcher/FolderInfo;->isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v11

    .line 223
    :goto_1
    return v4

    .line 195
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 201
    :cond_1
    if-nez v8, :cond_3

    .line 202
    iget-wide v0, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-eq v0, v5, :cond_2

    iget v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne v0, v5, :cond_3

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountX()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 204
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountX()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/FolderInfo;->isFull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    const-string v0, "UserFolderInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to FolderInfo but already full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_4
    if-eqz p2, :cond_5

    .line 214
    sget-object v0, Lcom/htc/launcher/FolderInfo;->s_Context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    iget v5, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v6, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    move-object v1, p1

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-direct {p0}, Lcom/htc/launcher/FolderInfo;->sortContents()V

    .line 219
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/htc/launcher/FolderInfo$FolderListener;->onAdd(Lcom/htc/launcher/ApplicationInfo;)V

    .line 219
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 222
    :cond_6
    invoke-direct {p0}, Lcom/htc/launcher/FolderInfo;->itemsChanged()V

    move v4, v11

    .line 223
    goto/16 :goto_1
.end method

.method addListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
    .locals 6
    .parameter "launcher"
    .parameter "container"

    .prologue
    .line 102
    const v0, 0x7f030011

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/FolderIcon;->fromXml(ILcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Lcom/htc/launcher/FolderInfo;ZI)Lcom/htc/launcher/Draggee;

    move-result-object v0

    return-object v0
.end method

.method public createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;
    .locals 6
    .parameter "launcher"
    .parameter "container"
    .parameter "id"

    .prologue
    .line 107
    const v0, 0x7f030011

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/FolderIcon;->fromXml(ILcom/htc/launcher/Launcher;Landroid/view/ViewGroup;Lcom/htc/launcher/FolderInfo;ZI)Lcom/htc/launcher/Draggee;

    move-result-object v0

    return-object v0
.end method

.method public getDropTarget()Lcom/htc/launcher/DropTarget;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mDropTarget:Lcom/htc/launcher/DropTarget;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/htc/launcher/ItemInfo;->id:J

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "Folder"

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    if-le v1, v2, :cond_1

    .line 128
    :cond_0
    const-string v1, ""

    .line 131
    :goto_0
    return-object v1

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, appTitle:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", folder, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    .end local v0           #appTitle:Ljava/lang/String;
    :cond_2
    const-string v0, "none"

    goto :goto_1
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemAlreadyInFolder(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 3
    .parameter "appInfo"

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    invoke-static {p1, v2}, Lcom/htc/launcher/FolderInfo;->isItemDuplicate(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 162
    :goto_1
    return v2

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public notifyDataChanged()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mObserver:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo$Observer;

    .line 282
    .local v0, observer:Lcom/htc/launcher/FolderInfo$Observer;
    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Lcom/htc/launcher/FolderInfo$Observer;->onDataChanged()V

    goto :goto_0
.end method

.method public notifyItemsChanged()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/htc/launcher/FolderInfo;->itemsChanged()V

    .line 317
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    .line 96
    invoke-super {p0, p1}, Lcom/htc/launcher/FxShortcutInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 97
    const-string v0, "title"

    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public remove(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 233
    sget-object v1, Lcom/htc/launcher/FolderInfo;->s_Context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 234
    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 235
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {p0}, Lcom/htc/launcher/FolderInfo;->sortContents()V

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/htc/launcher/FolderInfo$FolderListener;->onRemove(Lcom/htc/launcher/ApplicationInfo;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/FolderInfo;->itemsChanged()V

    .line 241
    return-void
.end method

.method removeListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    return-void
.end method

.method public setDropTarget(Lcom/htc/launcher/DropTarget;)V
    .locals 0
    .parameter "dropTarget"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/launcher/FolderInfo;->mDropTarget:Lcom/htc/launcher/DropTarget;

    .line 263
    return-void
.end method

.method public setObserver(Lcom/htc/launcher/FolderInfo$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/FolderInfo;->mObserver:Ljava/lang/ref/WeakReference;

    .line 275
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/htc/launcher/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public updatePosition(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 249
    const/4 v4, 0x0

    .line 250
    .local v4, nScreen:I
    iget-wide v2, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 251
    .local v2, lContainer:J
    iget-boolean v0, p0, Lcom/htc/launcher/FolderInfo;->m_bIsRemoved:Z

    if-eqz v0, :cond_0

    .line 252
    iget v4, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 253
    iget-wide v2, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 255
    :cond_0
    sget-object v0, Lcom/htc/launcher/FolderInfo;->s_Context:Landroid/content/Context;

    iget v5, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v6, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 256
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/htc/launcher/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo$FolderListener;

    invoke-interface {v0}, Lcom/htc/launcher/FolderInfo$FolderListener;->onItemsChanged()V

    .line 256
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method
