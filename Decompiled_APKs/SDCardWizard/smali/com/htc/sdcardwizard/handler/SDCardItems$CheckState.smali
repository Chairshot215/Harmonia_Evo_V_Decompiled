.class public final enum Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
.super Ljava/lang/Enum;
.source "SDCardItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/SDCardItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

.field public static final enum ALL:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

.field public static final enum ANY:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

.field public static final enum NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    const-string v1, "NO_ONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    .line 10
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ANY:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    .line 11
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ALL:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ANY:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ALL:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->$VALUES:[Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->$VALUES:[Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    invoke-virtual {v0}, [Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    return-object v0
.end method
