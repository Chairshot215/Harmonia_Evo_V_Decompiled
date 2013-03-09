.class Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter$1;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter$1;->this$1:Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 318
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 319
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s0up/goomanager/FlashActivity$FileName;

    .line 320
    .local v1, fileName:Lcom/s0up/goomanager/FlashActivity$FileName;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/FlashActivity$FileName;->setChecked(Z)V

    .line 321
    return-void
.end method
