.class public final enum Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;
.super Ljava/lang/Enum;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/provider/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STORAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

.field public static final enum EXTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

.field public static final enum INTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

.field public static final enum PHONE:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 510
    new-instance v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->INTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    .line 511
    new-instance v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->EXTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    .line 512
    new-instance v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->PHONE:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    .line 509
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->INTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->EXTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->PHONE:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->$VALUES:[Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

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
    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;
    .locals 1
    .parameter "name"

    .prologue
    .line 509
    const-class v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    return-object v0
.end method

.method public static values()[Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->$VALUES:[Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    invoke-virtual {v0}, [Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    return-object v0
.end method
