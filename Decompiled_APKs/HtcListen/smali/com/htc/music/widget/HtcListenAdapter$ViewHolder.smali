.class Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HtcListenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcListenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/widget/HtcListenAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/HtcListenAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;->this$0:Lcom/htc/music/widget/HtcListenAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/HtcListenAdapter;Lcom/htc/music/widget/HtcListenAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/widget/HtcListenAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/HtcListenAdapter;)V

    return-void
.end method
