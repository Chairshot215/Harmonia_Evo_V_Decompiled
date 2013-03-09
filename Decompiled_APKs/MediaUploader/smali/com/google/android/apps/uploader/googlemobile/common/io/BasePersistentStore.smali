.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;


# instance fields
.field private final preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;->preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    return-void
.end method


# virtual methods
.method public clearPreferences()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;->preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->clearPreferences()V

    return-void
.end method

.method public getFreeSpace(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;->preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public savePreferences()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;->preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->savePreferences()V

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/BasePersistentStore;->preferenceStore:Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/PreferenceStore;->setPreference(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
