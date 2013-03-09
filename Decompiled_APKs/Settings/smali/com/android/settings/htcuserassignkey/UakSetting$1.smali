.class Lcom/android/settings/htcuserassignkey/UakSetting$1;
.super Ljava/lang/Object;
.source "UakSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakSetting;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #setter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z
    invoke-static {v2, v4}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$002(Lcom/android/settings/htcuserassignkey/UakSetting;Z)Z

    .line 193
    if-nez p2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->callUakFlowActivity()V

    .line 209
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    return-void

    .line 196
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p2, :cond_0

    .line 198
    new-instance v1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 199
    .local v1, target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #getter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I
    invoke-static {v3}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$100(Lcom/android/settings/htcuserassignkey/UakSetting;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    .line 203
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #getter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I
    invoke-static {v3}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$100(Lcom/android/settings/htcuserassignkey/UakSetting;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferKeyIdToListItemPos_0b(I)I

    move-result v0

    .line 204
    .local v0, pos:I
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #getter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$200(Lcom/android/settings/htcuserassignkey/UakSetting;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-virtual {v2, v4}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setAssigned(Z)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #getter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$200(Lcom/android/settings/htcuserassignkey/UakSetting;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setTarget(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$1;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    #getter for: Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;
    invoke-static {v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$300(Lcom/android/settings/htcuserassignkey/UakSetting;)Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
