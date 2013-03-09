.class public Lcom/htc/widget/HtcTabHost1$TabSpec;
.super Ljava/lang/Object;
.source "HtcTabHost1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;

.field private mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost1;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p2, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mTag:Ljava/lang/String;

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/String;Lcom/htc/widget/HtcTabHost1$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabHost1$TabSpec;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcTabHost1$TabSpec;)Lcom/htc/widget/HtcTabHost1$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 513
    new-instance v0, Lcom/htc/widget/HtcTabHost1$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/widget/HtcTabHost1$ViewIdContentStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;ILcom/htc/widget/HtcTabHost1$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    .line 514
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 530
    new-instance v0, Lcom/htc/widget/HtcTabHost1$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    iget-object v2, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/widget/HtcTabHost1$IntentContentStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/widget/HtcTabHost1$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    .line 531
    return-object p0
.end method

.method public setContent(Lcom/htc/widget/HtcTabHost1$TabContentFactory;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 522
    new-instance v0, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    iget-object v2, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/widget/HtcTabHost1$FactoryContentStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;Lcom/htc/widget/HtcTabHost1$TabContentFactory;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mContentStrategy:Lcom/htc/widget/HtcTabHost1$ContentStrategy;

    .line 523
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 504
    new-instance v0, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/widget/HtcTabHost1$ViewIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Landroid/view/View;Lcom/htc/widget/HtcTabHost1$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    .line 505
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 488
    new-instance v0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;Lcom/htc/widget/HtcTabHost1$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    .line 489
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcTabHost1$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 496
    new-instance v0, Lcom/htc/widget/HtcTabHost1$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->this$0:Lcom/htc/widget/HtcTabHost1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/widget/HtcTabHost1$LabelAndIconIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/HtcTabHost1$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcTabHost1$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;

    .line 497
    return-object p0
.end method
