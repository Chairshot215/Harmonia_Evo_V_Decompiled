.class public Lcom/htc/launcher/Launcher$ShortcutTip;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutTip"
.end annotation


# instance fields
.field private mId:J

.field private mPriority:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "id"
    .parameter "pri"

    .prologue
    .line 2911
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2912
    iput-wide p1, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    .line 2913
    iput p3, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mPriority:I

    .line 2914
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/launcher/Launcher$ShortcutTip;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 2907
    iget-wide v0, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/htc/launcher/Launcher$ShortcutTip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget v0, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mPriority:I

    return v0
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    .prologue
    .line 2917
    iget-wide v0, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    return-wide v0
.end method

.method public getItemInfo()Lcom/htc/launcher/ItemInfo;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 2944
    sget-object v5, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2945
    .local v1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v1, :cond_1

    move-object v2, v4

    .line 2955
    :cond_0
    :goto_0
    return-object v2

    .line 2946
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/launcher/ItemInfo;

    .line 2947
    .local v3, items:[Lcom/htc/launcher/ItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 2948
    aget-object v2, v3, v0

    .line 2949
    .local v2, item:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_2

    iget-wide v5, v2, Lcom/htc/launcher/ItemInfo;->id:J

    iget-wide v7, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 2950
    instance-of v5, v2, Lcom/htc/launcher/ApplicationInfo;

    if-nez v5, :cond_0

    .line 2947
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #item:Lcom/htc/launcher/ItemInfo;
    :cond_3
    move-object v2, v4

    .line 2955
    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 2921
    iget v0, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mPriority:I

    return v0
.end method

.method public isOnSreen()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2925
    sget-object v4, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2926
    .local v1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v1, :cond_0

    move v4, v5

    .line 2940
    :goto_0
    return v4

    .line 2927
    :cond_0
    new-array v4, v5, [Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/launcher/ItemInfo;

    .line 2929
    .local v3, items:[Lcom/htc/launcher/ItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 2930
    aget-object v2, v3, v0

    .line 2931
    .local v2, item:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_1

    iget-wide v6, v2, Lcom/htc/launcher/ItemInfo;->id:J

    iget-wide v8, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 2932
    const-string v4, "alan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tip is on current scene : itemId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    instance-of v4, v2, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v4, :cond_1

    .line 2934
    iget v6, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    sget-object v4, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    if-ne v6, v4, :cond_1

    .line 2935
    const/4 v4, 0x1

    goto :goto_0

    .line 2929
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #item:Lcom/htc/launcher/ItemInfo;
    :cond_2
    move v4, v5

    .line 2940
    goto :goto_0
.end method
