.class public final enum Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;
.super Ljava/lang/Enum;
.source "GlobalDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/GlobalDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageReturnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

.field public static final enum ALBUM_ART_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

.field public static final enum CONTENT_IMAGE_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    const-string v1, "CONTENT_IMAGE_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->CONTENT_IMAGE_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 124
    new-instance v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    const-string v1, "ALBUM_ART_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->ALBUM_ART_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->CONTENT_IMAGE_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->ALBUM_ART_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->$VALUES:[Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    return-object v0
.end method
