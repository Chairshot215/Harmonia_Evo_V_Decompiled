.class final enum Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;
.super Ljava/lang/Enum;
.source "CreateCreditCardFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

.field public static final enum DONE:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

.field public static final enum ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

.field public static final enum SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

.field public static final enum SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 77
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    const-string v1, "SHOWING_FORM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 81
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    const-string v1, "ESCROWING_CREDENTIALS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 86
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    const-string v1, "SENDING_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 88
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->DONE:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->DONE:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;
    .locals 1
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    return-object v0
.end method
