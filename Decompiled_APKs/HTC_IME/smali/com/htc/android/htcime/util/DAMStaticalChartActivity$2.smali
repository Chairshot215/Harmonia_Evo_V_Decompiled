.class Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;
.super Ljava/lang/Object;
.source "DAMStaticalChartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$100(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    #getter for: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$400(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->access$300(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;Landroid/widget/ImageView;Ljava/util/ArrayList;)Z

    .line 94
    return-void
.end method
