.class final enum Lcom/htc/launcher/Launcher$AppTabType;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AppTabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/launcher/Launcher$AppTabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/launcher/Launcher$AppTabType;

.field public static final enum allApp:Lcom/htc/launcher/Launcher$AppTabType;

.field public static final enum downloaded:Lcom/htc/launcher/Launcher$AppTabType;

.field public static final enum frequent:Lcom/htc/launcher/Launcher$AppTabType;

.field public static final enum unknown:Lcom/htc/launcher/Launcher$AppTabType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    new-instance v0, Lcom/htc/launcher/Launcher$AppTabType;

    const-string v1, "allApp"

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/Launcher$AppTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    new-instance v0, Lcom/htc/launcher/Launcher$AppTabType;

    const-string v1, "frequent"

    invoke-direct {v0, v1, v3}, Lcom/htc/launcher/Launcher$AppTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/Launcher$AppTabType;->frequent:Lcom/htc/launcher/Launcher$AppTabType;

    new-instance v0, Lcom/htc/launcher/Launcher$AppTabType;

    const-string v1, "downloaded"

    invoke-direct {v0, v1, v4}, Lcom/htc/launcher/Launcher$AppTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/Launcher$AppTabType;->downloaded:Lcom/htc/launcher/Launcher$AppTabType;

    new-instance v0, Lcom/htc/launcher/Launcher$AppTabType;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v5}, Lcom/htc/launcher/Launcher$AppTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/Launcher$AppTabType;->unknown:Lcom/htc/launcher/Launcher$AppTabType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/launcher/Launcher$AppTabType;

    sget-object v1, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/launcher/Launcher$AppTabType;->frequent:Lcom/htc/launcher/Launcher$AppTabType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/launcher/Launcher$AppTabType;->downloaded:Lcom/htc/launcher/Launcher$AppTabType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/launcher/Launcher$AppTabType;->unknown:Lcom/htc/launcher/Launcher$AppTabType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/launcher/Launcher$AppTabType;->$VALUES:[Lcom/htc/launcher/Launcher$AppTabType;

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
    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/launcher/Launcher$AppTabType;
    .locals 1
    .parameter "name"

    .prologue
    .line 433
    const-class v0, Lcom/htc/launcher/Launcher$AppTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher$AppTabType;

    return-object v0
.end method

.method public static values()[Lcom/htc/launcher/Launcher$AppTabType;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/htc/launcher/Launcher$AppTabType;->$VALUES:[Lcom/htc/launcher/Launcher$AppTabType;

    invoke-virtual {v0}, [Lcom/htc/launcher/Launcher$AppTabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/launcher/Launcher$AppTabType;

    return-object v0
.end method
