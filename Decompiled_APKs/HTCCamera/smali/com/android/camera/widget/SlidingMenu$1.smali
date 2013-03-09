.class Lcom/android/camera/widget/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingMenuItem$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenu$1;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighlightedChanged(Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu$1;->this$0:Lcom/android/camera/widget/SlidingMenu;

    #getter for: Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/camera/widget/SlidingMenu;->access$000(Lcom/android/camera/widget/SlidingMenu;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu$1;->this$0:Lcom/android/camera/widget/SlidingMenu;

    #calls: Lcom/android/camera/widget/SlidingMenu;->updateItemViewBackground(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/camera/widget/SlidingMenu;->access$100(Lcom/android/camera/widget/SlidingMenu;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onIDChanged(Lcom/android/camera/widget/SlidingMenuItem;I)V
    .locals 0

    return-void
.end method

.method public onImageChanged(Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu$1;->this$0:Lcom/android/camera/widget/SlidingMenu;

    #getter for: Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/camera/widget/SlidingMenu;->access$000(Lcom/android/camera/widget/SlidingMenu;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/widget/SlidingMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu$1;->this$0:Lcom/android/camera/widget/SlidingMenu;

    #getter for: Lcom/android/camera/widget/SlidingMenu;->m_ItemViews:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/camera/widget/SlidingMenu;->access$000(Lcom/android/camera/widget/SlidingMenu;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/widget/SlidingMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
