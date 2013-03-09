.class final enum Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
.super Ljava/lang/Enum;
.source "OnlineSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DownLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field public static final enum DOWNLOADED:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field public static final enum DOWNLOADFAIL:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field public static final enum DOWNLODING:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field public static final enum PREPAREDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

.field public static final enum REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const-string v1, "PREPAREDOWNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->PREPAREDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const-string v1, "REDAYDOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const-string v1, "DOWNLODING"

    invoke-direct {v0, v1, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLODING:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const-string v1, "DOWNLOADFAIL"

    invoke-direct {v0, v1, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADFAIL:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    new-instance v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADED:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->PREPAREDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLODING:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADFAIL:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADED:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->$VALUES:[Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->$VALUES:[Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    return-object v0
.end method
