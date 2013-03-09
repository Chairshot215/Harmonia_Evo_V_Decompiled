.class Lcom/htc/android/epst/CheckedItemViewBinder;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field private mActivity:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/htc/android/epst/CheckedItemViewBinder;->mActivity:Lcom/htc/android/epst/FileBrowserActivity;

    .line 513
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v6, 0x1

    .line 516
    move-object v2, p2

    check-cast v2, Ljava/io/File;

    .line 517
    .local v2, item:Ljava/io/File;
    const v4, 0x7f060016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 518
    .local v0, fileItem:Landroid/widget/CheckedTextView;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const v4, 0x7f06000f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 520
    .local v1, folder:Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    const v4, 0x7f060017

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 522
    .local v3, size:Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v4, p0, Lcom/htc/android/epst/CheckedItemViewBinder;->mActivity:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/android/epst/FileBrowserActivity;->getSelectedFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/epst/CheckedItemViewBinder;->mActivity:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v5}, Lcom/htc/android/epst/FileBrowserActivity;->getSelectedFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 530
    :goto_0
    return v6

    .line 527
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
