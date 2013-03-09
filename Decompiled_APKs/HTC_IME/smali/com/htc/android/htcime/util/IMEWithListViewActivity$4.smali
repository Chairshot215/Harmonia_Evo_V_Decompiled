.class Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;
.super Ljava/lang/Object;
.source "IMEWithListViewActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/IMEWithListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    iget v0, v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->ItemClick(Landroid/view/View;Landroid/view/View;IJ)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    iget v0, v0, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->currMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/util/IMEWithListViewActivity$4;->this$0:Lcom/htc/android/htcime/util/IMEWithListViewActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->deleteItemClick(Landroid/view/View;Landroid/view/View;IJ)V

    goto :goto_0
.end method
