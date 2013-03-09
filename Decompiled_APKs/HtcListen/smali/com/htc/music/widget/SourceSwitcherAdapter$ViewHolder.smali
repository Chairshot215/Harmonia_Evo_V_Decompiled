.class Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SourceSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Lcom/htc/widget/HtcListItemColorIcon;

.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->image:Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/SourceSwitcherAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V

    return-void
.end method
