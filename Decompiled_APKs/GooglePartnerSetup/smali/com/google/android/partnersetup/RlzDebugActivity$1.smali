.class Lcom/google/android/partnersetup/RlzDebugActivity$1;
.super Ljava/lang/Object;
.source "RlzDebugActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const v2, 0x7f05000e

    .line 75
    if-ne p2, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    #setter for: Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I
    invoke-static {v1, v2}, Lcom/google/android/partnersetup/RlzDebugActivity;->access$002(Lcom/google/android/partnersetup/RlzDebugActivity;I)I

    .line 77
    const/4 v0, 0x1

    .line 82
    .local v0, mode:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    #getter for: Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugActivity;->access$100(Lcom/google/android/partnersetup/RlzDebugActivity;)Lcom/google/android/partnersetup/RlzPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/partnersetup/RlzPreferences;->setOEMMode(Z)V

    .line 83
    return-void

    .line 79
    .end local v0           #mode:Z
    :cond_0
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$1;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    const v2, 0x7f05000f

    #setter for: Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I
    invoke-static {v1, v2}, Lcom/google/android/partnersetup/RlzDebugActivity;->access$002(Lcom/google/android/partnersetup/RlzDebugActivity;I)I

    .line 80
    const/4 v0, 0x0

    .restart local v0       #mode:Z
    goto :goto_0
.end method
