.class public final enum Lcom/htc/launcher/DragSource$DragCompletedAction;
.super Ljava/lang/Enum;
.source "DragSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DragSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragCompletedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/launcher/DragSource$DragCompletedAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/launcher/DragSource$DragCompletedAction;

.field public static final enum DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field public static final enum FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field public static final enum NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field public static final enum REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field public static final enum SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/DragSource$DragCompletedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    new-instance v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/htc/launcher/DragSource$DragCompletedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    new-instance v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v4}, Lcom/htc/launcher/DragSource$DragCompletedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;

    new-instance v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    const-string v1, "DROP_ON_BUTTONBAR"

    invoke-direct {v0, v1, v5}, Lcom/htc/launcher/DragSource$DragCompletedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    new-instance v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    const-string v1, "FOLDERICON"

    invoke-direct {v0, v1, v6}, Lcom/htc/launcher/DragSource$DragCompletedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/launcher/DragSource$DragCompletedAction;

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->$VALUES:[Lcom/htc/launcher/DragSource$DragCompletedAction;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method

.method public static values()[Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->$VALUES:[Lcom/htc/launcher/DragSource$DragCompletedAction;

    invoke-virtual {v0}, [Lcom/htc/launcher/DragSource$DragCompletedAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method
