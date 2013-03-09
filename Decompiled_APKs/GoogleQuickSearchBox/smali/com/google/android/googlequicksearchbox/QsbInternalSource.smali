.class public abstract Lcom/google/android/googlequicksearchbox/QsbInternalSource;
.super Ljava/lang/Object;
.source "QsbInternalSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Source;


# instance fields
.field private final mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

.field private final mVersionCode:I


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/IconLoader;I)V
    .locals 0
    .parameter "iconLoader"
    .parameter "versionCode"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    .line 35
    iput p2, p0, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->mVersionCode:I

    .line 36
    return-void
.end method


# virtual methods
.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 1
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->mIconLoader:Lcom/google/android/googlequicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbInternalSource;->mVersionCode:I

    return v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isHiddenFromSettings()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public isIgnoreIcon1()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isInternalSource()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isShowSingleLine()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 1
    .parameter "shortcutId"
    .parameter "extraData"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldShortcutResults()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
