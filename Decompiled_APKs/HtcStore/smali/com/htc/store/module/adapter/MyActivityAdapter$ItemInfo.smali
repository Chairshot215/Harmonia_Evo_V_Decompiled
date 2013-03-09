.class Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "MyActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/adapter/MyActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfo"
.end annotation


# instance fields
.field public content_icon:Lcom/htc/store/module/view/TileImageView;

.field public content_name:Landroid/widget/TextView;

.field public content_type:Landroid/widget/TextView;

.field public status_icon:Landroid/widget/ImageView;

.field public status_text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/htc/store/module/adapter/MyActivityAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/store/module/adapter/MyActivityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;->this$0:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/module/adapter/MyActivityAdapter;Lcom/htc/store/module/adapter/MyActivityAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/htc/store/module/adapter/MyActivityAdapter$ItemInfo;-><init>(Lcom/htc/store/module/adapter/MyActivityAdapter;)V

    return-void
.end method
