.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WAccountGenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

.field public static final enum Female:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

.field public static final enum Male:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

.field public static final enum Unspecified:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    const-string v1, "Unspecified"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Unspecified:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    .line 23
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    const-string v1, "Male"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Male:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    .line 24
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    const-string v1, "Female"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Female:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Unspecified:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Male:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->Female:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountGenderType;

    return-object v0
.end method
