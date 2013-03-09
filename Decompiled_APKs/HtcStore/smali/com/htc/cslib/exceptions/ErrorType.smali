.class public final enum Lcom/htc/cslib/exceptions/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cslib/exceptions/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cslib/exceptions/ErrorType;

.field public static final enum Sense30:Lcom/htc/cslib/exceptions/ErrorType;

.field public static final enum Sense35:Lcom/htc/cslib/exceptions/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/htc/cslib/exceptions/ErrorType;

    const-string v1, "Sense30"

    invoke-direct {v0, v1, v2}, Lcom/htc/cslib/exceptions/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorType;->Sense30:Lcom/htc/cslib/exceptions/ErrorType;

    new-instance v0, Lcom/htc/cslib/exceptions/ErrorType;

    const-string v1, "Sense35"

    invoke-direct {v0, v1, v3}, Lcom/htc/cslib/exceptions/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/cslib/exceptions/ErrorType;

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorType;->Sense30:Lcom/htc/cslib/exceptions/ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cslib/exceptions/ErrorType;->$VALUES:[Lcom/htc/cslib/exceptions/ErrorType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cslib/exceptions/ErrorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/htc/cslib/exceptions/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cslib/exceptions/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cslib/exceptions/ErrorType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/cslib/exceptions/ErrorType;->$VALUES:[Lcom/htc/cslib/exceptions/ErrorType;

    invoke-virtual {v0}, [Lcom/htc/cslib/exceptions/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cslib/exceptions/ErrorType;

    return-object v0
.end method
