.class Lcom/android/mms/ui/TraditionalList$7;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->initCategorySelector(Lcom/htc/widget/HeaderBarDropDown;)V
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
    .line 945
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$7;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$7;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 950
    return-void
.end method
