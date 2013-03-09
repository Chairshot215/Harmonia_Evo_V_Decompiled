.class Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "NumberTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/widget/NumberTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableAdapter"
.end annotation


# instance fields
.field protected mCount:I

.field protected mData:[I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/widget/RelativeLayout;

.field protected mStart:I

.field final synthetic this$0:Lcom/htc/android/worldclock/widget/NumberTableView;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/widget/NumberTableView;II)V
    .locals 3
    .parameter
    .parameter "start"
    .parameter "end"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/android/worldclock/widget/NumberTableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 160
    iput p2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mStart:I

    .line 161
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    .line 162
    iget v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mData:[I

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mData:[I

    iget v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    #getter for: Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->access$000(Lcom/htc/android/worldclock/widget/NumberTableView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 167
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 172
    iget v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 188
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 177
    iget v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mStart:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v5, 0x3f80

    .line 194
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 195
    if-eqz p2, :cond_1

    .line 196
    check-cast p2, Landroid/widget/RelativeLayout;

    .end local p2
    iput-object p2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/android/worldclock/widget/NumberTableView;

    #getter for: Lcom/htc/android/worldclock/widget/NumberTableView;->mChangeBkg:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/NumberTableView;->access$100(Lcom/htc/android/worldclock/widget/NumberTableView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    const/4 v2, -0x1

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 207
    :cond_0
    iget v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mCount:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mData:[I

    aget v0, v2, p1

    .line 211
    .local v0, item:I
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0           #item:I
    :goto_2
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    return-object v2

    .line 198
    .end local v1           #tv:Landroid/widget/TextView;
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 211
    .end local p2
    .restart local v0       #item:I
    .restart local v1       #tv:Landroid/widget/TextView;
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 215
    .end local v0           #item:I
    :cond_3
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/android/worldclock/widget/NumberTableView;

    #getter for: Lcom/htc/android/worldclock/widget/NumberTableView;->AM:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/NumberTableView;->access$200(Lcom/htc/android/worldclock/widget/NumberTableView;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/android/worldclock/widget/NumberTableView;

    #getter for: Lcom/htc/android/worldclock/widget/NumberTableView;->mAmPmTextSize:I
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/NumberTableView;->access$400(Lcom/htc/android/worldclock/widget/NumberTableView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->this$0:Lcom/htc/android/worldclock/widget/NumberTableView;

    #getter for: Lcom/htc/android/worldclock/widget/NumberTableView;->PM:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/NumberTableView;->access$300(Lcom/htc/android/worldclock/widget/NumberTableView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 212
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->mData:[I

    .line 225
    return-void
.end method
