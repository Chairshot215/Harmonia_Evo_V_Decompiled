.class Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;
.super Ljava/lang/Object;
.source "MixedAttachmentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MixedAttachmentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onListItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/ui/MixedAttachmentsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MixedAttachmentsActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "MixedAttachmentsActivity"

    const-string v2, "onListItemClick(): mAdapter is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MixedAttachmentsActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 198
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-nez v0, :cond_1

    .line 199
    const-string v1, "MixedAttachmentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick(): mAdapter.getItem("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -> null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    const v2, 0x7f090140

    const v3, 0x7f090152

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(IILcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    const v2, 0x7f090141

    const v3, 0x7f090154

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(IILcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 211
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    #getter for: Lcom/android/mms/ui/MixedAttachmentsActivity;->mSaveParts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/MixedAttachmentsActivity;->access$100(Lcom/android/mms/ui/MixedAttachmentsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/PduPart;

    #calls: Lcom/android/mms/ui/MixedAttachmentsActivity;->createMenu(Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V
    invoke-static {v2, v1, v0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->access$200(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V

    goto :goto_0
.end method
