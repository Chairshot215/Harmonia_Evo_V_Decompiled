.class public final enum Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;
.super Ljava/lang/Enum;
.source "AddCreditCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

.field public static final enum CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

.field public static final enum FAILURE:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

.field public static final enum SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 578
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    .line 580
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    .line 582
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    .line 576
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

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
    .line 576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;
    .locals 1
    .parameter

    .prologue
    .line 576
    const-class v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    return-object v0
.end method
