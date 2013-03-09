.class public final enum Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;
.super Ljava/lang/Enum;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PRESENTATION_ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

.field public static final enum ILANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

.field public static final enum IPORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

.field public static final enum LANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

.field public static final enum PORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

.field public static final enum UNDEFINED:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->UNDEFINED:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    .line 124
    new-instance v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->PORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    .line 125
    new-instance v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    const-string v1, "IPORTRAIT"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->IPORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    .line 126
    new-instance v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v5}, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->LANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    .line 127
    new-instance v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    const-string v1, "ILANDSCAPE"

    invoke-direct {v0, v1, v6}, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->ILANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    sget-object v1, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->UNDEFINED:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->PORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->IPORTRAIT:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->LANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->ILANDSCAPE:Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->$VALUES:[Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

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
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;
    .locals 1
    .parameter "name"

    .prologue
    .line 122
    const-class v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->$VALUES:[Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    invoke-virtual {v0}, [Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;

    return-object v0
.end method
