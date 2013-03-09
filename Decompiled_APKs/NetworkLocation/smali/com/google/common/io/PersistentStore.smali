.class public interface abstract Lcom/google/common/io/PersistentStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/PersistentStore$PersistentStoreException;
    }
.end annotation


# virtual methods
.method public abstract readBlock(Ljava/lang/String;)[B
.end method

.method public abstract readPreference(Ljava/lang/String;)[B
.end method

.method public abstract savePreferences()V
.end method

.method public abstract setPreference(Ljava/lang/String;[B)Z
.end method

.method public abstract writeBlock([BLjava/lang/String;)I
.end method
