.class final enum Lcom/google/android/gm/provider/MailEngine$ClientCreated;
.super Ljava/lang/Enum;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClientCreated"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/MailEngine$ClientCreated;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;

.field public static final enum CLIENT_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

.field public static final enum SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    const-string v1, "SERVER_CREATED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    .line 114
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    const-string v1, "CLIENT_CREATED"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->CLIENT_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    sget-object v1, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->CLIENT_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->$VALUES:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    .line 120
    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/gm/provider/MailEngine$ClientCreated;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    .locals 1
    .parameter "name"

    .prologue
    .line 112
    const-class v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->$VALUES:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    return v0
.end method
