.class Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;

.field private final synthetic val$flashName:Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter;

    iput-object p2, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;->val$flashName:Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, tmpId:I
    iget-object v4, p0, Lcom/s0up/goomanager/FlashOrderActivity$FlashListArrayAdapter$2;->val$flashName:Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, tmpFile:Ljava/lang/String;
    const-string v2, ""

    .line 307
    .local v2, tmpFile2:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 320
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 324
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$2()Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 325
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    move v3, v0

    .line 310
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_1

    .line 311
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->getName()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->setName(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    const-string v4, "GooManager.FlashOrderActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flash Order: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/s0up/goomanager/FlashOrderActivity;->access$1()[Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;

    move-result-object v6

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
