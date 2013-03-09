.class Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Lcom/htc/widget/CarouselHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStategy"
.end annotation


# instance fields
.field private final mIconReource:Landroid/content/Intent$ShortcutIconResource;

.field private mLabelResource:Landroid/content/Intent$ShortcutIconResource;

.field private final mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

.field private final mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "overlay"
    .parameter "tag"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mTag:Ljava/lang/String;

    .line 839
    iput-object p6, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mTag:Ljava/lang/String;

    .line 840
    iput-object p3, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    .line 841
    iput-object p4, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 842
    iput-object p5, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    .line 843
    iput-object p2, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    .line 844
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 831
    invoke-direct/range {p0 .. p6}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LabelAndIconIndicatorStategy[mLabelResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIconReource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSelectedIconResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOverylayResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
