.class public final enum Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;
.super Ljava/lang/Enum;
.source "SkinDownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/util/SkinDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DOWNLOAD_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

.field public static final enum DL_RET_ERROR_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

.field public static final enum DL_RET_OK:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

.field public static final enum DL_RET_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    const-string v1, "DL_RET_OK"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_OK:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    .line 22
    new-instance v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    const-string v1, "DL_RET_ERROR_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_ERROR_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    .line 23
    new-instance v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    const-string v1, "DL_RET_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    sget-object v1, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_OK:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_ERROR_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->DL_RET_UNKNOWN:Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->$VALUES:[Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->$VALUES:[Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/util/SkinDownloadUtils$DOWNLOAD_RESULT;

    return-object v0
.end method
