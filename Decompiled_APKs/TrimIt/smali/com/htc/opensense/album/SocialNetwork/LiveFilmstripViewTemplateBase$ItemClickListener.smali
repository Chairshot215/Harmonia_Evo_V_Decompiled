.class Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;
.super Ljava/lang/Object;
.source "LiveFilmstripViewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, parent:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemClickListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onItemClicked(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V

    .line 125
    return-void
.end method
