.class public interface abstract Lcom/google/android/googlequicksearchbox/Source;
.super Ljava/lang/Object;
.source "Source.java"


# virtual methods
.method public abstract getDefaultIntentAction()Ljava/lang/String;
.end method

.method public abstract getDefaultIntentData()Ljava/lang/String;
.end method

.method public abstract getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
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
.end method

.method public abstract getIconUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getIntentComponent()Landroid/content/ComponentName;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQueryThreshold()I
.end method

.method public abstract getSettingsDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getSourceIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSourceIconUri()Landroid/net/Uri;
.end method

.method public abstract getSuggestAuthority()Ljava/lang/String;
.end method

.method public abstract getSuggestUri()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract isEnabledByDefault()Z
.end method

.method public abstract isHiddenFromSettings()Z
.end method

.method public abstract isIgnoreIcon1()Z
.end method

.method public abstract isInternalSource()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract isShowSingleLine()Z
.end method

.method public abstract isTrusted()Z
.end method

.method public abstract isVersionCodeCompatible(I)Z
.end method

.method public abstract queryAfterZeroResults()Z
.end method

.method public abstract refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion;
.end method

.method public abstract shouldShortcutResults()Z
.end method
