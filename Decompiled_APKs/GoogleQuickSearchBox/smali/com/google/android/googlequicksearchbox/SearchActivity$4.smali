.class Lcom/google/android/googlequicksearchbox/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$4;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(Ljava/lang/String;I)Z
    .locals 1
    .parameter "query"
    .parameter "method"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$4;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunComplete()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$400(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$4;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->onSearchClicked(Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
