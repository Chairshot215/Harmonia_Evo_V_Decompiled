.class Lcom/htc/android/mail/SearchFilterAdapter$1;
.super Ljava/lang/Object;
.source "SearchFilterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/SearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/SearchFilterAdapter;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/SearchFilterAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    #getter for: Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I
    invoke-static {v3}, Lcom/htc/android/mail/SearchFilterAdapter;->access$000(Lcom/htc/android/mail/SearchFilterAdapter;)I

    move-result v3

    and-int/lit8 v1, v3, 0x7

    .line 195
    .local v1, filter_in:I
    if-eq v1, v4, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    shl-int v3, v4, v3

    if-ne v1, v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    #getter for: Lcom/htc/android/mail/SearchFilterAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/SearchFilterAdapter;->access$100(Lcom/htc/android/mail/SearchFilterAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0348

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_1
    const v3, 0x202001f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 201
    .local v0, chk:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    #calls: Lcom/htc/android/mail/SearchFilterAdapter;->setItemClicked(IZ)V
    invoke-static {v3, v2, v4}, Lcom/htc/android/mail/SearchFilterAdapter;->access$200(Lcom/htc/android/mail/SearchFilterAdapter;IZ)V

    .line 203
    iget-object v4, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter$1;->this$0:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/SearchFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    iget v3, v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    #calls: Lcom/htc/android/mail/SearchFilterAdapter;->setPref(IZ)V
    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/SearchFilterAdapter;->access$300(Lcom/htc/android/mail/SearchFilterAdapter;IZ)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 201
    goto :goto_1
.end method
