.class Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;
.super Ljava/lang/Object;
.source "ListViewAdapterComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewAdapterComments;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;->this$0:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;->this$0:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 601
    return-void
.end method
