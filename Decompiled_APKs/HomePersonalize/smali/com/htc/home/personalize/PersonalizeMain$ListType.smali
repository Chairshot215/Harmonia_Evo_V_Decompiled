.class public final enum Lcom/htc/home/personalize/PersonalizeMain$ListType;
.super Ljava/lang/Enum;
.source "PersonalizeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/PersonalizeMain$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/PersonalizeMain$ListType;

.field public static final enum LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

.field public static final enum LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;

    const-string v1, "LIST_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/PersonalizeMain$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    new-instance v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;

    const-string v1, "LIST_WIDGET"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/PersonalizeMain$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/home/personalize/PersonalizeMain$ListType;

    sget-object v1, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;->$VALUES:[Lcom/htc/home/personalize/PersonalizeMain$ListType;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/PersonalizeMain$ListType;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/PersonalizeMain$ListType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;->$VALUES:[Lcom/htc/home/personalize/PersonalizeMain$ListType;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/PersonalizeMain$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/PersonalizeMain$ListType;

    return-object v0
.end method
