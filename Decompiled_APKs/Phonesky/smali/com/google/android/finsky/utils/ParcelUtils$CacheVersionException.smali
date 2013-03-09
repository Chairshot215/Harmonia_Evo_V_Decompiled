.class public final Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;
.super Ljava/lang/RuntimeException;
.source "ParcelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/ParcelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheVersionException"
.end annotation


# instance fields
.field private final mActualVersion:J

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpectedVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;JJ)V
    .locals 0
    .parameter
    .parameter "expectedVersion"
    .parameter "actualVersion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/Parcelable;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mClass:Ljava/lang/Class;

    .line 126
    iput-wide p2, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mExpectedVersion:J

    .line 127
    iput-wide p4, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mActualVersion:J

    .line 128
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    const-string v0, "Failed parsing %s (wanted %d, got %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mExpectedVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/finsky/utils/ParcelUtils$CacheVersionException;->mActualVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
