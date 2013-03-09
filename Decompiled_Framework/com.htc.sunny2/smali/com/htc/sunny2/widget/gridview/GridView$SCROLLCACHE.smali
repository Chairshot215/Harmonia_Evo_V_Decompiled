.class public final enum Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;
.super Ljava/lang/Enum;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCROLLCACHE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

.field public static final enum FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

.field public static final enum HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

.field public static final enum UNKNOWN:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    const-string v1, "FOOTER"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->$VALUES:[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->$VALUES:[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    return-object v0
.end method
