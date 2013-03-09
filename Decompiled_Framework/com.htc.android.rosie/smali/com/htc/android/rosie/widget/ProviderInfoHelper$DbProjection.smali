.class public final enum Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;
.super Ljava/lang/Enum;
.source "ProviderInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/ProviderInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DbProjection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

.field public static final enum INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

.field public static final enum STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;


# instance fields
.field public final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    const-string v1, "INFO"

    invoke-static {}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    new-instance v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    const-string v1, "STYLE"

    invoke-static {}, Lcom/htc/android/rosie/widget/ProviderInfoHelper;->access$100()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->INFO:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->STYLE:Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->$VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->strings:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->$VALUES:[Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/widget/ProviderInfoHelper$DbProjection;

    return-object v0
.end method
