.class Lcom/htc/music/HtcMusic$12;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/StoreSwitcherAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/StoreSwitcherAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic$12;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1900(Lcom/htc/music/HtcMusic;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/widget/AdapterView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarImage;->show()V

    goto :goto_0
.end method
