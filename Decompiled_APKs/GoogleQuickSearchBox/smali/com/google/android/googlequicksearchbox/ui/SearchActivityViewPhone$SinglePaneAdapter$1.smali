.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SearchActivityViewPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;Landroid/widget/ListAdapter;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

.field final synthetic val$this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;->val$this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->notifyDataSetInvalidated()V

    .line 101
    return-void
.end method
