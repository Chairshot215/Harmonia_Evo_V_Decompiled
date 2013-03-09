.class public final enum Lcom/discretix/drm/api/DrmImportThread$ImportPhase;
.super Ljava/lang/Enum;
.source "DrmImportThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discretix/drm/api/DrmImportThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImportPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/DrmImportThread$ImportPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum FINISH:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum HANDLE_RESULT:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum HTTP_AUTENTICATION:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum START:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum USER_RESPONSE_DELETE:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum USER_RESPONSE_NO:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum USER_RESPONSE_OK:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field public static final enum USER_RESPONSE_YES:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->START:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->FINISH:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "HANDLE_RESULT"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->HANDLE_RESULT:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "HTTP_AUTENTICATION"

    invoke-direct {v0, v1, v6}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->HTTP_AUTENTICATION:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "USER_RESPONSE_CANCEL"

    invoke-direct {v0, v1, v7}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "USER_RESPONSE_YES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_YES:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "USER_RESPONSE_OK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_OK:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "USER_RESPONSE_NO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_NO:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    new-instance v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const-string v1, "USER_RESPONSE_DELETE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_DELETE:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    sget-object v1, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->START:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->FINISH:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->HANDLE_RESULT:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->HTTP_AUTENTICATION:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_YES:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_OK:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_NO:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->USER_RESPONSE_DELETE:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->$VALUES:[Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/DrmImportThread$ImportPhase;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/DrmImportThread$ImportPhase;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->$VALUES:[Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    return-object v0
.end method
