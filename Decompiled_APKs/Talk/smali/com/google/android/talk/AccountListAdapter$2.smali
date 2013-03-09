.class Lcom/google/android/talk/AccountListAdapter$2;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/talk/AccountListAdapter$2;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iput p2, p0, Lcom/google/android/talk/AccountListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter$2;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iget v1, p0, Lcom/google/android/talk/AccountListAdapter$2;->val$position:I

    const/16 v2, 0x7b

    #calls: Lcom/google/android/talk/AccountListAdapter;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/AccountListAdapter;->access$300(Lcom/google/android/talk/AccountListAdapter;II)V

    .line 237
    return-void
.end method
