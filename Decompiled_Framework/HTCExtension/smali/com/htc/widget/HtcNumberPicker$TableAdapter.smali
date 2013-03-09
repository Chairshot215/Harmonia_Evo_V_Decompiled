.class Lcom/htc/widget/HtcNumberPicker$TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableAdapter"
.end annotation


# instance fields
.field private mCandidates:[Ljava/lang/String;

.field protected mCount:I

.field public mData:[I

.field protected mEnd:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/widget/RelativeLayout;

.field protected mStart:I

.field final synthetic this$0:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcNumberPicker;II)V
    .locals 3

    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    iput p2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    iput p3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mEnd:I

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    iget v2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/HtcNumberPicker;II[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II)V

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v2, p4, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mEnd:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v4, 0x20200b9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z
    invoke-static {v3}, Lcom/htc/widget/HtcNumberPicker;->access$200(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_4

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #calls: Lcom/htc/widget/HtcNumberPicker;->updateAmPmSize(Landroid/widget/TextView;)V
    invoke-static {v3, v2}, Lcom/htc/widget/HtcNumberPicker;->access$300(Lcom/htc/widget/HtcNumberPicker;Landroid/widget/TextView;)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090029

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x20900a3

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_4
    const/high16 v3, 0x41d0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v3, v3, p1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v3}, Lcom/htc/widget/HtcNumberPicker;->access$400(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v3}, Lcom/htc/widget/HtcNumberPicker;->access$400(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v3, v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->AM:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/widget/HtcNumberPicker;->access$500(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #calls: Lcom/htc/widget/HtcNumberPicker;->updateAmPmSize(Landroid/widget/TextView;)V
    invoke-static {v3, v2}, Lcom/htc/widget/HtcNumberPicker;->access$300(Lcom/htc/widget/HtcNumberPicker;Landroid/widget/TextView;)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->PM:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    return-void
.end method
