.class final Ljava/util/prefs/AbstractPreferences$1;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_1
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
