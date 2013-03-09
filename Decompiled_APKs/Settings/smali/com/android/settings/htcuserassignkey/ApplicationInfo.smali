.class Lcom/android/settings/htcuserassignkey/ApplicationInfo;
.super Lcom/android/settings/htcuserassignkey/ItemInfo;
.source "ApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;
    }
.end annotation


# instance fields
.field customIcon:Z

.field filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;",
            ">;"
        }
    .end annotation
.end field

.field priority:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/ItemInfo;-><init>()V

    .line 66
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->priority:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->itemType:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/htcuserassignkey/ItemInfo;-><init>(Lcom/android/settings/htcuserassignkey/ItemInfo;)V

    .line 66
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->priority:I

    .line 80
    iget-object v0, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 82
    iget-object v0, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 84
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-boolean v0, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->filtered:Z

    .line 89
    iget-boolean v0, p1, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->customIcon:Z

    .line 90
    return-void
.end method


# virtual methods
.method public notifyIconUpdate()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->mObserver:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->mObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;

    .line 164
    .local v0, observer:Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;
    if-eqz v0, :cond_0

    .line 166
    iget-wide v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->id:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;->onIconUpdate(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/htcuserassignkey/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, titleStr:Ljava/lang/String;
    :goto_0
    const-string v4, "title"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, uri:Ljava/lang/String;
    :goto_1
    const-string v3, "intent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->customIcon:Z

    if-eqz v3, :cond_3

    .line 118
    const-string v3, "iconType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/android/settings/htcuserassignkey/FastBitmapDrawable;

    invoke-virtual {v3}, Lcom/android/settings/htcuserassignkey/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 142
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    return-void

    .end local v1           #titleStr:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 111
    goto :goto_0

    .restart local v1       #titleStr:Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 114
    goto :goto_1

    .line 123
    .restart local v2       #uri:Ljava/lang/String;
    :cond_3
    const-string v3, "iconType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_4

    .line 126
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :cond_4
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->itemType:I

    .line 105
    return-void
.end method

.method public setObserver(Lcom/android/settings/htcuserassignkey/ApplicationInfo$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->mObserver:Ljava/lang/ref/WeakReference;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
