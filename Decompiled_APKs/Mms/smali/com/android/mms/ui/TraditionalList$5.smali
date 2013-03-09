.class Lcom/android/mms/ui/TraditionalList$5;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$5;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryChanged(Lcom/android/mms/category/Category;)V
    .locals 1
    .parameter "newCategory"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$5;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/TraditionalList;->switchCategory(Lcom/android/mms/category/Category;)V

    .line 827
    return-void
.end method
