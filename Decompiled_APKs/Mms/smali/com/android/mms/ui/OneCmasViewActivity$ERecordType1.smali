.class final enum Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;
.super Ljava/lang/Enum;
.source "OneCmasViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/OneCmasViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ERecordType1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

.field public static final enum CMAE_CATEGORY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

.field public static final enum CMAE_CERTAINTY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

.field public static final enum CMAE_RESPONSE_TYPE:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

.field public static final enum CMAE_SEVERITY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

.field public static final enum CMAE_URGENCY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    new-instance v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    const-string v1, "CMAE_CATEGORY"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CATEGORY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    .line 432
    new-instance v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    const-string v1, "CMAE_RESPONSE_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_RESPONSE_TYPE:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    .line 433
    new-instance v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    const-string v1, "CMAE_SEVERITY"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_SEVERITY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    .line 434
    new-instance v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    const-string v1, "CMAE_URGENCY"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_URGENCY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    .line 435
    new-instance v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    const-string v1, "CMAE_CERTAINTY"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CERTAINTY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    .line 430
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CATEGORY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_RESPONSE_TYPE:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_SEVERITY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_URGENCY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CERTAINTY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->$VALUES:[Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

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
    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;
    .locals 1
    .parameter "name"

    .prologue
    .line 430
    const-class v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->$VALUES:[Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v0}, [Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    return-object v0
.end method
