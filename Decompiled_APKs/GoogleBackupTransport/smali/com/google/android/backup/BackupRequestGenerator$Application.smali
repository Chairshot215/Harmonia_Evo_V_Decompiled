.class public Lcom/google/android/backup/BackupRequestGenerator$Application;
.super Ljava/lang/Object;
.source "BackupRequestGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BackupRequestGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mDeletedPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/backup/BackupRequestGenerator;


# direct methods
.method private constructor <init>(Lcom/google/android/backup/BackupRequestGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->this$0:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/backup/BackupRequestGenerator;Lcom/google/android/backup/BackupRequestGenerator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/backup/BackupRequestGenerator$Application;-><init>(Lcom/google/android/backup/BackupRequestGenerator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/backup/BackupRequestGenerator$Application;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public addKey(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public deleteAll(Ljava/lang/String;)V
    .locals 6
    .parameter "prefix"

    .prologue
    .line 75
    iget-object v5, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 76
    .local v4, updates:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    .local v3, update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_1
    iget-object v5, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, temps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 88
    .end local v1           #temp:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
