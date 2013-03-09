.class Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;->this$0:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;Lcom/android/htccontacts/app/BaseListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter$SimpleFilter;-><init>(Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 393
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 394
    .local v0, results:Landroid/widget/Filter$FilterResults;
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 402
    return-void
.end method
