.class public final enum Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
.super Ljava/lang/Enum;
.source "ParseMvnoMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/ParseMvnoMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum MATCH_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum NO_MATCH_GID:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum NO_MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum NULL_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

.field public static final enum PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "PARSE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 54
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "NO_MATCH_MCCMNC"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 55
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "NO_MATCH_GID"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 56
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "MATCH_GID_MENU_N"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 57
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "MATCH_GID_MENU_Y"

    invoke-direct {v0, v1, v7}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 58
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "NO_MATCH_GID_MENU_Y"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 59
    new-instance v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    const-string v1, "NULL_GID_MENU_N"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NULL_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    sget-object v1, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_MCCMNC:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NO_MATCH_GID_MENU_Y:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->NULL_GID_MENU_N:Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->$VALUES:[Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->$VALUES:[Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    invoke-virtual {v0}, [Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcsetupwizard/ParseMvnoMap$ParseCase;

    return-object v0
.end method
