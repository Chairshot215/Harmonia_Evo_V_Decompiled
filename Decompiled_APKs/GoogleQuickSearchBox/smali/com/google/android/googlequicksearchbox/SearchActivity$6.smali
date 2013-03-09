.class Lcom/google/android/googlequicksearchbox/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 173
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$6;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$6;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->onVoiceSearchClicked()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1000(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 176
    return-void
.end method
