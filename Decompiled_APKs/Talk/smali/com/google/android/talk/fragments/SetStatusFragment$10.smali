.class Lcom/google/android/talk/fragments/SetStatusFragment$10;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$10;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$10;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->show()V

    .line 1023
    return-void
.end method
