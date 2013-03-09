.class final enum Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;
.super Ljava/lang/Enum;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/gallery/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum CONVERT_TO_SUNNY_BITMAP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum DECODE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum LOAD_FD:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum LOAD_IS:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum MAKE_TEXTURE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

.field public static final enum SUCCEEDED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "NOT_SETUP"

    invoke-direct {v0, v1, v3}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "LOAD_FD"

    invoke-direct {v0, v1, v4}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "LOAD_IS"

    invoke-direct {v0, v1, v5}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "DECODE"

    invoke-direct {v0, v1, v6}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->DECODE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "CONVERT_TO_SUNNY_BITMAP"

    invoke-direct {v0, v1, v7}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "MAKE_TEXTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    new-instance v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->DECODE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->FAILED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->$VALUES:[Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->$VALUES:[Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    invoke-virtual {v0}, [Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/MediaCacheService/gallery/ImageDecoder$STATE;

    return-object v0
.end method
