.class final enum Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

.field public static final enum None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v1, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->$VALUES:[Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

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
    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 622
    const-class v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->$VALUES:[Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    return-object v0
.end method
