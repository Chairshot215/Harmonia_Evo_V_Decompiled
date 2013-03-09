.class Lcom/android/htccontacts/ui/EditContactActivity2$16;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->pickPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

.field final synthetic val$PHOTO_ALBUM:I

.field final synthetic val$PHOTO_CAMERA:I

.field final synthetic val$PHOTO_FACEBOOK_ME:I

.field final synthetic val$PHOTO_SNAPBOOTH:I

.field final synthetic val$REMOVE_PHOTO:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5743
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_FACEBOOK_ME:I

    iput p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_ALBUM:I

    iput p4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_CAMERA:I

    iput p5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$REMOVE_PHOTO:I

    iput p6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_SNAPBOOTH:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5745
    iget v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_FACEBOOK_ME:I

    if-ne v0, p2, :cond_1

    .line 5746
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoFacebookMe()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8700(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 5762
    :cond_0
    :goto_0
    return-void

    .line 5748
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_ALBUM:I

    if-ne v0, p2, :cond_2

    .line 5749
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoAction()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8800(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    goto :goto_0

    .line 5751
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_CAMERA:I

    if-ne v0, p2, :cond_3

    .line 5752
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoCamera()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8900(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    goto :goto_0

    .line 5754
    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$REMOVE_PHOTO:I

    if-ne v0, p2, :cond_4

    .line 5755
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doRemovePhotoAction()Z

    goto :goto_0

    .line 5758
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->val$PHOTO_SNAPBOOTH:I

    if-ne v0, p2, :cond_0

    .line 5759
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$16;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoSnapbooth()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9000(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    goto :goto_0
.end method
