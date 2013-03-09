.class final enum Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;
.super Ljava/lang/Enum;
.source "DrmImportEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discretix/drm/api/DrmImportEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrmImportSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

.field public static final enum BUFFER:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

.field public static final enum FILE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

.field public static final enum NONE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

.field public static final enum URL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->NONE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->URL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->FILE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    new-instance v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->BUFFER:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->NONE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->URL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->FILE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->BUFFER:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->$VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->$VALUES:[Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    return-object v0
.end method
