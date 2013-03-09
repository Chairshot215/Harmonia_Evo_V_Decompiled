.class public interface abstract Lcom/google/android/tts/TtsConfig;
.super Ljava/lang/Object;
.source "TtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/TtsConfig$SettingsKeys;
    }
.end annotation


# virtual methods
.method public abstract addActiveDownload(Ljava/lang/String;J)V
.end method

.method public abstract getActiveDownloads()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultTimeoutNetworkFirst()I
.end method

.method public abstract getDefaultTimeoutNetworkOnly()I
.end method

.method public abstract getMetadataUpdateFrequencyMs()I
.end method

.method public abstract getMetadataUpdateTime()J
.end method

.method public abstract getProjectFileVariant()Ljava/lang/String;
.end method

.method public abstract isFlintEnabled()Z
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract removeActiveDownload(Ljava/lang/String;)V
.end method

.method public abstract setMetadataUpdateTime(J)V
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
