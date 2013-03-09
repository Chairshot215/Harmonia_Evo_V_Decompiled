.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 641
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 643
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v0

    .line 645
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v1, p2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 646
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v3, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$3;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->updatePrivacySetting(I)V
    invoke-static {v1, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$3000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)V

    .line 648
    return-void
.end method
