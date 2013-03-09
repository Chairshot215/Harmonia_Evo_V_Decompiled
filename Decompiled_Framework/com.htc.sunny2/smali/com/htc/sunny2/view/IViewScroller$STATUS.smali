.class public final enum Lcom/htc/sunny2/view/IViewScroller$STATUS;
.super Ljava/lang/Enum;
.source "IViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/IViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/view/IViewScroller$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field public static final enum FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field public static final enum PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field public static final enum STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/IViewScroller$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    new-instance v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;

    const-string v1, "PANNING"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/view/IViewScroller$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    new-instance v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;

    const-string v1, "FLINGING"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/view/IViewScroller$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->$VALUES:[Lcom/htc/sunny2/view/IViewScroller$STATUS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    const-class v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->$VALUES:[Lcom/htc/sunny2/view/IViewScroller$STATUS;

    invoke-virtual {v0}, [Lcom/htc/sunny2/view/IViewScroller$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method
