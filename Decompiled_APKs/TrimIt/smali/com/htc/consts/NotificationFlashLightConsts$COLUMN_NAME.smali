.class public final enum Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
.super Ljava/lang/Enum;
.source "NotificationFlashLightConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/consts/NotificationFlashLightConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLUMN_NAME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum alarm:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum email:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum incoming_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum miss_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum reminder:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum sms:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

.field public static final enum voice_mail:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "incoming_call"

    invoke-direct {v0, v1, v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->incoming_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "miss_call"

    invoke-direct {v0, v1, v4}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->miss_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "sms"

    invoke-direct {v0, v1, v5}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->sms:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "email"

    invoke-direct {v0, v1, v6}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->email:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "voice_mail"

    invoke-direct {v0, v1, v7}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->voice_mail:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "reminder"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->reminder:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    new-instance v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    const-string v1, "alarm"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->alarm:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->incoming_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->miss_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->sms:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->email:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->voice_mail:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->reminder:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->alarm:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->$VALUES:[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    return-object v0
.end method

.method public static values()[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->$VALUES:[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v0}, [Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    return-object v0
.end method
