.class Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;
    }
.end annotation


# instance fields
.field private mFilter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/app/BaseListActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;->mFilter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;-><init>(Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;Lcom/android/htccontacts/app/BaseListActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;->mFilter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;->mFilter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 366
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method
