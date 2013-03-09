.class Lcom/android/mms/ui/ComposeMessageActivity$18;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5955
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryChanged(Lcom/android/mms/category/Category;)V
    .locals 1
    .parameter "newCategory"

    .prologue
    .line 5957
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->switchCategory(Lcom/android/mms/category/Category;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/category/Category;)V

    .line 5958
    return-void
.end method
