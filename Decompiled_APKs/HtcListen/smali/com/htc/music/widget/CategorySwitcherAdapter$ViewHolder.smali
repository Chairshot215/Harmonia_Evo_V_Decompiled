.class Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/CategorySwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/widget/CategorySwitcherAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/CategorySwitcherAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->this$0:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    return-void
.end method
