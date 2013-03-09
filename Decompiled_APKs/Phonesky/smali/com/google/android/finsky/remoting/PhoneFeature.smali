.class public final enum Lcom/google/android/finsky/remoting/PhoneFeature;
.super Ljava/lang/Enum;
.source "PhoneFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/remoting/PhoneFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/remoting/PhoneFeature;

.field public static final enum ENABLE_DUN:Lcom/google/android/finsky/remoting/PhoneFeature;

.field public static final enum ENABLE_HIPRI:Lcom/google/android/finsky/remoting/PhoneFeature;

.field public static final enum ENABLE_MMS:Lcom/google/android/finsky/remoting/PhoneFeature;

.field public static final enum ENABLE_SUPL:Lcom/google/android/finsky/remoting/PhoneFeature;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    const-string v1, "ENABLE_HIPRI"

    const-string v2, "enableHIPRI"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/finsky/remoting/PhoneFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_HIPRI:Lcom/google/android/finsky/remoting/PhoneFeature;

    .line 15
    new-instance v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    const-string v1, "ENABLE_MMS"

    const-string v2, "enableMMS"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/remoting/PhoneFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_MMS:Lcom/google/android/finsky/remoting/PhoneFeature;

    .line 16
    new-instance v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    const-string v1, "ENABLE_SUPL"

    const-string v2, "enableSUPL"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/remoting/PhoneFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_SUPL:Lcom/google/android/finsky/remoting/PhoneFeature;

    .line 17
    new-instance v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    const-string v1, "ENABLE_DUN"

    const-string v2, "enableDUN"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/remoting/PhoneFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_DUN:Lcom/google/android/finsky/remoting/PhoneFeature;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/remoting/PhoneFeature;

    sget-object v1, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_HIPRI:Lcom/google/android/finsky/remoting/PhoneFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_MMS:Lcom/google/android/finsky/remoting/PhoneFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_SUPL:Lcom/google/android/finsky/remoting/PhoneFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_DUN:Lcom/google/android/finsky/remoting/PhoneFeature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->$VALUES:[Lcom/google/android/finsky/remoting/PhoneFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/android/finsky/remoting/PhoneFeature;->mValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/remoting/PhoneFeature;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/PhoneFeature;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/remoting/PhoneFeature;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/finsky/remoting/PhoneFeature;->$VALUES:[Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v0}, [Lcom/google/android/finsky/remoting/PhoneFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/remoting/PhoneFeature;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/remoting/PhoneFeature;->mValue:Ljava/lang/String;

    return-object v0
.end method
