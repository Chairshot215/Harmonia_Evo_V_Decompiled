.class public Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupDetailActionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutRes:I

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupDetailView;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutRes"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    .line 1025
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1026
    iput p3, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->mLayoutRes:I

    .line 1027
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1029
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;)V
    .locals 4
    .parameter "view"
    .parameter "item"

    .prologue
    .line 1032
    instance-of v3, p1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 1033
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 1034
    .local v1, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v2

    .line 1035
    .local v2, listItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    iget v3, p2, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;->mLabelRid:I

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 1036
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    .line 1038
    .local v0, icon:Landroid/widget/ImageView;
    iget v3, p2, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;->mIconRid:I

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1039
    const v3, 0x2080197

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 1040
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1042
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .end local v2           #listItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    return-void
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"

    .prologue
    .line 1045
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x190

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1050
    if-nez p2, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->generateHtcListItemBuilder(Landroid/content/Context;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1056
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;)V

    .line 1057
    return-object v0

    .line 1054
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method
