.class public final enum Lcom/htc/sdcardwizard/CategoryItem$Storage;
.super Ljava/lang/Enum;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/CategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdcardwizard/CategoryItem$Storage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdcardwizard/CategoryItem$Storage;

.field public static final enum BOTH_STORAGES:Lcom/htc/sdcardwizard/CategoryItem$Storage;

.field public static final enum CARD_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

.field public static final enum EXTERNAL_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/CategoryItem$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->EXTERNAL_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    new-instance v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;

    const-string v1, "CARD_STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdcardwizard/CategoryItem$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->CARD_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    new-instance v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;

    const-string v1, "BOTH_STORAGES"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdcardwizard/CategoryItem$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->BOTH_STORAGES:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sdcardwizard/CategoryItem$Storage;

    sget-object v1, Lcom/htc/sdcardwizard/CategoryItem$Storage;->EXTERNAL_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sdcardwizard/CategoryItem$Storage;->CARD_STORAGE:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdcardwizard/CategoryItem$Storage;->BOTH_STORAGES:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->$VALUES:[Lcom/htc/sdcardwizard/CategoryItem$Storage;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdcardwizard/CategoryItem$Storage;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdcardwizard/CategoryItem$Storage;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->$VALUES:[Lcom/htc/sdcardwizard/CategoryItem$Storage;

    invoke-virtual {v0}, [Lcom/htc/sdcardwizard/CategoryItem$Storage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdcardwizard/CategoryItem$Storage;

    return-object v0
.end method
