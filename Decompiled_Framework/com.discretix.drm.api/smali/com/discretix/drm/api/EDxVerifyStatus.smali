.class public final enum Lcom/discretix/drm/api/EDxVerifyStatus;
.super Ljava/lang/Enum;
.source "EDxVerifyStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxVerifyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_CLOCK_NOT_SET:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_DELETE_FILE_SELECTED:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_INSTANT_PREVIEW:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_METERING_CONSENT_REQUIRED:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

.field public static final enum DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_VALID_RIGHTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_NO_RIGHTS"

    invoke-direct {v0, v1, v4, v5}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_RIGHTS_PENDING"

    invoke-direct {v0, v1, v5, v6}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_CLOCK_NOT_SET"

    invoke-direct {v0, v1, v6, v7}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_CLOCK_NOT_SET:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_DOMAIN_CONTEXT_IS_MISSING"

    invoke-direct {v0, v1, v7, v8}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_METERING_CONSENT_REQUIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_METERING_CONSENT_REQUIRED:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_DELETE_FILE_SELECTED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DELETE_FILE_SELECTED:Lcom/discretix/drm/api/EDxVerifyStatus;

    new-instance v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    const-string v1, "DX_STATUS_INSTANT_PREVIEW"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/discretix/drm/api/EDxVerifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_INSTANT_PREVIEW:Lcom/discretix/drm/api/EDxVerifyStatus;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/discretix/drm/api/EDxVerifyStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_CLOCK_NOT_SET:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_METERING_CONSENT_REQUIRED:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DELETE_FILE_SELECTED:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_INSTANT_PREVIEW:Lcom/discretix/drm/api/EDxVerifyStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->$VALUES:[Lcom/discretix/drm/api/EDxVerifyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/discretix/drm/api/EDxVerifyStatus;->mValue:I

    return-void
.end method

.method private getValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxVerifyStatus;->mValue:I

    return v0
.end method

.method public static getValue(Lcom/discretix/drm/api/EDxVerifyStatus;)I
    .locals 1

    invoke-direct {p0}, Lcom/discretix/drm/api/EDxVerifyStatus;->getValue()I

    move-result v0

    return v0
.end method

.method public static intToEnum(I)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_CLOCK_NOT_SET:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_METERING_CONSENT_REQUIRED:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_DELETE_FILE_SELECTED:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_INSTANT_PREVIEW:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxVerifyStatus;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxVerifyStatus;->$VALUES:[Lcom/discretix/drm/api/EDxVerifyStatus;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxVerifyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxVerifyStatus;

    return-object v0
.end method
