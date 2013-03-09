.class public abstract Lcom/google/android/gm/provider/DatabaseInitializer;
.super Ljava/lang/Object;
.source "DatabaseInitializer.java"


# instance fields
.field protected final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mEngine:Lcom/google/android/gm/provider/MailEngine;

.field protected final mInitialDbVersion:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "engine"
    .parameter "db"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/gm/provider/DatabaseInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 23
    iput-object p2, p0, Lcom/google/android/gm/provider/DatabaseInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/DatabaseInitializer;->mInitialDbVersion:I

    .line 25
    return-void
.end method

.method private upgradeDatabase(I)I
    .locals 6
    .parameter "currentDbVersion"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/DatabaseInitializer;->getTargetDbVersion(I)I

    move-result v3

    .line 50
    .local v3, upgradedVersion:I
    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/DatabaseInitializer;->findUpgradeMethod(I)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, upgradeMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 54
    .local v1, upgradeException:Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v4, p0, Lcom/google/android/gm/provider/DatabaseInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    if-eqz v1, :cond_0

    .line 65
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to invoke upgrade Method"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    move-object v1, v0

    .line 62
    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v1, v0

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    return v3
.end method


# virtual methods
.method public abstract bootstrapDatabase()V
.end method

.method findUpgradeMethod(I)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "destinationDbVersion"

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/gm/provider/DatabaseInitializer;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeDbTo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing upgrade to version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getTargetDbVersion(I)I
    .locals 1
    .parameter "currentDbVersion"

    .prologue
    .line 91
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method performUpgrade(I)V
    .locals 2
    .parameter "finalDbVersion"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/gm/provider/DatabaseInitializer;->mInitialDbVersion:I

    .line 36
    .local v0, currentDbVersion:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/DatabaseInitializer;->upgradeDatabase(I)I

    move-result v1

    .line 38
    .local v1, newDbVersion:I
    move v0, v1

    .line 39
    goto :goto_0

    .line 40
    .end local v1           #newDbVersion:I
    :cond_0
    return-void
.end method
