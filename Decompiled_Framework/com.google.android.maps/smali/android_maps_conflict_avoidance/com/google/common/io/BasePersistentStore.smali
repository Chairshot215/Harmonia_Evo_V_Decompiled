.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.super Ljava/lang/Object;
.source "BasePersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private final preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    return-void
.end method


# virtual methods
.method public readPreference(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public savePreferences()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->savePreferences()V

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;->preferenceStore:Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->setPreference(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
