.class public final enum Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;
.super Ljava/lang/Enum;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DecodeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

.field public static final enum ITERATE:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

.field public static final enum SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    const-string v1, "SETUP"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    const-string v1, "ITERATE"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ITERATE:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ITERATE:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->$VALUES:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->$VALUES:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v0}, [Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    return-object v0
.end method
