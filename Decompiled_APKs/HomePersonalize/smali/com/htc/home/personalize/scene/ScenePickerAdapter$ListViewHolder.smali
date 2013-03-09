.class Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;
.super Lcom/htc/home/personalize/widget/HtcSimpleSeparable;
.source "ScenePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewHolder"
.end annotation


# instance fields
.field private mCheckedTextView:Landroid/widget/CheckedTextView;

.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    .line 433
    invoke-direct {p0, p2}, Lcom/htc/home/personalize/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    .line 429
    invoke-direct {p0, p2, p3}, Lcom/htc/home/personalize/widget/HtcSimpleSeparable;-><init>(Ljava/lang/String;Z)V

    .line 430
    return-void
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$ListViewHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    return-object p1
.end method
