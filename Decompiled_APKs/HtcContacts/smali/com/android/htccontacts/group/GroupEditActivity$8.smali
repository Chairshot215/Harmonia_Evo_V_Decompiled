.class Lcom/android/htccontacts/group/GroupEditActivity$8;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->doPickPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;

.field final synthetic val$PHOTO_ALBUM:I

.field final synthetic val$PHOTO_CAMERA:I

.field final synthetic val$REMOVE_PHOTO:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iput p2, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$PHOTO_ALBUM:I

    iput p3, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$PHOTO_CAMERA:I

    iput p4, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$REMOVE_PHOTO:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1230
    iget v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$PHOTO_ALBUM:I

    if-ne v0, p2, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->doPickPhotoAction()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1100(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$PHOTO_CAMERA:I

    if-ne v0, p2, :cond_2

    .line 1234
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->doPickPhotoCamera()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1200(Lcom/android/htccontacts/group/GroupEditActivity;)V

    goto :goto_0

    .line 1236
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->val$REMOVE_PHOTO:I

    if-ne v0, p2, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$8;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->doRemovePhotoAction()V

    goto :goto_0
.end method
