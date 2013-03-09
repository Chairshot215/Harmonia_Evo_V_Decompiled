.class public Lcom/htc/album/helper/DeleteManager;
.super Ljava/lang/Object;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DeleteManager$DeleteTask;,
        Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_FILES:I = 0x120002

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120003

.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

.field private mDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 1
    .parameter "activity"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 44
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 45
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    .line 62
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 64
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/DeleteManager;)Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/DeleteManager;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    return-void
.end method

.method private doDelete(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "style"
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    .line 193
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :cond_2
    const/4 v0, 0x0

    .line 200
    .local v0, deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_1
    if-eqz v0, :cond_3

    .line 217
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :cond_3
    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    goto :goto_0

    .line 205
    :pswitch_0
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const-string v3, "key_data"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 207
    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    goto :goto_1

    .line 211
    :pswitch_1
    new-instance v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .end local v0           #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .restart local v0       #deleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;
    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x120001
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->cancel(Z)Z

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteTask:Lcom/htc/album/helper/DeleteManager$DeleteTask;

    .line 232
    return-void
.end method

.method public deleteAllMedias()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    const v1, 0x120001

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 155
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "key_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 188
    const v1, 0x120002

    invoke-direct {p0, v1, v0}, Lcom/htc/album/helper/DeleteManager;->doDelete(ILandroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10
    .parameter "position"
    .parameter "image"

    .prologue
    const v9, 0x120003

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 159
    const-string v2, ""

    .line 160
    .local v2, message:Ljava/lang/String;
    move-object v3, p2

    .line 161
    .local v3, selectedImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_0

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "key_message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v4, "key_data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->removeDialog(I)V

    .line 181
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 171
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v4, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "id"
    .parameter "extras"

    .prologue
    const v9, 0x20c01fc

    const v8, 0x20c01d6

    const v7, 0x1080027

    const/4 v5, 0x1

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 76
    new-instance v2, Lcom/htc/album/helper/DeleteManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/DeleteManager$1;-><init>(Lcom/htc/album/helper/DeleteManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    goto :goto_0

    .line 92
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c01d4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/album/helper/DeleteManager$3;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DeleteManager$3;-><init>(Lcom/htc/album/helper/DeleteManager;)V

    invoke-virtual {v2, v9, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/album/helper/DeleteManager$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DeleteManager$2;-><init>(Lcom/htc/album/helper/DeleteManager;)V

    invoke-virtual {v2, v8, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 110
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v2, Lcom/htc/album/helper/DeleteManager$4;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/DeleteManager$4;-><init>(Lcom/htc/album/helper/DeleteManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 121
    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    goto :goto_0

    .line 126
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    move-object v1, p2

    .line 127
    .local v1, info:Landroid/os/Bundle;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const-string v3, "key_message"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c015f

    new-instance v4, Lcom/htc/album/helper/DeleteManager$6;

    invoke-direct {v4, p0, v1}, Lcom/htc/album/helper/DeleteManager$6;-><init>(Lcom/htc/album/helper/DeleteManager;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/album/helper/DeleteManager$5;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DeleteManager$5;-><init>(Lcom/htc/album/helper/DeleteManager;)V

    invoke-virtual {v2, v8, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 144
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog;
    iput p1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    sget-object v0, Lcom/htc/album/helper/DeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Do release now..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 238
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/album/helper/DeleteManager;->mDialogId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 239
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mActivity:Landroid/app/Activity;

    .line 240
    iput-object v2, p0, Lcom/htc/album/helper/DeleteManager;->mDeleteCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 241
    return-void
.end method
