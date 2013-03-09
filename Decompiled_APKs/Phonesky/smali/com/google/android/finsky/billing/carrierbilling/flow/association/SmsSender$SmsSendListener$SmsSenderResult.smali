.class public final enum Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;
.super Ljava/lang/Enum;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmsSenderResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

.field public static final enum RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

.field public static final enum RESULT_OK:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_OK:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    .line 31
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    const-string v1, "RESULT_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_OK:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    return-object v0
.end method
