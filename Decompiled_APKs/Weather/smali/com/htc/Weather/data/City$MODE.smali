.class public final enum Lcom/htc/Weather/data/City$MODE;
.super Ljava/lang/Enum;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/data/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/Weather/data/City$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/Weather/data/City$MODE;

.field public static final enum DayLight:Lcom/htc/Weather/data/City$MODE;

.field public static final enum Night:Lcom/htc/Weather/data/City$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/htc/Weather/data/City$MODE;

    const-string v1, "DayLight"

    invoke-direct {v0, v1, v2}, Lcom/htc/Weather/data/City$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/data/City$MODE;->DayLight:Lcom/htc/Weather/data/City$MODE;

    .line 38
    new-instance v0, Lcom/htc/Weather/data/City$MODE;

    const-string v1, "Night"

    invoke-direct {v0, v1, v3}, Lcom/htc/Weather/data/City$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/data/City$MODE;->Night:Lcom/htc/Weather/data/City$MODE;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/Weather/data/City$MODE;

    sget-object v1, Lcom/htc/Weather/data/City$MODE;->DayLight:Lcom/htc/Weather/data/City$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/Weather/data/City$MODE;->Night:Lcom/htc/Weather/data/City$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/Weather/data/City$MODE;->$VALUES:[Lcom/htc/Weather/data/City$MODE;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/Weather/data/City$MODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/htc/Weather/data/City$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/data/City$MODE;

    return-object v0
.end method

.method public static values()[Lcom/htc/Weather/data/City$MODE;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/Weather/data/City$MODE;->$VALUES:[Lcom/htc/Weather/data/City$MODE;

    invoke-virtual {v0}, [Lcom/htc/Weather/data/City$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/Weather/data/City$MODE;

    return-object v0
.end method
