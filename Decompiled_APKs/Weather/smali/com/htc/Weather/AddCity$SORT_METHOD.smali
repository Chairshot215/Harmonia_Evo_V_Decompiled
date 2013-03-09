.class public final enum Lcom/htc/Weather/AddCity$SORT_METHOD;
.super Ljava/lang/Enum;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SORT_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/Weather/AddCity$SORT_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/Weather/AddCity$SORT_METHOD;

.field public static final enum CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

.field public static final enum COUNTRY:Lcom/htc/Weather/AddCity$SORT_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/htc/Weather/AddCity$SORT_METHOD;

    const-string v1, "CITY"

    invoke-direct {v0, v1, v2}, Lcom/htc/Weather/AddCity$SORT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/AddCity$SORT_METHOD;->CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    .line 138
    new-instance v0, Lcom/htc/Weather/AddCity$SORT_METHOD;

    const-string v1, "COUNTRY"

    invoke-direct {v0, v1, v3}, Lcom/htc/Weather/AddCity$SORT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/Weather/AddCity$SORT_METHOD;->COUNTRY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/Weather/AddCity$SORT_METHOD;

    sget-object v1, Lcom/htc/Weather/AddCity$SORT_METHOD;->CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/Weather/AddCity$SORT_METHOD;->COUNTRY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/Weather/AddCity$SORT_METHOD;->$VALUES:[Lcom/htc/Weather/AddCity$SORT_METHOD;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/Weather/AddCity$SORT_METHOD;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/htc/Weather/AddCity$SORT_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/AddCity$SORT_METHOD;

    return-object v0
.end method

.method public static values()[Lcom/htc/Weather/AddCity$SORT_METHOD;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/htc/Weather/AddCity$SORT_METHOD;->$VALUES:[Lcom/htc/Weather/AddCity$SORT_METHOD;

    invoke-virtual {v0}, [Lcom/htc/Weather/AddCity$SORT_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/Weather/AddCity$SORT_METHOD;

    return-object v0
.end method
