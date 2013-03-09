.class public final enum Landroid/provider/DrmHelper$DrmStatus;
.super Ljava/lang/Enum;
.source "DrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/DrmHelper$DrmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum CONSTRAINT_EXPIRED:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum FILE_NOT_EXIST:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum GENERAL_FAILURE:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum INITIAL:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum INVALID_CONTENT:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum INVALID_INPUT:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum MIMETYPE_NOT_SUPPORT:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum NO_RIGHTS_INSTALLED:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum NO_RIGHT_ISSUER:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

.field public static final enum UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->INITIAL:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "GENERAL_FAILURE"

    invoke-direct {v0, v1, v5}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->GENERAL_FAILURE:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "INVALID_INPUT"

    invoke-direct {v0, v1, v6}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->INVALID_INPUT:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "INVALID_CONTENT"

    invoke-direct {v0, v1, v7}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->INVALID_CONTENT:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "NO_RECORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "FILE_NOT_EXIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->FILE_NOT_EXIST:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "CONSTRAINT_EXPIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->CONSTRAINT_EXPIRED:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "NO_RIGHTS_INSTALLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHTS_INSTALLED:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "NO_RIGHT_ISSUER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHT_ISSUER:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "MIMETYPE_NOT_SUPPORT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->MIMETYPE_NOT_SUPPORT:Landroid/provider/DrmHelper$DrmStatus;

    new-instance v0, Landroid/provider/DrmHelper$DrmStatus;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/provider/DrmHelper$DrmStatus;

    sget-object v1, Landroid/provider/DrmHelper$DrmStatus;->INITIAL:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/DrmHelper$DrmStatus;->GENERAL_FAILURE:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/DrmHelper$DrmStatus;->INVALID_INPUT:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v1, v0, v6

    sget-object v1, Landroid/provider/DrmHelper$DrmStatus;->INVALID_CONTENT:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->FILE_NOT_EXIST:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->CONSTRAINT_EXPIRED:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHTS_INSTALLED:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHT_ISSUER:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->MIMETYPE_NOT_SUPPORT:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmHelper$DrmStatus;->$VALUES:[Landroid/provider/DrmHelper$DrmStatus;

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

.method public static valueOf(Ljava/lang/String;)Landroid/provider/DrmHelper$DrmStatus;
    .locals 1

    const-class v0, Landroid/provider/DrmHelper$DrmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/DrmHelper$DrmStatus;

    return-object v0
.end method

.method public static values()[Landroid/provider/DrmHelper$DrmStatus;
    .locals 1

    sget-object v0, Landroid/provider/DrmHelper$DrmStatus;->$VALUES:[Landroid/provider/DrmHelper$DrmStatus;

    invoke-virtual {v0}, [Landroid/provider/DrmHelper$DrmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/DrmHelper$DrmStatus;

    return-object v0
.end method
