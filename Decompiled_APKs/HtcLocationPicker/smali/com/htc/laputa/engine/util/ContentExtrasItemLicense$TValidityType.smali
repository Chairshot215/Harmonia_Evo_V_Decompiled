.class public final enum Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;
.super Ljava/lang/Enum;
.source "ContentExtrasItemLicense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentExtrasItemLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TValidityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

.field public static final enum EDays:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

.field public static final enum EInfinite:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

.field public static final enum EMonths:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

.field public static final enum EYears:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    const-string v1, "EInfinite"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EInfinite:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    .line 20
    new-instance v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    const-string v1, "EDays"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EDays:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    .line 21
    new-instance v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    const-string v1, "EMonths"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EMonths:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    .line 22
    new-instance v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    const-string v1, "EYears"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EYears:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EInfinite:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EDays:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EMonths:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->EYears:Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/ContentExtrasItemLicense$TValidityType;

    return-object v0
.end method
