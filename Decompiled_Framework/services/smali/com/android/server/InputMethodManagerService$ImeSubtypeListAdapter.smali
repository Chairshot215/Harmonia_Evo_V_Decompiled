.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, v5, v5, v1}, Landroid/widget/InputMethodStateUtil;->getHtcListItemView(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    iget-object v0, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, v0, v3, v1}, Landroid/widget/InputMethodStateUtil;->getHtcListItemView(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method
