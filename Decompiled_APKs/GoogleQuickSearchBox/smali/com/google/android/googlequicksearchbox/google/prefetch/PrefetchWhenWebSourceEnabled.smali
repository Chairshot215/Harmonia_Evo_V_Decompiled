.class public Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchWhenWebSourceEnabled;
.super Ljava/lang/Object;
.source "PrefetchWhenWebSourceEnabled.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;


# instance fields
.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchWhenWebSourceEnabled;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 29
    return-void
.end method


# virtual methods
.method public shouldPrefetchNow()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchWhenWebSourceEnabled;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isWebSourceEnabled()Z

    move-result v0

    return v0
.end method
