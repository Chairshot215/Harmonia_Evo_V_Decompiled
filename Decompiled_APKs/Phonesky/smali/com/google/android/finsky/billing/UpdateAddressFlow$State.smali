.class final enum Lcom/google/android/finsky/billing/UpdateAddressFlow$State;
.super Ljava/lang/Enum;
.source "UpdateAddressFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/UpdateAddressFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/UpdateAddressFlow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field public static final enum DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field public static final enum SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field public static final enum SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 59
    new-instance v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    const-string v1, "SHOWING_FORM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 64
    new-instance v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    const-string v1, "SENDING_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 66
    new-instance v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFlow$State;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/UpdateAddressFlow$State;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    return-object v0
.end method
