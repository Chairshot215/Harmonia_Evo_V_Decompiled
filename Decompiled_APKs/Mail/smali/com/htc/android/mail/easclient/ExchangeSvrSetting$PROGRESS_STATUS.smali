.class final enum Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
.super Ljava/lang/Enum;
.source "ExchangeSvrSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PROGRESS_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

.field public static final enum AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

.field public static final enum CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

.field public static final enum SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    const-string v1, "AUTO_DISCOVER"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 177
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    const-string v1, "CREATE_FULL_SETTING"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 178
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->$VALUES:[Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 175
    const-class v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->$VALUES:[Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    invoke-virtual {v0}, [Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    return-object v0
.end method
