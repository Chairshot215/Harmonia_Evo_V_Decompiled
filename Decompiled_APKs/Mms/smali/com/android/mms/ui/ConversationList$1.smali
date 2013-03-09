.class Lcom/android/mms/ui/ConversationList$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryChanged(Lcom/android/mms/category/Category;)V
    .locals 1
    .parameter "newCategory"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationList;->switchCategory(Lcom/android/mms/category/Category;)V

    .line 349
    return-void
.end method
