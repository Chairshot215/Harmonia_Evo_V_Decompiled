.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;
.super Landroid/database/DataSetObserver;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onSuggestionsChanged()V

    .line 337
    return-void
.end method
