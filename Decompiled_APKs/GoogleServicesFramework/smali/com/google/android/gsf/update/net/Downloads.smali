.class public final Lcom/google/android/gsf/update/net/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/net/Downloads$DownloadBase;,
        Lcom/google/android/gsf/update/net/Downloads$ByUri;
    }
.end annotation


# static fields
.field private static final DOWNLOADS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 563
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "entity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/update/net/Downloads;->DOWNLOADS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
