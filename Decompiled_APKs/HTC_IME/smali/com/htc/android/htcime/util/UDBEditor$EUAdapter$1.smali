.class Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;
.super Ljava/lang/Object;
.source "UDBEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

.field final synthetic val$positionId:I


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;->this$1:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    iput p2, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;->val$positionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;->this$1:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    iget-object v0, v0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    iget v1, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;->val$positionId:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/util/UDBEditor;->removeWordCommit(Landroid/widget/CheckBox;I)V

    .line 321
    return-void
.end method
