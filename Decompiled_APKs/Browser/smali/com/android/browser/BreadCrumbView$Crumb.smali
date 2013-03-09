.class Lcom/android/browser/BreadCrumbView$Crumb;
.super Ljava/lang/Object;
.source "BreadCrumbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BreadCrumbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Crumb"
.end annotation


# instance fields
.field public canGoBack:Z

.field public crumbView:Landroid/view/View;

.field public data:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/browser/BreadCrumbView;


# direct methods
.method public constructor <init>(Lcom/android/browser/BreadCrumbView;Landroid/view/View;ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "backEnabled"
    .parameter "tag"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/BreadCrumbView$Crumb;->init(Landroid/view/View;ZLjava/lang/Object;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BreadCrumbView;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "backEnabled"
    .parameter "tag"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-direct {p0, p2}, Lcom/android/browser/BreadCrumbView$Crumb;->makeCrumbView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/browser/BreadCrumbView$Crumb;->init(Landroid/view/View;ZLjava/lang/Object;)V

    .line 351
    return-void
.end method

.method private init(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 0
    .parameter "view"
    .parameter "back"
    .parameter "tag"

    .prologue
    .line 358
    iput-boolean p2, p0, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    .line 359
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    .line 360
    iput-object p3, p0, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    .line 361
    return-void
.end method

.method private makeCrumbView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 364
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    #getter for: Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$000(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    #getter for: Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$000(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 366
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    #getter for: Lcom/android/browser/BreadCrumbView;->mCrumbPadding:I
    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$100(Lcom/android/browser/BreadCrumbView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    #getter for: Lcom/android/browser/BreadCrumbView;->mCrumbPadding:I
    invoke-static {v2}, Lcom/android/browser/BreadCrumbView;->access$100(Lcom/android/browser/BreadCrumbView;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 367
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 372
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 373
    return-object v0
.end method
