.class public Lcom/htc/launcher/FxShortcutInfo;
.super Lcom/htc/launcher/ItemInfo;
.source "FxShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/FxShortcutInfo$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FxShortcutInfo"


# instance fields
.field customIcon:Z

.field customizeAppId:Ljava/lang/String;

.field filtered:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public isDownloaded:Z

.field public lastModifiedTime:J

.field public launchCount:I

.field private mObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/FxShortcutInfo$Observer;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public priority:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/htc/launcher/ItemInfo;-><init>()V

    .line 67
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    .line 80
    iput-boolean v2, p0, Lcom/htc/launcher/FxShortcutInfo;->isDownloaded:Z

    .line 85
    iput v2, p0, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/FxShortcutInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/htc/launcher/ItemInfo;-><init>(Lcom/htc/launcher/ItemInfo;)V

    .line 67
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    .line 80
    iput-boolean v2, p0, Lcom/htc/launcher/FxShortcutInfo;->isDownloaded:Z

    .line 85
    iput v2, p0, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    .line 109
    iget-object v0, p1, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 111
    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-boolean v0, p1, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 116
    iget-boolean v0, p1, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    .line 117
    return-void
.end method


# virtual methods
.method public createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
    .locals 4
    .parameter "launcher"
    .parameter "container"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 257
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;-><init>(Lcom/htc/launcher/ItemInfo;ILcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V

    .line 259
    .local v0, favorite:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    iget-boolean v1, p0, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setContents(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/launcher/DesktopItemController;->mOnClickShortcutListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/htc/launcher/FxShortcutInfo;->setObserver(Lcom/htc/launcher/FxShortcutInfo$Observer;)V

    .line 273
    return-object v0
.end method

.method public createNavbarItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;I)Lcom/htc/launcher/Draggee;
    .locals 2
    .parameter "launcher"
    .parameter "container"
    .parameter "index"

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/FxShortcutInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 287
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setInfoForNavBar(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V

    .line 288
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setHitboxLongTabListener()V

    .line 290
    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/htc/launcher/ItemInfo;->id:J

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    const-string v0, "none"

    .line 226
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "Shortcut"

    .line 234
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    const-string v0, "none"

    .line 239
    .local v0, appTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FxShortcut"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method public isItemEditable()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public notifyIconUpdate()V
    .locals 4

    .prologue
    .line 215
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITEM - NotifyUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->mObserver:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->mObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FxShortcutInfo$Observer;

    .line 219
    .local v0, observer:Lcom/htc/launcher/FxShortcutInfo$Observer;
    if-eqz v0, :cond_0

    .line 221
    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->id:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/launcher/FxShortcutInfo$Observer;->onIconUpdate(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 138
    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, titleStr:Ljava/lang/String;
    :goto_0
    const-string v5, "title"

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, uri:Ljava/lang/String;
    :goto_1
    const-string v4, "intent"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v4, p0, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    if-eqz v4, :cond_7

    .line 145
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lcom/htc/launcher/FastBitmapDrawable;

    if-eqz v4, :cond_4

    .line 149
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v4, Lcom/htc/launcher/FastBitmapDrawable;

    invoke-virtual {v4}, Lcom/htc/launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/htc/launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 156
    .local v1, buffer:[B
    if-nez v1, :cond_5

    .line 157
    const-string v4, "FxShortcutInfo"

    const-string v5, "onAddToDatabase() -- Custom icon to byte array is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #buffer:[B
    :cond_1
    :goto_3
    return-void

    .end local v2           #titleStr:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_2
    move-object v2, v4

    .line 138
    goto :goto_0

    .restart local v2       #titleStr:Ljava/lang/String;
    :cond_3
    move-object v3, v4

    .line 141
    goto :goto_1

    .line 150
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #uri:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 160
    .restart local v1       #buffer:[B
    :cond_5
    const-string v4, "iconType"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v4, "icon"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3

    .line 168
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #buffer:[B
    :cond_6
    const-string v4, "FxShortcutInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Custom icon is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/launcher/FxShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 171
    :cond_7
    const-string v4, "iconType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_8

    .line 174
    const-string v4, "iconPackage"

    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "iconResource"

    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 181
    :cond_8
    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 182
    const-string v4, "iconPackage"

    iget-object v5, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 185
    const-string v4, "iconResource"

    iget-object v5, p0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 132
    return-void
.end method

.method public setObserver(Lcom/htc/launcher/FxShortcutInfo$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/FxShortcutInfo;->mObserver:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/htc/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
