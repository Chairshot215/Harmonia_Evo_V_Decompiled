.class Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;
.super Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;
.source "DeleteTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeleteTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteTimeZone;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/DeleteTimeZone;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "list"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;-><init>(Lcom/htc/android/worldclock/WorldClock;Ljava/util/ArrayList;)V

    .line 184
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 185
    iput-object p2, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mItems:Ljava/util/ArrayList;

    .line 186
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 190
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 193
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    #getter for: Lcom/htc/android/worldclock/DeleteTimeZone;->mMinHeight:I
    invoke-static {v7}, Lcom/htc/android/worldclock/DeleteTimeZone;->access$200(Lcom/htc/android/worldclock/DeleteTimeZone;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 197
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b000a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/DigitalClock;

    .line 198
    .local v1, digitalClock:Lcom/htc/android/worldclock/DigitalClock;
    invoke-virtual {v1, v9}, Lcom/htc/android/worldclock/DigitalClock;->setVisibility(I)V

    .line 200
    move v5, p1

    .line 202
    .local v5, selectedPosition:I
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0019

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 203
    .local v4, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0081

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 206
    .local v3, ibtn:Landroid/widget/Button;
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b001a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 209
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 210
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-static {v6}, Lcom/htc/android/worldclock/ResUtils;->drawable_common_delete(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 213
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v6, v6, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    aget-boolean v6, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    new-instance v6, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;

    invoke-direct {v6, p0, v5}, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;I)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    :goto_0
    return-object v6

    .line 214
    :catch_0
    move-exception v2

    .line 216
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->mLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method
