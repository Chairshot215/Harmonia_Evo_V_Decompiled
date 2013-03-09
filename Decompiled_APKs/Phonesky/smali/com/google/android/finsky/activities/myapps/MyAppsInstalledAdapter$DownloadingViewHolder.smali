.class final Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
.super Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadingViewHolder"
.end annotation


# instance fields
.field public final downloadingBytes:Landroid/widget/TextView;

.field public final downloadingPercentage:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "convertView"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 620
    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingBytes:Landroid/widget/TextView;

    .line 621
    const v0, 0x7f0800d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingPercentage:Landroid/widget/TextView;

    .line 623
    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 625
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 626
    return-void
.end method
