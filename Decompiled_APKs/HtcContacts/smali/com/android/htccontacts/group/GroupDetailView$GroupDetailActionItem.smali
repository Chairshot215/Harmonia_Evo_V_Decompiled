.class public Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;
.super Ljava/lang/Object;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupDetailActionItem"
.end annotation


# instance fields
.field public mIconRid:I

.field public mLabelRid:I

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupDetailView;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;II)V
    .locals 0
    .parameter
    .parameter "iconRid"
    .parameter "labelRid"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput p2, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;->mIconRid:I

    .line 1015
    iput p3, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;->mLabelRid:I

    .line 1016
    return-void
.end method
