.class public interface abstract Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
.super Ljava/lang/Object;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;
    }
.end annotation


# virtual methods
.method public abstract isRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
.end method

.method public abstract markShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
.end method

.method public abstract refresh(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract shouldRefresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
.end method
