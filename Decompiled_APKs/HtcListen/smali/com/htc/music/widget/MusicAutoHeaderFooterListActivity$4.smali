.class Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startOnlineSearchPage()V

    return-void
.end method
