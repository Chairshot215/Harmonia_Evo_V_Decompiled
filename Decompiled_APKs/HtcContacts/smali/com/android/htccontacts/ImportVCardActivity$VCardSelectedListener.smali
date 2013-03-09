.class Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Z)V
    .locals 1
    .parameter
    .parameter "multipleSelect"

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, -0x1

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {p1, v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1202(Lcom/android/htccontacts/ImportVCardActivity;I)I

    .line 660
    if-eqz p2, :cond_0

    .line 661
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {p1, v0}, Lcom/android/htccontacts/ImportVCardActivity;->access$1302(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 663
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 666
    const/4 v5, -0x1

    if-ne p2, v5, :cond_4

    .line 667
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v2, selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/VCardFile;>;"
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 671
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 672
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mSelectedIndexSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1300(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 673
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->importMultipleVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v5, v2}, Lcom/android/htccontacts/ImportVCardActivity;->access$1100(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)V

    .line 695
    .end local v1           #i:I
    .end local v2           #selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/VCardFile;>;"
    .end local v3           #size:I
    :cond_2
    :goto_1
    return-void

    .line 678
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mCurrentIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/ImportVCardActivity;->access$1200(Lcom/android/htccontacts/ImportVCardActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/VCardFile;

    invoke-virtual {v5}, Lcom/android/htccontacts/VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, canonicalPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 680
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->importOneVCardFromSDCard(Landroid/net/Uri;)V
    invoke-static {v5, v4}, Lcom/android/htccontacts/ImportVCardActivity;->access$1400(Lcom/android/htccontacts/ImportVCardActivity;Landroid/net/Uri;)V

    goto :goto_1

    .line 682
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v5, -0x2

    if-ne p2, v5, :cond_2

    .line 683
    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto :goto_1
.end method
