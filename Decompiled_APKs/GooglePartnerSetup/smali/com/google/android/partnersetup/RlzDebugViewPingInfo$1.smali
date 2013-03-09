.class Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;
.super Ljava/lang/Object;
.source "RlzDebugViewPingInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->buildItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->access$000(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, moreInfo:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    invoke-virtual {v1, p4, p5}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->getMoreInfo(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->access$100(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return-void
.end method
