.class Landroid/widget/TextView$EasyEditPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900a0


# instance fields
.field private mDeleteTextView:Landroid/widget/TextView;

.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 0

    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$1100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    iget-object v1, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method protected initContentView()V
    .locals 6

    const/4 v5, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x1080595

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v3, 0x10900a0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    const v4, 0x1040396

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$EasyEditPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_0
    return-void
.end method

.method public show(Landroid/text/style/EasyEditSpan;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    return-void
.end method
