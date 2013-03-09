.class Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SharedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field id:I

.field image:Landroid/widget/ImageView;

.field listItemImage:Lcom/htc/widget/HtcListItemImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->this$0:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;->id:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$ViewHolder;-><init>(Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    return-void
.end method
