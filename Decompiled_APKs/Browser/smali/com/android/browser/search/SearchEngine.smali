.class public interface abstract Lcom/android/browser/search/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"


# static fields
.field public static final GOOGLE:Ljava/lang/String; = "google"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract supportsSuggestions()Z
.end method

.method public abstract supportsVoiceSearch()Z
.end method

.method public abstract wantsEmptyQuery()Z
.end method
