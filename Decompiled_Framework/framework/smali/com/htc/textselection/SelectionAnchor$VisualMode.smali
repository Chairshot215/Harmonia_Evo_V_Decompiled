.class public final enum Lcom/htc/textselection/SelectionAnchor$VisualMode;
.super Ljava/lang/Enum;
.source "SelectionAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/SelectionAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisualMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/textselection/SelectionAnchor$VisualMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/textselection/SelectionAnchor$VisualMode;

.field public static final enum BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

.field public static final enum TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/htc/textselection/SelectionAnchor$VisualMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    new-instance v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/htc/textselection/SelectionAnchor$VisualMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/textselection/SelectionAnchor$VisualMode;

    sget-object v1, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;->$VALUES:[Lcom/htc/textselection/SelectionAnchor$VisualMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/textselection/SelectionAnchor$VisualMode;
    .locals 1

    const-class v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/textselection/SelectionAnchor$VisualMode;
    .locals 1

    sget-object v0, Lcom/htc/textselection/SelectionAnchor$VisualMode;->$VALUES:[Lcom/htc/textselection/SelectionAnchor$VisualMode;

    invoke-virtual {v0}, [Lcom/htc/textselection/SelectionAnchor$VisualMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/textselection/SelectionAnchor$VisualMode;

    return-object v0
.end method
