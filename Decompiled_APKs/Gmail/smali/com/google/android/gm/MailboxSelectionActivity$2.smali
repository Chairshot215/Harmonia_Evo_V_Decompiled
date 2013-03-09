.class Lcom/google/android/gm/MailboxSelectionActivity$2;
.super Landroid/widget/SimpleAdapter;
.source "MailboxSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MailboxSelectionActivity;->updateAccountList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MailboxSelectionActivity;

.field final synthetic val$accountData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MailboxSelectionActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 250
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/google/android/gm/MailboxSelectionActivity$2;->this$0:Lcom/google/android/gm/MailboxSelectionActivity;

    iput-object p7, p0, Lcom/google/android/gm/MailboxSelectionActivity$2;->val$accountData:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f00a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, accountView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/gm/MailboxSelectionActivity$2;->val$accountData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 257
    .local v2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    return-object v3
.end method
