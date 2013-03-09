.class Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->createListView(Lcom/htc/music/widget/RotateHtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p6, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;->this$0:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object v1
.end method
