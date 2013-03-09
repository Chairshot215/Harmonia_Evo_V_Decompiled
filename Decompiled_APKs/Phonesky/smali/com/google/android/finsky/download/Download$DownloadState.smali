.class public final enum Lcom/google/android/finsky/download/Download$DownloadState;
.super Ljava/lang/Enum;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/download/Download$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

.field public static final enum UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "UNQUEUED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    new-instance v0, Lcom/google/android/finsky/download/Download$DownloadState;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/download/Download$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->$VALUES:[Lcom/google/android/finsky/download/Download$DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/download/Download$DownloadState;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/Download$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/download/Download$DownloadState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->$VALUES:[Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/download/Download$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/download/Download$DownloadState;

    return-object v0
.end method
