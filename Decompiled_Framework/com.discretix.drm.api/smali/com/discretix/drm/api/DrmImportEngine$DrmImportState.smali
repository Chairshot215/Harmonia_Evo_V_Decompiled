.class final enum Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;
.super Ljava/lang/Enum;
.source "DrmImportEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discretix/drm/api/DrmImportEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrmImportState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

.field public static final enum DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

.field public static final enum INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

.field public static final enum POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

.field public static final enum PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const-string v1, "PRE_PROCESS"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const-string v1, "POST_PROCESS"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->$VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->$VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    return-object v0
.end method
