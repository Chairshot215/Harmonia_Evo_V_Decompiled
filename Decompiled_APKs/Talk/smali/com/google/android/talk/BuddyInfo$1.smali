.class Lcom/google/android/talk/BuddyInfo$1;
.super Ljava/lang/Object;
.source "BuddyInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyInfo;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;

.field final synthetic val$blockButton:Landroid/view/View;

.field final synthetic val$removeButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyInfo;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$1;->this$0:Lcom/google/android/talk/BuddyInfo;

    iput-object p2, p0, Lcom/google/android/talk/BuddyInfo$1;->val$removeButton:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/talk/BuddyInfo$1;->val$blockButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->val$removeButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->this$0:Lcom/google/android/talk/BuddyInfo;

    #calls: Lcom/google/android/talk/BuddyInfo;->remove()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$300(Lcom/google/android/talk/BuddyInfo;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->val$blockButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->this$0:Lcom/google/android/talk/BuddyInfo;

    #calls: Lcom/google/android/talk/BuddyInfo;->block()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$400(Lcom/google/android/talk/BuddyInfo;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$1;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_0
.end method
