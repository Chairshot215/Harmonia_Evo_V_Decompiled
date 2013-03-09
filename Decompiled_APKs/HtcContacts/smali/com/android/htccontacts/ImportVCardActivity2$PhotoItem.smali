.class Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;
.super Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoItem"
.end annotation


# instance fields
.field public mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V

    .line 769
    new-instance v0, Lcom/htc/widget/HtcListItemTileImage;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemTileImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 770
    return-void
.end method
