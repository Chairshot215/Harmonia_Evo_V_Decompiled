.class Lcom/htc/album/SocialNetwork/ListViewFriends$1;
.super Ljava/lang/Object;
.source "ListViewFriends.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewFriends;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$1;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$1;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriends;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 363
    return-void
.end method
