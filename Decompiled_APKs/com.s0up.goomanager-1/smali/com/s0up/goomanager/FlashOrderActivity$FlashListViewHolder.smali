.class Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlashListViewHolder"
.end annotation


# instance fields
.field private btnDown:Landroid/widget/ImageButton;

.field private btnUp:Landroid/widget/ImageButton;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter "textView"
    .parameter "btnUp"
    .parameter "btnDown"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->btnUp:Landroid/widget/ImageButton;

    .line 231
    iput-object p3, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->btnDown:Landroid/widget/ImageButton;

    .line 232
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->textView:Landroid/widget/TextView;

    .line 233
    return-void
.end method


# virtual methods
.method public getBtnDown()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->btnDown:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getBtnUp()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->btnUp:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method
