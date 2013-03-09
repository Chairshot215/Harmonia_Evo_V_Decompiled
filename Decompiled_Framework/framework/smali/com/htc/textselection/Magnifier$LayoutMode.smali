.class public final enum Lcom/htc/textselection/Magnifier$LayoutMode;
.super Ljava/lang/Enum;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/textselection/Magnifier$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/textselection/Magnifier$LayoutMode;

.field public static final enum FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

.field public static final enum FULLSCREEN:Lcom/htc/textselection/Magnifier$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/textselection/Magnifier$LayoutMode;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v2}, Lcom/htc/textselection/Magnifier$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/Magnifier$LayoutMode;->FULLSCREEN:Lcom/htc/textselection/Magnifier$LayoutMode;

    new-instance v0, Lcom/htc/textselection/Magnifier$LayoutMode;

    const-string v1, "FILLWIDTH"

    invoke-direct {v0, v1, v3}, Lcom/htc/textselection/Magnifier$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/Magnifier$LayoutMode;->FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/textselection/Magnifier$LayoutMode;

    sget-object v1, Lcom/htc/textselection/Magnifier$LayoutMode;->FULLSCREEN:Lcom/htc/textselection/Magnifier$LayoutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/textselection/Magnifier$LayoutMode;->FILLWIDTH:Lcom/htc/textselection/Magnifier$LayoutMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/textselection/Magnifier$LayoutMode;->$VALUES:[Lcom/htc/textselection/Magnifier$LayoutMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/textselection/Magnifier$LayoutMode;
    .locals 1

    const-class v0, Lcom/htc/textselection/Magnifier$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Magnifier$LayoutMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/textselection/Magnifier$LayoutMode;
    .locals 1

    sget-object v0, Lcom/htc/textselection/Magnifier$LayoutMode;->$VALUES:[Lcom/htc/textselection/Magnifier$LayoutMode;

    invoke-virtual {v0}, [Lcom/htc/textselection/Magnifier$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/textselection/Magnifier$LayoutMode;

    return-object v0
.end method
