.class public final enum Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;
.super Ljava/lang/Enum;
.source "GlobalDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/GlobalDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailReturnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

.field public static final enum CONTENT_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

.field public static final enum DMC_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

.field public static final enum RENDERER_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

.field public static final enum SERVER_TUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    const-string v1, "SERVER_TUMBNAIL_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->SERVER_TUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 130
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    const-string v1, "RENDERER_THUMBNAIL_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->RENDERER_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 131
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    const-string v1, "CONTENT_THUMBNAIL_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->CONTENT_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 132
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    const-string v1, "DMC_THUMBNAIL_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->DMC_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->SERVER_TUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->RENDERER_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->CONTENT_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->DMC_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const-class v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    return-object v0
.end method
