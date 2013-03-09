.class public final enum Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
.super Ljava/lang/Enum;
.source "CreditCardValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

.field public static final enum CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

.field public static final enum EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

.field public static final enum EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

.field public static final enum NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    const-string v1, "CVC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    const-string v1, "EXP_MONTH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    const-string v1, "EXP_YEAR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    return-object v0
.end method
