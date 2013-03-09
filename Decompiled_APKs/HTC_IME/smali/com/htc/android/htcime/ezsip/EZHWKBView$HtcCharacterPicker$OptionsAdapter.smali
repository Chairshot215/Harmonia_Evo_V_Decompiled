.class Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EZHWKBView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    .line 549
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 550
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$100(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$100(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 583
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$000(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x20900c4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 554
    .local v0, b:Landroid/widget/Button;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$100(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$200(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)[Landroid/widget/Button;

    move-result-object v1

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$300(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)I

    move-result v1

    if-gez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #setter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I
    invoke-static {v1, v4}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$302(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;I)I

    .line 561
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$200(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)[Landroid/widget/Button;

    move-result-object v1

    aput-object v0, v1, p1

    .line 562
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$200(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)[Landroid/widget/Button;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$200(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)[Landroid/widget/Button;

    move-result-object v1

    aput-object v0, v1, p1

    .line 568
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    #getter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$400(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;->this$1:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    add-int/lit8 v2, p1, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->access$402(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;I)I

    .line 571
    :cond_2
    return-object v0
.end method
