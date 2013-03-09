.class final enum Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;
.super Ljava/lang/Enum;
.source "HtcMediaFormatConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConfirmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

.field public static final enum CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

.field public static final enum NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

.field public static final enum ON_BACK_KEY_UP:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    const-string v1, "CONFIRMED"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 56
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    const-string v1, "ON_BACK_KEY_UP"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->ON_BACK_KEY_UP:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 59
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    const-string v1, "NOT_YET"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    sget-object v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->ON_BACK_KEY_UP:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->$VALUES:[Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->$VALUES:[Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    return-object v0
.end method
